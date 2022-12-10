/*
 Navicat Premium Data Transfer

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : microchip-quality-control-dev

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 10/12/2022 21:03:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assembly_line
-- ----------------------------
DROP TABLE IF EXISTS `assembly_line`;
CREATE TABLE `assembly_line`  (
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_l_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流水线编号',
  `a_l_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流水线名',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of assembly_line
-- ----------------------------
INSERT INTO `assembly_line` VALUES ('1d04cdb6-00ed-54bb-c8c0-0353b34059c4', 'CYX-82', '94号产业线');
INSERT INTO `assembly_line` VALUES ('2d36df84-a759-d47c-7a9c-186c9ce7795d', 'CYX-53', '71号产业线');
INSERT INTO `assembly_line` VALUES ('40bda628-34e4-3681-0eb7-36a6dc56848c', 'CYX-02', '93号产业线');
INSERT INTO `assembly_line` VALUES ('51aa4f88-8ae3-bf1c-e661-e211821d201f', 'CYX-17', '20号产业线');
INSERT INTO `assembly_line` VALUES ('7136e145-75da-afec-c443-3d56f69f52ad', 'CYX-42', '02号产业线');
INSERT INTO `assembly_line` VALUES ('821e2cef-258f-0efc-fdbd-426266cb12e8', 'CYX-42', '86号产业线');
INSERT INTO `assembly_line` VALUES ('cb13d436-6853-5e4a-e5d8-9e8543f04cc6', 'CYX-26', '38号产业线');
INSERT INTO `assembly_line` VALUES ('cefd947b-5c83-9ac9-1b7e-09ce9f367a76', 'CYX-56', '32号产业线');
INSERT INTO `assembly_line` VALUES ('eb26e680-08d8-556e-4564-fcc398cacf92', 'CYX-79', '64号产业线');
INSERT INTO `assembly_line` VALUES ('f0b0509d-6613-a0b6-9657-c57bdbd8076d', 'CYX-75', '24号产业线');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'assembly_line', '流水线管理', NULL, NULL, 'AssemblyLine', 'crud', 'com.ruoyi.system.line', 'system', 'line', '产业线管理', 'VentCode', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-12-08 21:13:05', '', '2022-12-09 13:02:36', NULL);
INSERT INTO `gen_table` VALUES (2, 'microchip_classify_log', '分类识别日志表', NULL, NULL, 'MicrochipClassifyLog', 'crud', 'com.ruoyi.system.classify', 'system', 'classify', '分类识别日志', 'VentCode', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28', NULL);
INSERT INTO `gen_table` VALUES (3, 'quality', '质量检测表', NULL, NULL, 'Quality', 'crud', 'com.ruoyi.system.quality', 'system', 'quality', '检查', 'VentCode', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07', NULL);
INSERT INTO `gen_table` VALUES (4, 'microchip_pin_log', '针脚检测日志', NULL, NULL, 'MicrochipPinLog', 'crud', 'com.ruoyi.system.pin', 'system', 'pin', '针脚检测日志', 'VentCode', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'uid', 'UID', 'varchar(255)', 'String', 'uId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-08 21:13:05', '', '2022-12-09 13:02:36');
INSERT INTO `gen_table_column` VALUES (2, '1', 'a_l_code', '流水线编号', 'varchar(255)', 'String', 'aLCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-12-08 21:13:05', '', '2022-12-09 13:02:36');
INSERT INTO `gen_table_column` VALUES (3, '1', 'a_l_name', '流水线名', 'varchar(255)', 'String', 'aLName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-12-08 21:13:05', '', '2022-12-09 13:02:36');
INSERT INTO `gen_table_column` VALUES (4, '2', 'uid', 'UID', 'varchar(50)', 'String', 'uid', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (5, '2', 'threshold', '调佣阈值', 'varchar(255)', 'String', 'threshold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (6, '2', 'confidence', '分类或检测的置信度', 'varchar(255)', 'String', 'confidence', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (7, '2', 'index', '分类或检测的类别', 'bigint', 'Long', 'index', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (8, '2', 'label', '分类或检测的类别', 'varchar(255)', 'String', 'label', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (9, '2', 'modelKind', '型号实物', 'bigint', 'Long', 'modelkind', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (10, '2', 'name', '名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (11, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (12, '2', 'quality_id', '检测', 'varchar(50)', 'String', 'qualityId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-12-08 21:13:05', '', '2022-12-10 13:40:28');
INSERT INTO `gen_table_column` VALUES (13, '3', 'id', '主键', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07');
INSERT INTO `gen_table_column` VALUES (14, '3', 'assembly_line_id', '流水线id', 'varchar(255)', 'String', 'assemblyLineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07');
INSERT INTO `gen_table_column` VALUES (15, '3', 'sampling_time', '采样时间', 'datetime(3)', 'Date', 'samplingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07');
INSERT INTO `gen_table_column` VALUES (16, '3', 'distinguish_time', '识别时间', 'datetime(3)', 'Date', 'distinguishTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07');
INSERT INTO `gen_table_column` VALUES (17, '3', 'ping_result', '引角结果（0未检测 1 成功 2失败）', 'varchar(255)', 'String', 'pingResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07');
INSERT INTO `gen_table_column` VALUES (18, '3', 'classify_result', '划痕及结果（0未检测 1 成功 2失败）', 'varchar(255)', 'String', 'classifyResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07');
INSERT INTO `gen_table_column` VALUES (19, '3', 'imagePath', '图片数据地址', 'varchar(255)', 'String', 'imagepath', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-12-08 21:13:05', '', '2022-12-08 21:18:07');
INSERT INTO `gen_table_column` VALUES (20, '4', 'uid', 'UID', 'varchar(50)', 'String', 'uid', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (21, '4', 'threshold', '调用阈值', 'varchar(255)', 'String', 'threshold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (22, '4', 'result', '返回结果', 'varchar(1000)', 'String', 'result', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (23, '4', 'confidence', '分类或检测的置信度', 'varchar(255)', 'String', 'confidence', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (24, '4', 'index', '分类或检测的类别', 'bigint', 'Long', 'index', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (25, '4', 'label', '分类或检测的类别', 'varchar(255)', 'String', 'label', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (26, '4', 'modelKind', NULL, 'bigint', 'Long', 'modelkind', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (27, '4', 'name', NULL, 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (28, '4', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (29, '4', 'location', NULL, 'json', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', NULL, '', 10, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');
INSERT INTO `gen_table_column` VALUES (30, '4', 'quality_id', '检测id', 'varchar(50)', 'String', 'qualityId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2022-12-10 12:59:12', '', '2022-12-10 13:30:06');

-- ----------------------------
-- Table structure for microchip_classify_log
-- ----------------------------
DROP TABLE IF EXISTS `microchip_classify_log`;
CREATE TABLE `microchip_classify_log`  (
  `uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `threshold` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调佣阈值',
  `confidence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类或检测的置信度',
  `index` bigint NULL DEFAULT NULL COMMENT '分类或检测的类别',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类或检测的类别',
  `modelKind` bigint NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `quality_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测id\r\n',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类识别日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of microchip_classify_log
-- ----------------------------
INSERT INTO `microchip_classify_log` VALUES ('000e6c06-dd37-afea-56b3-6b4d4ba9c416', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-06-28 15:45:08', '46f37862-7a80-2ab1-3b15-f8993087a780');
INSERT INTO `microchip_classify_log` VALUES ('00a44400-4d10-8ad9-e6b5-68f6e4c53627', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-11-10 13:49:34', '9dfefae6-f58b-0bcb-7238-ce7556d930da');
INSERT INTO `microchip_classify_log` VALUES ('00e8f1dc-8003-5734-aaa9-8c7126fad04b', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-05-21 09:39:13', 'e6198591-c086-4716-1ed6-ca42e00f5240');
INSERT INTO `microchip_classify_log` VALUES ('00e98e75-b4d5-03f9-36d3-7aec0e68635b', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-27 23:31:07', '02b1738a-ed89-05d3-4366-bfe16a68494c');
INSERT INTO `microchip_classify_log` VALUES ('01038496-fa87-35f2-9a8a-a0ab55dcf965', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-06-01 08:10:13', '36ab4037-79c3-84c6-cf87-c16e87aaf744');
INSERT INTO `microchip_classify_log` VALUES ('0120179d-be2c-0f33-b164-793cf2de5555', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-04-28 23:33:02', 'd02d5a83-fa7d-b90a-327d-18d89a7ef468');
INSERT INTO `microchip_classify_log` VALUES ('01d4ec38-3275-26cf-3fa5-f7fc18ed49d0', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-01-17 05:03:54', 'c276a61e-334e-ae50-5414-605f0018cddf');
INSERT INTO `microchip_classify_log` VALUES ('02047363-be2f-e464-a312-d6e6f638b7ac', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2012-04-04 00:14:11', '23839abf-4e93-416a-7c68-c394e31e454f');
INSERT INTO `microchip_classify_log` VALUES ('026e11e4-c027-c98e-2daa-0bb1e2a7b749', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-04-06 15:55:22', 'a780fee6-a0ec-d953-e2c9-2af0d5f1f020');
INSERT INTO `microchip_classify_log` VALUES ('028b5277-3c95-444c-c619-d0c30dcefcad', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-06-26 08:22:11', '9590ff0b-bd32-175e-80e6-8ef1d1cc4ee0');
INSERT INTO `microchip_classify_log` VALUES ('032719f5-7209-bfe3-3de8-3d9801750c3c', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-02-15 18:33:54', 'e6e3fa95-6d37-39e4-199b-82f47ab71769');
INSERT INTO `microchip_classify_log` VALUES ('033862d3-3319-3e30-ed72-f80a5d53dc73', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-12-06 16:11:39', 'c13a6785-f4ce-6164-3013-31f6f95dd921');
INSERT INTO `microchip_classify_log` VALUES ('034cda1b-797d-bc4f-9e21-9a17792f95db', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2001-09-16 17:12:22', '3a4aa369-8732-58e3-b3b4-dae4be82f359');
INSERT INTO `microchip_classify_log` VALUES ('036be326-ad3e-ff2b-b7c6-0693930dade5', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-09-26 08:01:09', 'fc877179-b038-ed1d-2282-fe7510cf1fcf');
INSERT INTO `microchip_classify_log` VALUES ('04494706-00ee-6f55-a7d8-aabfa026db5c', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-17 09:36:49', 'bb567be3-26e3-0b62-7fe8-015ccdadba04');
INSERT INTO `microchip_classify_log` VALUES ('046b17f7-b453-b8e7-21cb-7ad089aa799c', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-05-15 04:11:18', 'c857065d-1906-5eaa-523c-743843125d1c');
INSERT INTO `microchip_classify_log` VALUES ('046d4c45-147a-dca6-38fd-b579a31b8bae', '0.80', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-04-15 19:08:36', '4e05410e-758a-186b-60fb-1fab9f3746cb');
INSERT INTO `microchip_classify_log` VALUES ('04a6ac36-9424-999c-2059-c01f94f56b56', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-08-05 18:48:22', 'e93ad883-47fe-bf49-2c5f-2fba0da73bd3');
INSERT INTO `microchip_classify_log` VALUES ('04e4f745-c734-6f09-1711-8a9d16a2d239', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-05-29 02:05:35', '9b38954a-2ad2-e551-6edf-63e709f81453');
INSERT INTO `microchip_classify_log` VALUES ('0500fa95-4ddd-55bb-a539-d3879f69427d', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-05-03 23:55:37', '251ee713-6a32-19f0-3018-cb7677b5fa48');
INSERT INTO `microchip_classify_log` VALUES ('050701d5-e5e4-e2f1-6849-4a26032a777d', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-01-06 05:39:40', '1bc67b01-f22d-073a-0415-ffe0df003f92');
INSERT INTO `microchip_classify_log` VALUES ('057f34d8-c974-14e4-67cc-ffaa48d8a8b9', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2008-11-06 09:40:42', '2106002c-1ee3-8589-7e0e-f541b1c6ecf5');
INSERT INTO `microchip_classify_log` VALUES ('05af83e3-cf11-5be6-8ee8-d03ae0bb2db0', '0.57', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-03-29 06:24:50', '63451df3-cda3-2cc4-bc8b-a29613cc9fa8');
INSERT INTO `microchip_classify_log` VALUES ('05cfc603-9ffd-cfed-7c4b-3f8fb04342f3', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-09-17 19:15:09', 'dec7e2f9-9864-eca6-25ef-420064fa344f');
INSERT INTO `microchip_classify_log` VALUES ('05eb96b7-3658-bbf5-c7c8-e17f945d3bef', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-06-03 18:04:03', '0883fb47-e914-6724-749c-a7c73c7d3ab2');
INSERT INTO `microchip_classify_log` VALUES ('05f0d5a0-ee54-6f49-cd71-69afe456ab6b', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-11-21 18:00:45', '2c1c6a50-83e2-9a74-f73e-326765e9d222');
INSERT INTO `microchip_classify_log` VALUES ('05f2bf23-fb4c-9954-4bd6-eba186dc3aed', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-12-21 07:55:41', '56d8d1b9-c476-5c46-4929-6116c9f87d3e');
INSERT INTO `microchip_classify_log` VALUES ('0606bc55-5361-1a17-8c4d-efd9219a0adc', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-21 08:19:05', '3a4aa369-8732-58e3-b3b4-dae4be82f359');
INSERT INTO `microchip_classify_log` VALUES ('0639930a-e4a7-7832-37ba-5050cbf4868c', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-05-11 18:34:37', '07345509-dc03-c46e-e4c0-22f8f21a5cbb');
INSERT INTO `microchip_classify_log` VALUES ('06a536fd-cc8c-d3eb-0d6f-b42c3a5fee50', '0.31', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-02-23 20:57:31', '1c7c2761-fa26-4cd5-ed04-ad3d6050ac04');
INSERT INTO `microchip_classify_log` VALUES ('0737779a-67ed-6da9-72e1-438001a0a0c6', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-09-08 09:13:18', '7cf9da33-8dd6-bbdc-ea26-0f184bb97cb0');
INSERT INTO `microchip_classify_log` VALUES ('074ed475-c737-5e14-a30b-ed10da61e2c8', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-06-09 20:07:24', '447843f3-f69b-300e-066e-e5a30023aff3');
INSERT INTO `microchip_classify_log` VALUES ('07525cfb-7554-69d0-ca06-d382f089b0ff', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-01-14 12:57:06', '3661739f-c0ee-ec8a-ca5d-701b1bb54875');
INSERT INTO `microchip_classify_log` VALUES ('075b36ac-e0f5-c4d4-f5cb-f9676b55fe54', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-05-02 04:09:00', '6082a3e1-cb8a-b4e3-5a36-8a1507551a2e');
INSERT INTO `microchip_classify_log` VALUES ('07a37f62-9c0a-8819-619b-999f61035748', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2012-01-07 07:25:40', '8c859234-8e52-6bc6-9bcc-388f8fccd4f3');
INSERT INTO `microchip_classify_log` VALUES ('07af5926-4392-58bb-6677-e83e894d13c9', '0.97', '0.91', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2012-01-29 16:13:31', 'c4fd3ab9-4834-3569-8c8b-ea5fa3e0a4fb');
INSERT INTO `microchip_classify_log` VALUES ('07dd1c6b-2d9b-e189-c488-244159e3b072', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-04-23 14:24:54', '4cf32b13-58d2-9e25-c04b-4bc7d8bd2bd1');
INSERT INTO `microchip_classify_log` VALUES ('081b3e0e-7147-5147-4c96-5c236066f201', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-11-22 02:53:52', 'bf7b02d6-254f-765c-6cfc-9a73bde3c4a0');
INSERT INTO `microchip_classify_log` VALUES ('0829ff9d-8bf9-d7af-2a1c-88c9e3bb0baf', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-09 06:16:07', '2410971d-2fb4-b870-9431-56a66247ee0b');
INSERT INTO `microchip_classify_log` VALUES ('082a81ab-d3ca-f24b-f0f0-8c877e669313', '0.97', '0.95', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2013-11-29 20:41:18', 'cb1baa1b-9914-66c7-cfe6-739aaea58d52');
INSERT INTO `microchip_classify_log` VALUES ('0839e4c1-4e95-6550-a127-5fdd23c10c35', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-06-28 14:13:16', '9a4ac44b-a150-3c37-a94f-787dffdf5c26');
INSERT INTO `microchip_classify_log` VALUES ('088ba91f-9b71-7b57-e1cc-d63d33f67168', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-05-22 05:28:21', 'd53cd52b-334c-3dfa-cf17-01103dc6069d');
INSERT INTO `microchip_classify_log` VALUES ('08a73351-2c66-fe57-dd0e-9ab3ef88054a', '0.97', '0.93', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2004-10-19 17:06:29', '698f39cc-3799-41a4-9f1b-d7f027b96f1a');
INSERT INTO `microchip_classify_log` VALUES ('08b5dbe6-fd83-db7a-3770-a7609e2f6f5a', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-11-08 21:59:02', '9965a7d4-15b6-9523-e87b-794e7f864f07');
INSERT INTO `microchip_classify_log` VALUES ('08b80d95-babf-3d2e-f79e-ed328ae38517', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-06-23 08:42:28', '30ae6430-8920-bd21-e41c-aeea251e434d');
INSERT INTO `microchip_classify_log` VALUES ('08ccd198-154e-92b3-7420-097cc95b3bed', '0.65', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-05-23 02:09:00', '54ac20e7-f4a3-2996-a53a-2f4f389e8058');
INSERT INTO `microchip_classify_log` VALUES ('0944a97c-8425-9ad8-e615-aeaeb047da1b', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-02-03 00:43:45', 'c6af1e38-44e1-c2af-fc9d-f1f81ad8b453');
INSERT INTO `microchip_classify_log` VALUES ('0a1dcdf9-5842-a385-ab12-b0773ddb7e89', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-08-12 15:24:38', '4ddf9c24-c313-9a1e-b048-54cc26b0d397');
INSERT INTO `microchip_classify_log` VALUES ('0a3b100f-2269-47ad-243d-bb86514b203a', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2012-11-27 22:44:17', '66ed698f-9338-9f7b-9c0a-f781d99ce7ac');
INSERT INTO `microchip_classify_log` VALUES ('0a4cdc56-2c85-6da0-7a37-e585fca4e30d', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-06-12 08:01:05', '91faf881-17f7-1ebb-92ae-f7305b5f3c27');
INSERT INTO `microchip_classify_log` VALUES ('0a6e93ae-4a6f-5a33-82a5-c051f7f47022', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2002-10-27 01:48:11', '54486484-7aed-321d-afa4-4d93aeaef3b0');
INSERT INTO `microchip_classify_log` VALUES ('0a98b92d-656d-55f4-5c0c-bb280759682d', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-06 21:17:40', '3dca1088-7666-6429-6278-03e868e7d66d');
INSERT INTO `microchip_classify_log` VALUES ('0b31c9e1-d11d-a479-50b1-0ea705bf0166', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-11-12 16:49:28', '7cfe7a9b-6aae-d4a5-8398-044a5f149e5e');
INSERT INTO `microchip_classify_log` VALUES ('0b578d3d-1202-ed6b-86cb-d00c53ffc233', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-09-27 20:03:18', '4fec82bf-3552-4d9e-262b-f7b8640c8c97');
INSERT INTO `microchip_classify_log` VALUES ('0b5e3807-b12b-fcee-840c-77af9dd12c12', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-06-21 08:36:41', '134dfdce-29f6-745e-e015-5c5c0231a3a8');
INSERT INTO `microchip_classify_log` VALUES ('0bbde0f7-760c-8ebb-f815-6a61aeb4e5c5', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-03-14 06:11:30', 'c99d3684-70ec-d353-76e4-0ad85198557f');
INSERT INTO `microchip_classify_log` VALUES ('0bce8df3-4f91-20b1-d15a-275219e26e66', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2020-08-04 01:34:36', 'f2da4a77-3b68-6475-cd97-ae43d6bfd848');
INSERT INTO `microchip_classify_log` VALUES ('0bde7ffe-ab50-84fb-0bd8-7cc4e06d4fe5', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-09-02 17:16:06', 'e2dfc843-37d6-0e19-ee32-ccd51a3e6b66');
INSERT INTO `microchip_classify_log` VALUES ('0befb21e-f5d3-6d65-0897-64ee32ea118e', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-05-07 06:06:31', '630101c1-16b5-0792-dd69-8236ae983b0a');
INSERT INTO `microchip_classify_log` VALUES ('0bfaa616-cd62-68c4-bd3d-bb065e50e9d4', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-01-04 23:50:43', '36ab4037-79c3-84c6-cf87-c16e87aaf744');
INSERT INTO `microchip_classify_log` VALUES ('0c1cdc0f-e224-c785-7d35-bf4e71301bc4', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-03-08 02:22:30', 'fcef231c-4cd8-cdd5-2a88-d2bb502c72e2');
INSERT INTO `microchip_classify_log` VALUES ('0c289ad1-eaa4-ebd7-8c1b-138a0997b9aa', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-12-22 22:50:26', '9888ad89-d269-c14b-7b5e-0932447e4c78');
INSERT INTO `microchip_classify_log` VALUES ('0c863fb1-5a58-0f39-680b-92b078254698', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-04-02 01:32:16', '295b3ce0-ed54-7085-08bf-d45017d498b3');
INSERT INTO `microchip_classify_log` VALUES ('0cd2e460-004f-7321-3296-4b6aba815ebd', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-07-08 16:34:49', 'bd8c3e10-d040-6e71-e272-9127a366eb54');
INSERT INTO `microchip_classify_log` VALUES ('0cf59f00-d50c-9f78-0bf5-18b89d431df7', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-07-07 07:50:28', '7164d7db-73ef-d4f8-11b8-784be3a371e7');
INSERT INTO `microchip_classify_log` VALUES ('0e2de57e-c44d-a379-fe39-af6db691f673', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-09-13 10:30:30', 'bd9c4c25-d1e6-18e0-94c8-dfe45529a502');
INSERT INTO `microchip_classify_log` VALUES ('0e421325-f0c4-6df8-683e-5cc4f7168241', '0.71', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-06-17 01:04:26', '36737fd1-eb1c-60cb-1f95-b627a75038d3');
INSERT INTO `microchip_classify_log` VALUES ('0e823778-60c9-8d7f-3520-0efe4ca671a1', '0.97', '0.96', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2008-11-02 15:19:22', 'a780fee6-a0ec-d953-e2c9-2af0d5f1f020');
INSERT INTO `microchip_classify_log` VALUES ('0ebd0392-3fae-2806-d8c5-36128a02a9c5', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-12-14 22:02:59', '65d2f1ac-1c52-2910-b542-715e0d327f63');
INSERT INTO `microchip_classify_log` VALUES ('0f0656b1-b3ee-3506-b94a-820a87ae8e8c', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-08-25 17:15:46', 'bf81c46d-2652-c341-0534-79b507a990b9');
INSERT INTO `microchip_classify_log` VALUES ('0f60e47d-8721-3f84-b6cc-a4410bd3a8e0', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-10-22 06:01:17', 'afc34652-6389-9fa1-43da-cfb8c2022722');
INSERT INTO `microchip_classify_log` VALUES ('0f95cfea-86ed-48fb-9bb4-24fd037110a7', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-04-17 12:53:21', '38e92f1c-62db-5b69-3340-573515ae9a2a');
INSERT INTO `microchip_classify_log` VALUES ('0f9a2a8e-b3ab-b0d0-5bf8-ad9c68d025d8', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-06-22 19:02:14', 'b0cc7db6-7bab-e7eb-844b-829261e7cef2');
INSERT INTO `microchip_classify_log` VALUES ('0fca6704-a75b-66dd-4e1d-7d76ef212b0a', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-08-19 16:25:11', '24c03553-a123-d1c3-3f50-75d50d6dbe5f');
INSERT INTO `microchip_classify_log` VALUES ('102af697-0515-8dfe-35d5-b654e0f448cc', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-03-24 11:51:02', '77d98283-f00a-d13e-df63-007868be623f');
INSERT INTO `microchip_classify_log` VALUES ('10344212-99c4-54fe-cca6-2edb93892bfb', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-04-18 14:02:13', 'e2dfc843-37d6-0e19-ee32-ccd51a3e6b66');
INSERT INTO `microchip_classify_log` VALUES ('10c0a99b-e540-25cd-dd27-b55c3beeee6b', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-03-03 22:46:38', '91faf881-17f7-1ebb-92ae-f7305b5f3c27');
INSERT INTO `microchip_classify_log` VALUES ('10cf3249-e2bf-f12f-b75c-4e3573912da6', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-08-04 01:44:32', '29c85846-c409-85ae-9628-097b2a6c0bb6');
INSERT INTO `microchip_classify_log` VALUES ('10d25146-082c-0c9a-44d3-c69de6199cdd', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-03-18 18:33:43', '93b37ee2-ff65-64d5-44a9-77fb4829a5e4');
INSERT INTO `microchip_classify_log` VALUES ('10e09923-5099-0ac5-5846-c51c59fdbf46', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-11-16 00:53:43', '79593a83-3cf2-d901-eda9-9491897dd564');
INSERT INTO `microchip_classify_log` VALUES ('11746d80-5067-c3bd-06e1-5ba4a6402dce', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-09 05:44:32', '70d6279a-67b8-6a01-fa3b-0e5c1e8007d3');
INSERT INTO `microchip_classify_log` VALUES ('118af945-2a95-aa86-0e99-1783b054d513', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-10-08 00:22:32', 'e17775a7-05f4-f4c6-f898-aa9c1373a21e');
INSERT INTO `microchip_classify_log` VALUES ('11a1e1d2-778e-05bd-0728-361999bae753', '0.24', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-02-09 02:45:56', 'aeaf90eb-ba7a-1e0f-e3ba-2e3db8f417fe');
INSERT INTO `microchip_classify_log` VALUES ('11c7390c-9caf-6a1c-1173-be5ca544a597', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-08-14 13:46:47', '38e92f1c-62db-5b69-3340-573515ae9a2a');
INSERT INTO `microchip_classify_log` VALUES ('1225336e-0c4e-0bc3-145c-7e17cedfbb87', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-26 18:47:31', 'ccf643ad-631b-ead5-26e5-2d5a8859987e');
INSERT INTO `microchip_classify_log` VALUES ('123157e4-8be9-f8c6-2a44-f913f5bbe5b2', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-04-30 06:11:34', 'afae4fbe-5b1f-43cb-ec6c-853f002dc6d4');
INSERT INTO `microchip_classify_log` VALUES ('124779f4-e9fa-53b6-70f7-73918e60fc78', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-02-16 14:28:47', '92c8d35b-df1a-188a-64b2-85b45d755077');
INSERT INTO `microchip_classify_log` VALUES ('129ee505-31a9-3d04-52a6-8ff4bd0d4c37', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-05-24 05:06:55', '9b718da8-4c3a-0c70-8751-b27f3067e356');
INSERT INTO `microchip_classify_log` VALUES ('133db577-ebea-ebe4-cca5-5c61a1c3a167', '0.97', '0.94', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2021-10-18 01:08:45', '95444be7-df47-956f-43eb-dcd5242dfe59');
INSERT INTO `microchip_classify_log` VALUES ('13beadce-6aed-5c39-dbd4-6a40a1800696', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-02-22 16:03:06', '9ec590c0-c18b-180c-47df-9396fbb88951');
INSERT INTO `microchip_classify_log` VALUES ('13eb89bb-823c-f6bc-c471-999f0e8d67af', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-23 06:46:08', 'e8a4a425-de9a-d085-5f41-2e7c08130620');
INSERT INTO `microchip_classify_log` VALUES ('15074cd6-d96f-fb3b-896d-20224316d663', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-07-14 13:53:25', 'bf81c46d-2652-c341-0534-79b507a990b9');
INSERT INTO `microchip_classify_log` VALUES ('15521cc1-4a5b-b984-1df3-a6ba862195be', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-08-16 18:05:03', 'a95bf4fa-49d0-ebf4-0850-5857f64658e7');
INSERT INTO `microchip_classify_log` VALUES ('15c77e4b-38f1-2ccc-f058-34634c790d27', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-28 22:14:34', 'f2da4a77-3b68-6475-cd97-ae43d6bfd848');
INSERT INTO `microchip_classify_log` VALUES ('16e4d7a1-26a8-b005-d11c-8e47607a7fa4', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-05-09 18:22:37', 'f2bfefc3-b541-377f-7bf7-9504b586f43c');
INSERT INTO `microchip_classify_log` VALUES ('16ee8552-9c25-44a1-5ebf-853055dac2f5', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-07-13 02:32:06', 'c13a6785-f4ce-6164-3013-31f6f95dd921');
INSERT INTO `microchip_classify_log` VALUES ('16fffc0f-11a0-cd68-a680-2398f93285ab', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-10-05 16:42:13', 'f19be53b-edf6-86e8-7573-decab08a3eea');
INSERT INTO `microchip_classify_log` VALUES ('175fa2bf-c66e-50cc-ffd6-984ac9c21e5c', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-02-13 00:31:09', '3906ac4a-ccb6-9caa-eada-b15c102e609d');
INSERT INTO `microchip_classify_log` VALUES ('1779c0a8-4bc3-8982-da40-053974fb7973', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-10-05 09:27:30', 'bb8b3f87-8834-5004-681a-b200fe2f693d');
INSERT INTO `microchip_classify_log` VALUES ('177c1fc5-a1f4-148a-479d-60bd50ed261b', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-03-10 22:58:34', '6efcfa47-a1a1-0347-673d-7459fc683ee9');
INSERT INTO `microchip_classify_log` VALUES ('17c5c38d-d594-c512-a719-33e16ea85480', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-01-03 00:20:49', '57588683-d29a-c2e5-b461-741b0d82185c');
INSERT INTO `microchip_classify_log` VALUES ('17dfd89a-a3a5-123a-057c-09c3505a939f', '0.26', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-04-07 02:11:56', 'b15ec149-0ed6-2c42-d497-79659eac7a3f');
INSERT INTO `microchip_classify_log` VALUES ('180f45fd-47a7-58c0-5b6e-c30588a759c1', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2016-12-27 23:43:43', '8910ad02-9ac9-8d3b-5169-b8d53d06707b');
INSERT INTO `microchip_classify_log` VALUES ('187a6f5d-7a69-3dce-13eb-c6065de48ab3', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-10-26 01:40:23', 'ef2563f7-677c-49d2-3c1b-d6cf2c419be0');
INSERT INTO `microchip_classify_log` VALUES ('188314c4-53a4-21c2-a869-02b3ab4fe68a', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-01-01 14:01:06', '1df12083-6519-754a-29a3-5f3ca7644cdd');
INSERT INTO `microchip_classify_log` VALUES ('188e4602-7fa8-cf67-7d07-7c1963dde16f', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-08-09 00:57:29', '9c47ed48-f8f2-7374-9a4b-fffab69f9ad2');
INSERT INTO `microchip_classify_log` VALUES ('18a6bddc-c34e-d3e0-4ee6-fa2600826de4', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-07-13 00:24:15', '8ae865d6-0043-8368-d1cc-9cd7133e2ee5');
INSERT INTO `microchip_classify_log` VALUES ('18c2e7d8-ab23-f6da-1063-d33c7bc55495', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-03-19 05:06:21', 'b4867457-3996-b9dd-bdb1-58ace798f47e');
INSERT INTO `microchip_classify_log` VALUES ('19160280-3f2c-927c-82ae-cf1140279e3f', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-02-23 00:01:18', '6cf7726f-b6ed-4124-b796-4f32a0015706');
INSERT INTO `microchip_classify_log` VALUES ('191bbd8c-30b0-d431-5d45-7ada41221a84', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-05-18 00:56:25', '9f80d0f5-d560-9384-5f02-d9e4fcd9d6c0');
INSERT INTO `microchip_classify_log` VALUES ('194f551c-8165-6c22-e048-520ceb6f87e5', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-06-01 02:24:28', '3750bee5-e140-a9c4-ed2f-655513a5ba8e');
INSERT INTO `microchip_classify_log` VALUES ('19a99ac6-fa22-475d-cb16-c4a5b113b648', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-08-12 19:40:11', '753bdab0-6326-f7f8-6994-9d7b7a6b3db0');
INSERT INTO `microchip_classify_log` VALUES ('1a2ff9b6-69e6-8ebe-b68a-0a6df60a6230', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-07-18 22:11:03', '673f1a05-3aa7-09c6-2f29-b2cfbe91f215');
INSERT INTO `microchip_classify_log` VALUES ('1a5bfa0a-0ef1-2736-3687-e38f41d2734a', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-23 08:10:37', 'f82362d0-a7af-e9f8-af9e-41a0ffa6847e');
INSERT INTO `microchip_classify_log` VALUES ('1a67a9ac-f1c8-3506-9015-c71fcd140ea8', '0.01', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-05-13 15:05:58', '0270ea0b-e82b-b545-52f3-b88dc8d22eaa');
INSERT INTO `microchip_classify_log` VALUES ('1abb9e0c-38c1-35f5-6b17-ce2398c19ad0', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-07-17 14:13:01', '4bf4f557-9b19-f2c3-a6e8-241dee226245');
INSERT INTO `microchip_classify_log` VALUES ('1afdda94-f7ae-c04a-9d0b-7b5220d99dcf', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-11-09 08:42:57', '44873696-421e-7486-756e-1fedd78634b3');
INSERT INTO `microchip_classify_log` VALUES ('1b2b54f6-d6bc-7648-4205-bf8baa866a22', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-07-20 12:36:11', '75d4d163-31e2-e423-e5ec-889f21830b6d');
INSERT INTO `microchip_classify_log` VALUES ('1bbaa2ba-1ef4-d530-505a-2f7ecb1abc31', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-05-08 00:19:33', 'fe9bf912-72b3-9a92-66ce-8b850219fe02');
INSERT INTO `microchip_classify_log` VALUES ('1bc7f814-5fae-63ec-0d47-d3b8d4d722fd', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-12-05 18:02:24', '4d568c13-77bc-9471-8c96-a5cf00eaa5e5');
INSERT INTO `microchip_classify_log` VALUES ('1c310680-0d15-775a-920a-8d38e3bb99ef', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2014-12-27 14:50:49', 'e84018bb-e494-e522-6fc1-ce74e59d2132');
INSERT INTO `microchip_classify_log` VALUES ('1c9c73a3-bc05-55fe-41b5-548ff1ae9934', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-03-18 14:59:50', '07345509-dc03-c46e-e4c0-22f8f21a5cbb');
INSERT INTO `microchip_classify_log` VALUES ('1cd24031-4721-ea74-7f62-2df0b3742865', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-01-20 22:24:03', 'a4136c76-28a1-396a-1f73-a66e1c795c68');
INSERT INTO `microchip_classify_log` VALUES ('1d2afa77-bedf-c195-89f4-bd311cb9e671', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-11-05 07:32:25', 'c9bd89cd-1c22-0183-221f-b53837201712');
INSERT INTO `microchip_classify_log` VALUES ('1db1364f-e2a7-b60b-567d-3ae9be7a199c', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-11-21 04:49:56', '7cf9da33-8dd6-bbdc-ea26-0f184bb97cb0');
INSERT INTO `microchip_classify_log` VALUES ('1dbfcb36-c459-d862-e6d8-6b6e6ec0910c', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-02-21 03:10:30', '9a575c61-883f-e0b4-b47c-d8b94ba3d400');
INSERT INTO `microchip_classify_log` VALUES ('1e3427c9-ea39-da8a-2b89-ae69eb1d04c0', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-12-11 10:40:48', 'f900934f-d58b-0ef4-cad3-7684f79b4575');
INSERT INTO `microchip_classify_log` VALUES ('1e679608-1a23-6e14-118f-000fab74e650', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-11-26 04:22:07', '630101c1-16b5-0792-dd69-8236ae983b0a');
INSERT INTO `microchip_classify_log` VALUES ('1e850ffd-133b-c48e-5ab1-494b1790b8de', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-02-08 17:36:03', '71af0c9e-9442-0a4f-4f10-f22b4ec25d3c');
INSERT INTO `microchip_classify_log` VALUES ('1e9963e7-5021-3e55-e5f3-82ff5535d0e2', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-04-06 18:05:43', '90330f20-288f-13fa-c920-1df3c0f2f357');
INSERT INTO `microchip_classify_log` VALUES ('1e9d6bc0-be7a-bd2b-3393-8f2d2e22d282', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-03 07:31:25', '1a113334-904d-c484-7469-f193c7d7ae8a');
INSERT INTO `microchip_classify_log` VALUES ('1eb18530-7dbe-b7c2-16b2-60f89e87ea41', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-09-25 16:11:49', '6e206872-fb30-3129-eec3-c28aeaaf4ea3');
INSERT INTO `microchip_classify_log` VALUES ('1ed7bf87-12d0-1ad5-0ef1-4009db257fe7', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-12-28 18:48:11', '805a7c82-2d15-f6f2-5e84-76678f90b6f0');
INSERT INTO `microchip_classify_log` VALUES ('1fc900de-de5d-c6ed-a330-d20e573f8f36', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-11-30 06:54:39', 'b922b735-28f2-89b2-19b6-6f232d45b9a6');
INSERT INTO `microchip_classify_log` VALUES ('2012df5b-51d2-fa37-4e64-860626c1ffe9', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-12-30 16:42:23', '7a45ee38-91a5-0feb-89bd-8dec514f65d3');
INSERT INTO `microchip_classify_log` VALUES ('203b9c96-aaf7-9d1b-afbb-73e5d5a97ad2', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-01-04 02:34:08', 'e464f57e-7882-0f5e-64a6-83f2914f7fe5');
INSERT INTO `microchip_classify_log` VALUES ('2058eb54-f012-1039-6916-8849db6d8ed0', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-07-27 15:10:08', '9f03b4db-aac0-9869-0944-7560982bb079');
INSERT INTO `microchip_classify_log` VALUES ('20a4fca2-0672-bdc3-e4cd-7faf112c1045', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-04-20 05:08:28', '2604fe89-eaf2-2cc7-d02e-503937306f18');
INSERT INTO `microchip_classify_log` VALUES ('2163bc60-b63b-dc09-647f-a63e36c9336a', '0.44', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-07-13 15:01:22', '8c859234-8e52-6bc6-9bcc-388f8fccd4f3');
INSERT INTO `microchip_classify_log` VALUES ('2195ad86-d92a-d2ef-efb0-086c445b3db2', '0.30', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-01-25 06:37:23', 'adb04b8c-c23a-fa9b-b0ee-4119e1d3df76');
INSERT INTO `microchip_classify_log` VALUES ('225f1865-c0d7-24ba-8ae8-f8bce1a103f0', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-07-05 14:28:27', '30ae6430-8920-bd21-e41c-aeea251e434d');
INSERT INTO `microchip_classify_log` VALUES ('226e96b9-a499-f18d-3503-2084fd126b3e', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-07-08 01:06:27', '371864e3-8457-5339-891b-5f03633ff6de');
INSERT INTO `microchip_classify_log` VALUES ('2292302c-52ea-bb99-fa57-d747c0c43d49', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-04-13 04:58:40', '3dd82449-5e07-199e-d13f-a6eb17f7ec75');
INSERT INTO `microchip_classify_log` VALUES ('22cb61d1-3943-f85d-6e4e-5a437ffcfd38', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-02-21 22:09:06', '6096c8f1-9803-c371-ed7b-352cd4adf3c0');
INSERT INTO `microchip_classify_log` VALUES ('2323cc91-d6f6-590d-78ce-23010ce1dfc8', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-04-20 11:32:58', 'c7379393-760f-a102-a8d8-d491de4568f5');
INSERT INTO `microchip_classify_log` VALUES ('233e2a60-8be8-6028-2816-c7375a0bf22e', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-02-25 21:23:42', 'd5315808-3d80-94ff-83c1-c0888dd269d7');
INSERT INTO `microchip_classify_log` VALUES ('23a1f796-e879-64b9-82f6-15d0086d4648', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-11-21 09:15:48', '39a090c8-6d01-1560-4bb7-28ccf7df59ab');
INSERT INTO `microchip_classify_log` VALUES ('23a7ddc1-9afc-e83f-18ea-62b07420a950', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-11-14 03:30:38', '754f0562-5725-bb2b-b7bb-e05e2e947aef');
INSERT INTO `microchip_classify_log` VALUES ('23c09ce5-ff9d-4788-28f4-c806bea96c5c', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-11 00:53:44', '3906ac4a-ccb6-9caa-eada-b15c102e609d');
INSERT INTO `microchip_classify_log` VALUES ('23deba6a-99de-2ef1-b23b-d88e5cac93a7', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-12-24 01:28:25', '33269555-72c2-bc99-c7e8-faa51672b134');
INSERT INTO `microchip_classify_log` VALUES ('2473f04b-b283-db33-fe82-f7fe7bad8b96', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-03-27 21:56:57', '8a721130-e408-2501-1a77-e0ee7ea017ab');
INSERT INTO `microchip_classify_log` VALUES ('24c5e197-cb6a-de0a-555e-bf226ccd2ab2', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-08-14 04:22:27', 'b62584dc-9892-c2f0-70a7-e0d9f89b9c6e');
INSERT INTO `microchip_classify_log` VALUES ('24ca30c2-9498-e34a-d46b-75be93862e82', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-11-11 18:23:59', '7cfe7a9b-6aae-d4a5-8398-044a5f149e5e');
INSERT INTO `microchip_classify_log` VALUES ('251da453-2d10-c2b9-37f3-7e8bca129fe2', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2001-08-30 11:13:41', '24943efc-1f67-5028-33fb-0832dc40cab2');
INSERT INTO `microchip_classify_log` VALUES ('25343417-f2a1-f097-9062-6fdb24a1f59f', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-05-09 04:35:17', '16f3a7c0-ec0b-83b5-b643-d26201a8c619');
INSERT INTO `microchip_classify_log` VALUES ('2591d0ba-7190-08ed-be1a-d74cdee4d127', '0.46', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-01-19 06:11:19', 'bb8b3f87-8834-5004-681a-b200fe2f693d');
INSERT INTO `microchip_classify_log` VALUES ('26e32e17-0d47-af48-af7d-745d558f1b1a', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-09-05 09:31:57', 'b60e9aed-09c7-7d0a-946c-a0a0f952033a');
INSERT INTO `microchip_classify_log` VALUES ('2754767e-d46a-8788-d04e-3af40408b90d', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-09-16 10:26:56', 'e6e3fa95-6d37-39e4-199b-82f47ab71769');
INSERT INTO `microchip_classify_log` VALUES ('2769ac96-75b4-0caf-dbf1-9adc43c0257e', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-08-15 19:39:35', '06124ede-605f-bc85-259f-d2b6638ad695');
INSERT INTO `microchip_classify_log` VALUES ('27b69ede-abb8-5989-8394-979b21dd2f86', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-03-25 19:57:42', 'b2a8ba2b-d260-25b2-3735-661b4ed62208');
INSERT INTO `microchip_classify_log` VALUES ('27e14b57-b908-3a91-fa43-b134d8467d80', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-03-16 23:29:50', '98d52a5b-f2fa-0703-9a22-b96e181381b6');
INSERT INTO `microchip_classify_log` VALUES ('27f871ae-a080-06db-1703-18c69cecd22e', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-05-24 22:39:50', '8e4f7e09-456f-303d-7aa0-e4e2f3c98608');
INSERT INTO `microchip_classify_log` VALUES ('28241a70-ad17-dada-ce5c-6d3797fbcff1', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-12-12 23:35:12', '95e1edcc-776f-f4a9-e9aa-77bbcc765e8f');
INSERT INTO `microchip_classify_log` VALUES ('284881f3-7855-00e1-b14c-9071c8c16259', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-14 13:24:04', '9a575c61-883f-e0b4-b47c-d8b94ba3d400');
INSERT INTO `microchip_classify_log` VALUES ('2864e516-7419-2d5b-b61d-2e1c336406a1', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-10-23 08:02:53', '532aaced-a980-782d-8005-ba1613f19472');
INSERT INTO `microchip_classify_log` VALUES ('2878e79e-dc49-a5a3-f077-250599087b95', '0.44', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-12-22 18:49:21', '534118a2-96f5-4f4c-7597-0a172616998f');
INSERT INTO `microchip_classify_log` VALUES ('288c6f63-9f48-1d02-2f61-bc7146dd2533', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-09-09 14:27:09', 'e7592694-c8a2-a15c-ff33-bad920c177f8');
INSERT INTO `microchip_classify_log` VALUES ('289e9e2d-7a30-f344-3668-ccf82a0d25a6', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-04-13 13:45:10', '48ecbcfe-5178-1d7a-797d-efd9c55a70b8');
INSERT INTO `microchip_classify_log` VALUES ('28b0627a-c908-ebba-40e7-79c6f078db28', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-10 18:30:13', '3a4aa369-8732-58e3-b3b4-dae4be82f359');
INSERT INTO `microchip_classify_log` VALUES ('28dac857-a17d-b1de-5304-ba821d0f4d1b', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-06-21 12:37:56', '8af6e78d-a24f-9bdc-4aac-94de23c8fa52');
INSERT INTO `microchip_classify_log` VALUES ('299fcca4-7f5a-5c21-0a5c-58d91f719de5', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-12-17 21:44:52', 'fcfd342a-a2a4-0cd5-03c2-f7885c550c2a');
INSERT INTO `microchip_classify_log` VALUES ('29dc9bff-b108-b340-ed4a-2c8f5e6f07dd', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-11-29 22:49:26', '531b4110-fcaa-2206-d2c2-4d8e18d50731');
INSERT INTO `microchip_classify_log` VALUES ('29ddbd5c-a196-3281-e69b-9f814868852a', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-09-16 22:39:55', '7b3f2719-1f6c-2df7-6fea-f1ba9781b800');
INSERT INTO `microchip_classify_log` VALUES ('2a13d0e9-45c3-f139-915b-7ca1bd4e074e', '0.54', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-01-23 04:03:08', '2a6625b8-6572-f56a-5fb4-b1a439510c1a');
INSERT INTO `microchip_classify_log` VALUES ('2aade2bd-0350-697a-008f-321e9e1c398e', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-07-23 12:59:50', '9415cd85-edad-c25a-1f38-51edebd341b9');
INSERT INTO `microchip_classify_log` VALUES ('2b224a43-d864-6c87-6313-c4e17470c59f', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-03-31 21:44:54', '80392d8a-32a6-3f0a-2cdc-c9816430c90a');
INSERT INTO `microchip_classify_log` VALUES ('2b36d100-0ac6-1f6d-d706-323d27511d18', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-05-18 02:32:16', 'f5f676d4-f6d6-2b28-24c0-abe6fa668371');
INSERT INTO `microchip_classify_log` VALUES ('2b4e0a43-c593-f422-5be0-c77f77082a08', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-12-28 06:41:18', 'b828dbcb-9238-82a2-19fc-e0e97c80873e');
INSERT INTO `microchip_classify_log` VALUES ('2b7ef00b-0d42-fd01-6a1c-a68c9168e672', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-02-16 13:01:55', '9dfefae6-f58b-0bcb-7238-ce7556d930da');
INSERT INTO `microchip_classify_log` VALUES ('2b994848-8a18-e648-70a3-3ac9305d49ee', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2006-05-14 17:25:33', '028ed474-99dd-e204-601a-0e7882ac2031');
INSERT INTO `microchip_classify_log` VALUES ('2c21ac61-39db-1bf3-56b6-3db13329fd05', '0.77', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-12-07 13:45:50', '34ad57cb-d49e-7cee-e444-35993538e9b8');
INSERT INTO `microchip_classify_log` VALUES ('2c258191-71d4-f1dd-ce5b-36e44a05c57a', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-08-24 00:52:32', '8cb85fb8-a223-8265-c61d-3a2a7ad42c75');
INSERT INTO `microchip_classify_log` VALUES ('2c39205c-64b8-109d-f3d4-50ab939e1a2a', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-08-22 13:52:19', 'ac3615b2-091a-85f1-227d-021e829457fc');
INSERT INTO `microchip_classify_log` VALUES ('2d7d6dd7-b76f-7b44-9f3a-a4fbd8e15569', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-01-02 11:34:12', 'a92cecab-9492-489b-c281-bc5498064168');
INSERT INTO `microchip_classify_log` VALUES ('2d91ab45-bf8c-9547-64fe-157b9e71d4c2', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-08-20 07:51:24', 'a72ee54b-b18b-a464-1ace-aa836f8b4a3e');
INSERT INTO `microchip_classify_log` VALUES ('2db3bac9-a894-1d05-fb0c-42d9e74e980b', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2002-10-30 17:04:55', 'fd53f775-2296-98ba-b9dd-d9b929116cc5');
INSERT INTO `microchip_classify_log` VALUES ('2ddec4f8-f1e4-2a96-cb6e-baf0512a135d', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2016-02-23 13:19:40', 'b0422e1b-ca44-95c9-3d65-e12b3eb10829');
INSERT INTO `microchip_classify_log` VALUES ('2e05491a-80f6-6b25-156e-a1c3698293dc', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-16 22:07:46', 'eb378b86-eba0-01ff-f023-9c9932ccf22e');
INSERT INTO `microchip_classify_log` VALUES ('2e4bb24b-17d7-bafb-4014-9d4f3d80d0f4', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-11-03 21:07:54', 'b5bcb33f-7d85-5126-15d8-026664ba4f1d');
INSERT INTO `microchip_classify_log` VALUES ('2e5b9195-ac0b-b9c9-a455-ad0279cfc17c', '0.26', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-04-22 20:46:28', '0f1118ac-65e2-9cec-7211-3bd27371dc1f');
INSERT INTO `microchip_classify_log` VALUES ('2eb5c95f-6019-ba06-5313-4fa043a68341', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-01-30 01:30:17', 'b62584dc-9892-c2f0-70a7-e0d9f89b9c6e');
INSERT INTO `microchip_classify_log` VALUES ('2ee2aff6-57ce-be6e-9487-3744e2df374c', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-03-22 16:25:29', '15e25614-bc03-95ed-3d5e-c68b49f83d4b');
INSERT INTO `microchip_classify_log` VALUES ('2f8a5f61-19ca-9177-5450-dc7be773573a', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-07-11 12:20:22', 'd1c1c5c0-9f19-be33-a18b-dae8632930d1');
INSERT INTO `microchip_classify_log` VALUES ('2f925220-df19-ced6-ff10-8decebc0c499', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-12-09 14:48:18', '4093ebd7-592d-e8fa-1f43-44503cbd0508');
INSERT INTO `microchip_classify_log` VALUES ('2fdc0852-9f8d-1f51-f668-aea5ca1e3ded', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-10-27 10:04:46', '2e4d0246-1fef-a252-b913-3aa01e9f8304');
INSERT INTO `microchip_classify_log` VALUES ('2fedd9d9-9c6a-be06-33a7-914701d5bb16', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-07-21 13:19:36', '08f8260b-b0eb-7ce4-3119-1055f6b9c34c');
INSERT INTO `microchip_classify_log` VALUES ('302abb4c-ab0a-cc00-f529-e30034cf80dc', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-06-07 18:39:22', '3a0d49b6-e2e3-5f70-2d9b-5f43dd69583f');
INSERT INTO `microchip_classify_log` VALUES ('3050ce22-09a1-b4c6-8b19-2c1a0b6d06ca', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-08-20 16:16:56', '29359a44-5285-78c3-e767-4ab6d6ba2f54');
INSERT INTO `microchip_classify_log` VALUES ('30b835ce-b042-daf9-e3d0-a8192acb7f8f', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-11-25 11:21:07', '73e54e8c-4241-1a27-5711-f04dd0f26245');
INSERT INTO `microchip_classify_log` VALUES ('30eaf5dc-db91-efe8-a55b-f0646fa83281', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-11-23 01:24:29', '6660ed47-37c0-493c-9924-60e89148a27e');
INSERT INTO `microchip_classify_log` VALUES ('30f4fb98-b935-4fab-e03b-96dcf1439e3a', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-06-09 07:58:13', '92ffb707-f1d4-7128-7e8d-8a529e47f010');
INSERT INTO `microchip_classify_log` VALUES ('313e9a6a-3d56-2275-df1f-5bb113167121', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-11-25 14:55:53', 'd5d3da1e-e61a-39d1-375c-16db7b19f012');
INSERT INTO `microchip_classify_log` VALUES ('3155df62-c113-d348-0dd4-2b77a6e8b550', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-06-12 03:46:08', 'f900934f-d58b-0ef4-cad3-7684f79b4575');
INSERT INTO `microchip_classify_log` VALUES ('31f31819-490b-30f4-1508-9f5794158f4b', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2001-02-06 05:17:51', '4caec3cb-9862-f098-e33b-261988075633');
INSERT INTO `microchip_classify_log` VALUES ('32831b95-3504-82f9-5c61-93dcd3966af4', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2002-12-15 01:16:16', 'a806f621-820c-f13b-f8b9-0c37cf946a55');
INSERT INTO `microchip_classify_log` VALUES ('329525d0-f099-c976-e8de-e26b89d25525', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-03-24 09:55:50', '7f4cee39-f637-5699-3d0d-be0c9888b5ff');
INSERT INTO `microchip_classify_log` VALUES ('32a36e84-a73e-07fd-fcac-cbac31a6bf07', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-03 13:24:40', 'b4d618e2-c0d0-a7cf-4a6a-0eed990fb3f4');
INSERT INTO `microchip_classify_log` VALUES ('32a39ada-7b76-2362-ca4c-31d320ec3462', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-07-30 08:31:17', '3fc55b15-93a1-1d47-034e-50ed3fbdffd0');
INSERT INTO `microchip_classify_log` VALUES ('32c4ab0f-4565-cf63-9c1c-f42295d2f9d9', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2011-01-31 18:17:42', '6f967669-8e34-dc3f-95e4-397d29d72198');
INSERT INTO `microchip_classify_log` VALUES ('32e167b7-0725-eb27-0e3e-0be7f0b68555', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-05-22 22:56:23', 'b2b0aae7-dda4-55c3-d92d-921c8eb06b43');
INSERT INTO `microchip_classify_log` VALUES ('32fd96bb-c824-a4c8-3f6f-5b569168308b', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-07-16 19:03:36', 'd2dde162-3e34-276f-1e34-dc48f65c2cb2');
INSERT INTO `microchip_classify_log` VALUES ('3325fdaa-6384-4711-877f-ad2d48af5f63', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-03-09 23:31:16', '0e59f544-c547-824c-69bc-a1fd9057eb10');
INSERT INTO `microchip_classify_log` VALUES ('332d46f8-2161-3a99-186c-c0d54081a7e6', '0.92', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-02-14 08:12:42', '0e59f544-c547-824c-69bc-a1fd9057eb10');
INSERT INTO `microchip_classify_log` VALUES ('33735847-e868-8cf5-f984-763068c36dfb', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-09-14 09:35:03', '4987d1cf-76ac-7589-0f39-2201fd0fe6f1');
INSERT INTO `microchip_classify_log` VALUES ('3388db6d-4aed-2a9d-a536-4bea33f89901', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-06-05 10:22:39', '95444be7-df47-956f-43eb-dcd5242dfe59');
INSERT INTO `microchip_classify_log` VALUES ('3427e84d-9000-e772-bf31-0e4e4fc74f10', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-10-12 03:17:39', '37392245-c492-7823-7cca-92219066e0a3');
INSERT INTO `microchip_classify_log` VALUES ('34447b5f-0b7a-0d4a-7def-0f5002ff2330', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-18 15:31:21', '83c9e5c1-ed63-79be-6fef-ac7bf379528c');
INSERT INTO `microchip_classify_log` VALUES ('34857535-7393-99d8-5249-d23fb6c2a7fe', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-09-06 08:23:24', '1ae06697-f483-04e9-4a8a-79c080908d1d');
INSERT INTO `microchip_classify_log` VALUES ('34bed23b-869f-e531-ee3e-a844c4f03f3c', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-04-12 10:11:08', '9d526a98-19cc-40e2-ae5b-01161e5a0cdc');
INSERT INTO `microchip_classify_log` VALUES ('34e85a9d-2202-6966-9e46-4614f386d560', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-10-19 18:45:33', '9415cd85-edad-c25a-1f38-51edebd341b9');
INSERT INTO `microchip_classify_log` VALUES ('34f505dd-ecf2-cf20-2f85-9305db8b5359', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-04-24 06:09:47', '9965a7d4-15b6-9523-e87b-794e7f864f07');
INSERT INTO `microchip_classify_log` VALUES ('353a0594-6afd-b50b-71fa-7813004c7d16', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-06-30 17:45:23', '9b598c6c-91d2-1ba7-bc8f-9ee2fdd3a042');
INSERT INTO `microchip_classify_log` VALUES ('35c07000-5903-ef6e-75cc-728dde1306b9', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-05-25 13:33:30', '6cdc4c5a-99b4-d5b2-21d3-b44cd8a38022');
INSERT INTO `microchip_classify_log` VALUES ('361a8379-be14-d7f0-cdf1-bea48b4ee7fb', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-03-01 22:10:23', '0570e645-04d8-1ad2-f7f5-c71b8283ff53');
INSERT INTO `microchip_classify_log` VALUES ('3630dda6-5677-5d4f-b55a-fabdec175271', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2021-08-25 11:13:02', '6096c8f1-9803-c371-ed7b-352cd4adf3c0');
INSERT INTO `microchip_classify_log` VALUES ('369d5bec-3290-2443-0196-b8175a56bbf5', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-04-04 12:40:43', '36737fd1-eb1c-60cb-1f95-b627a75038d3');
INSERT INTO `microchip_classify_log` VALUES ('36bd609c-ee30-0bc7-af21-5dc38cc8893d', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-06-27 15:53:36', 'c9bd89cd-1c22-0183-221f-b53837201712');
INSERT INTO `microchip_classify_log` VALUES ('36c086bd-37ce-21eb-cc44-52ee76638aa2', '0.56', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-12-27 22:18:52', '495c4141-27df-d425-b21d-9c15528e8798');
INSERT INTO `microchip_classify_log` VALUES ('36d99b88-dd3d-cefb-6335-3824c8546d9b', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-02-01 10:17:27', '54a91834-4a86-0348-6b84-9af3e164943e');
INSERT INTO `microchip_classify_log` VALUES ('36f3e7bb-3a7c-be2e-6443-42bbe9a60587', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-03-31 19:38:31', 'a6fe856f-f9e4-37b1-bc80-193f26248034');
INSERT INTO `microchip_classify_log` VALUES ('37213b52-fa0c-b19a-165e-c96c6390274c', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-10-01 06:51:31', '3f3d398d-fa06-8784-9053-5de7089cc5af');
INSERT INTO `microchip_classify_log` VALUES ('375fde03-32e3-40d5-7c71-b0b5476b2ae9', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-04-19 06:30:58', 'b6432154-b1fe-52c6-b3ae-c581212289e4');
INSERT INTO `microchip_classify_log` VALUES ('376d5d15-85c1-4a35-6d36-9e0510359f26', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-06-17 06:09:55', '4c75a3ae-f96e-38c2-c881-db9cec5ce8b6');
INSERT INTO `microchip_classify_log` VALUES ('37a53876-b5d5-d33b-b36b-c520e867f928', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-04-09 20:08:40', '7a3298cd-a9f3-5c63-c9bf-6c2bfd6ca37b');
INSERT INTO `microchip_classify_log` VALUES ('37b1c5ea-ae75-4a32-c774-ad6add4c7de6', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-02-08 02:41:34', '143450d5-c9ea-1d95-2fbf-a449d78d30b8');
INSERT INTO `microchip_classify_log` VALUES ('37c4e7a3-7936-d0e2-9aa3-1ec0e8c0d823', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-04-27 06:55:36', '86ae99d6-e274-5a6b-afc0-bb0c19ce183b');
INSERT INTO `microchip_classify_log` VALUES ('389225e8-bdf6-35df-1fc9-62266c8f6ce6', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2005-01-12 22:53:21', 'c9bd89cd-1c22-0183-221f-b53837201712');
INSERT INTO `microchip_classify_log` VALUES ('38a417b2-2b1f-fa51-c103-8a5e8130a7ba', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-11-19 12:12:02', 'e967941b-2c03-a41a-e6a8-a593a0460f3a');
INSERT INTO `microchip_classify_log` VALUES ('38a7a8d9-eabd-a5ca-3a50-54027b133c44', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-04-24 23:10:35', '09b583fc-35a7-15c4-3664-8aae521621b1');
INSERT INTO `microchip_classify_log` VALUES ('38d0b88a-592f-d31e-a901-8085b4b673e2', '0.64', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-08-26 00:11:48', 'f365c36a-a140-d53e-96fb-990ea4caf70d');
INSERT INTO `microchip_classify_log` VALUES ('3918c5b3-b94a-682a-93f2-83df8da7a8d3', '0.97', '0.91', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2004-09-25 01:19:25', 'c2b9535b-b9fc-0374-4125-7a5c24b653bb');
INSERT INTO `microchip_classify_log` VALUES ('392647af-7727-428c-1afa-73691a4c0c17', '0.36', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-12-05 01:57:35', 'dbba4b27-99ea-28a8-3ca4-0c0fba502d2f');
INSERT INTO `microchip_classify_log` VALUES ('393b0f8f-8670-4288-28e4-85a0d6095e3b', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-11-29 09:25:21', '82195fb9-dae9-96b7-7534-9e2c3d0164b1');
INSERT INTO `microchip_classify_log` VALUES ('396181b8-d0b0-dd1b-079c-3a7651f3cad7', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-12-07 09:11:02', '55e4f0da-56da-364c-7e83-bcd6748f7f26');
INSERT INTO `microchip_classify_log` VALUES ('399d703e-bb5d-23a2-338f-6566fb5ffe0a', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-12-28 14:27:28', '3661739f-c0ee-ec8a-ca5d-701b1bb54875');
INSERT INTO `microchip_classify_log` VALUES ('39dd8c69-7755-58c8-b38f-27246835fdab', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-07-17 02:58:37', '65d2f1ac-1c52-2910-b542-715e0d327f63');
INSERT INTO `microchip_classify_log` VALUES ('3a05ecb9-f053-4cc9-d84b-7ff517316529', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-09-06 00:47:10', 'aec849b3-e18d-5100-6325-3a829cbf2e52');
INSERT INTO `microchip_classify_log` VALUES ('3a24ec0a-f148-a474-586e-055249fdcfba', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-10-10 01:23:20', '6082a3e1-cb8a-b4e3-5a36-8a1507551a2e');
INSERT INTO `microchip_classify_log` VALUES ('3a2c7c01-027a-54ed-26b2-f0a9f03f22ef', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-01-27 01:25:33', '79193636-1bfd-5149-5062-6d2d5f8aefd4');
INSERT INTO `microchip_classify_log` VALUES ('3a3d6b05-1324-de33-e401-f40d51423437', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-01-22 19:07:09', '4c75a3ae-f96e-38c2-c881-db9cec5ce8b6');
INSERT INTO `microchip_classify_log` VALUES ('3a7fb2ce-9bcc-4f1c-0006-7994f49129a4', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-10-20 17:11:46', 'ccf643ad-631b-ead5-26e5-2d5a8859987e');
INSERT INTO `microchip_classify_log` VALUES ('3a9f8651-a0a6-ee85-c6df-12e3b26c74f4', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-09-08 20:05:05', 'afc34652-6389-9fa1-43da-cfb8c2022722');
INSERT INTO `microchip_classify_log` VALUES ('3acdf2ac-ca5b-6b0b-6c85-f60ea7a5a220', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-08-26 14:34:59', '9b718da8-4c3a-0c70-8751-b27f3067e356');
INSERT INTO `microchip_classify_log` VALUES ('3c1d574f-7b32-9743-a282-84f616ebdfba', '0.97', '0.92', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2006-11-20 17:10:04', '531b4110-fcaa-2206-d2c2-4d8e18d50731');
INSERT INTO `microchip_classify_log` VALUES ('3c33ff80-6a66-1815-c896-db075b70204c', '0.97', '0.97', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2021-12-11 05:05:04', '251ee713-6a32-19f0-3018-cb7677b5fa48');
INSERT INTO `microchip_classify_log` VALUES ('3c4b01a4-ebda-f935-1b89-6fb7e1a07055', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-02-09 19:38:15', '2be7437b-e04e-e053-3be6-842991991689');
INSERT INTO `microchip_classify_log` VALUES ('3c501c68-bed8-60d8-cb61-d2d97cb055bc', '0.03', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-01-14 01:57:55', 'e6198591-c086-4716-1ed6-ca42e00f5240');
INSERT INTO `microchip_classify_log` VALUES ('3c5fcee9-f235-7b13-a84a-2330c53c2fff', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-08-02 00:25:48', 'b60e9aed-09c7-7d0a-946c-a0a0f952033a');
INSERT INTO `microchip_classify_log` VALUES ('3c80cef0-40fe-469c-f50f-6cbafadf87e0', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-20 08:01:01', 'df7c97f7-3bf0-60f6-cfc0-1f6809815451');
INSERT INTO `microchip_classify_log` VALUES ('3c8fd236-ba0c-230d-c644-fd6d83648f8d', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-12-05 17:57:24', '8c6c7853-99f5-0258-3c4a-aec7abe03663');
INSERT INTO `microchip_classify_log` VALUES ('3cda56a5-db1c-1a69-fbb2-20cdb178a9da', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2004-02-29 09:02:00', 'b7f204c4-b7d7-4abe-a4a6-3a6dc5a7d5e1');
INSERT INTO `microchip_classify_log` VALUES ('3d144a39-572a-a573-5cf1-44097cf14153', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-01-25 22:42:28', 'ebeee2d8-3a56-5d89-36c8-9646a7a1cf2f');
INSERT INTO `microchip_classify_log` VALUES ('3d205856-9c2b-06c0-8c9e-ecffc121d64e', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-06-08 19:47:47', '1c7c2761-fa26-4cd5-ed04-ad3d6050ac04');
INSERT INTO `microchip_classify_log` VALUES ('3d7ce210-2cd8-b95a-eea6-24baf7df1ffd', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-04-08 00:56:42', 'fffcd95a-8d99-e14f-03ce-1083e8f292ba');
INSERT INTO `microchip_classify_log` VALUES ('3dbf9f47-5c90-548c-cd8f-267b0f8eacd6', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-06-13 10:49:42', '64efcec4-78ae-37be-0d23-e0285cecac5f');
INSERT INTO `microchip_classify_log` VALUES ('3e2db7ac-e373-ac45-f667-b1f7bca00c76', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-09-10 19:44:48', '48c2063c-170d-a8e8-a7a3-d042966f6677');
INSERT INTO `microchip_classify_log` VALUES ('3e711b22-1cd8-6694-7c98-9a3858eb4ad0', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-07-30 19:21:43', '0df87a77-ef10-6803-ce2f-01bdbf29d659');
INSERT INTO `microchip_classify_log` VALUES ('3ed80e87-529f-2cf9-27a2-24b7eda532da', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-03-22 04:21:14', '192997c2-03d7-c761-3556-485e850323d5');
INSERT INTO `microchip_classify_log` VALUES ('3f208adb-645b-64d8-8d43-8d72ea1ff026', '0.69', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-08-02 22:49:36', 'f27cd354-b26d-d9d4-8989-33d4e91888f4');
INSERT INTO `microchip_classify_log` VALUES ('3f214f53-7295-02e8-8a03-1b46da696b8b', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-12-12 03:40:42', '22eef1f5-e0fc-143a-3ae4-b2b2201fb320');
INSERT INTO `microchip_classify_log` VALUES ('3f2c5f36-ced5-13d1-a672-3f9948bc9268', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-11-14 04:30:14', '68625f6a-f7a0-a75d-cfaa-c89ab6d3df82');
INSERT INTO `microchip_classify_log` VALUES ('3f7a0496-782a-a143-cb11-7088fe26e78c', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-19 10:49:09', 'b324f2c0-8c43-a819-9249-6de663ba2419');
INSERT INTO `microchip_classify_log` VALUES ('3f9f73b2-4a75-904e-3cbc-9f749c019d33', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-04-06 05:59:03', '4f117bc2-2db7-6fa0-cf92-41d465cc0462');
INSERT INTO `microchip_classify_log` VALUES ('3facf8c3-3262-48c7-365b-3b3033e2ae82', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-11-10 01:29:37', 'f45eebd8-ec01-18ef-112c-258fa9c4f832');
INSERT INTO `microchip_classify_log` VALUES ('3fdfd5ec-21bf-100c-340a-7b1842353403', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-15 02:12:28', 'b836acc4-1279-20f0-99bc-1fe1efb23e68');
INSERT INTO `microchip_classify_log` VALUES ('3fe340d3-bec1-ee14-14e6-6aad9a4af53b', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-06-14 21:22:19', 'aec849b3-e18d-5100-6325-3a829cbf2e52');
INSERT INTO `microchip_classify_log` VALUES ('3fe92abc-5432-2d0e-7719-d41230a743d5', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-07-30 21:43:03', '03325039-452c-8be6-5112-b158e3efb6a1');
INSERT INTO `microchip_classify_log` VALUES ('4035f57b-8805-49d0-56cd-28e3eb7e3541', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-19 09:37:09', '9003c641-8ef8-ea20-6c06-232323b50ccd');
INSERT INTO `microchip_classify_log` VALUES ('404cf876-5c0a-b0d7-5b5c-6b48e24c1e52', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-03-29 21:35:27', '5dd736f7-64aa-3348-8c46-86a18d09d38a');
INSERT INTO `microchip_classify_log` VALUES ('4061176a-1ee1-3e04-7813-2193d029705e', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-10-07 05:47:59', '09ad1622-9dd6-edbd-8c99-c52f0d4ccd93');
INSERT INTO `microchip_classify_log` VALUES ('40af51b4-ce0f-a34c-0a4c-7d1f3f6be9f4', '0.23', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-05-09 07:52:14', '113ea8d8-776c-f539-24cd-b86bc5433419');
INSERT INTO `microchip_classify_log` VALUES ('40b2db1c-fac4-f422-90b5-51d9cd9d327e', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-10 18:49:56', '83e2568f-32a4-f42b-153a-7e4369efd9f7');
INSERT INTO `microchip_classify_log` VALUES ('414bc806-4376-aa7d-4020-ea237d049612', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-02-20 16:06:08', '0ac474cb-6da7-99fc-983d-f68fd6628007');
INSERT INTO `microchip_classify_log` VALUES ('4152907d-74ae-7108-a6b2-f49d4d7cd991', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-09-20 16:51:14', 'b2a8ba2b-d260-25b2-3735-661b4ed62208');
INSERT INTO `microchip_classify_log` VALUES ('4173fb5b-0bb3-6a07-59b1-7f363a62c303', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-05-24 00:43:52', '95ef8c7c-8b3c-c91e-96f2-ea26ee4730bd');
INSERT INTO `microchip_classify_log` VALUES ('418a756d-4054-dfe3-b9f8-6e5df7cae56b', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-09-07 00:40:52', '417e19dc-989e-f0e0-3033-3cca6329bc7a');
INSERT INTO `microchip_classify_log` VALUES ('41939aef-4922-9d50-cc85-2ef26a85dd9b', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-09-29 06:07:46', '90330f20-288f-13fa-c920-1df3c0f2f357');
INSERT INTO `microchip_classify_log` VALUES ('41b48261-1b5f-edcb-0f8e-9515045a4c54', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-12-14 15:53:58', 'fefe2b19-ca30-5fce-306e-703e4e539c47');
INSERT INTO `microchip_classify_log` VALUES ('431cf2ea-20f4-a895-3140-29443189e6fd', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-09-23 21:00:52', '09b583fc-35a7-15c4-3664-8aae521621b1');
INSERT INTO `microchip_classify_log` VALUES ('437ee2e1-8571-8699-a98b-4a5431497e20', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-09-28 11:19:56', '9f07379c-40d0-3194-73b7-60abe307da05');
INSERT INTO `microchip_classify_log` VALUES ('43d738b1-f053-65af-93e8-6b29606102e7', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-15 23:32:11', '70351f7b-2fec-5cee-2f2d-142ec8b2268e');
INSERT INTO `microchip_classify_log` VALUES ('44224e1c-51d6-d54c-2cac-90ff0ef340e3', '0.21', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-03-20 21:40:42', '8c859234-8e52-6bc6-9bcc-388f8fccd4f3');
INSERT INTO `microchip_classify_log` VALUES ('44a7a327-c175-eb14-9b45-f443891b9e48', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-12-01 06:37:36', '92038a15-3ff1-1ce6-4d78-6a904438cd46');
INSERT INTO `microchip_classify_log` VALUES ('44c19139-43a7-2dac-7059-3eda43354eab', '0.29', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-10-28 01:25:19', 'bde499b9-e9c1-ceea-96ad-ea852a72502d');
INSERT INTO `microchip_classify_log` VALUES ('44ef792e-6153-be9c-74f7-e06909eff349', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-07-14 18:56:32', '631cb430-00cf-05bc-2052-2121cbbacfe5');
INSERT INTO `microchip_classify_log` VALUES ('4502de76-53ca-7863-7321-5d900d83f938', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-07-21 12:10:49', '9ff0bb35-3acb-3506-9aee-4f6e21118ecb');
INSERT INTO `microchip_classify_log` VALUES ('4521cd29-0153-0344-e239-a02f14a93b2a', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-02-15 23:15:30', 'afc34652-6389-9fa1-43da-cfb8c2022722');
INSERT INTO `microchip_classify_log` VALUES ('454d4ba5-2e04-8119-ddec-fb47f4d1d7e4', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-12-09 06:29:26', '0edbc140-c349-abe0-3872-5472dac3742c');
INSERT INTO `microchip_classify_log` VALUES ('4593ca0e-1157-7a4c-2db6-fdca42147f28', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-06-04 07:22:50', '6dbc7343-f254-db6d-8dc1-7f4633a0c55e');
INSERT INTO `microchip_classify_log` VALUES ('45b31faf-89ef-eb08-44c7-65058a324a51', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-05-18 06:58:36', 'f32ae703-e50e-cd33-a36d-91356e916deb');
INSERT INTO `microchip_classify_log` VALUES ('45b802a2-60b9-e3fe-6a85-f5381078f4e9', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-11-08 01:11:42', 'f5fdc683-0d24-1ae0-3237-b5cf32ea6bfe');
INSERT INTO `microchip_classify_log` VALUES ('45c41571-43c3-5194-a82d-183d98e8556a', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-12-13 13:37:41', '2ccb6b14-9e0b-ffee-2a7f-0abee483bbbc');
INSERT INTO `microchip_classify_log` VALUES ('45da38dc-91aa-1542-3da0-de2dbaa68bd9', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-09-15 17:26:01', '2376868c-8e2b-2916-cd0a-ef8f95a2b91b');
INSERT INTO `microchip_classify_log` VALUES ('45f4f686-3543-2378-ea37-552f5130a51a', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-07-18 02:44:14', 'd5f21b6b-68c2-b5c0-e61d-4e71fa009f70');
INSERT INTO `microchip_classify_log` VALUES ('460982ea-e4dc-ac7b-c68c-aac5289dcfcf', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-04-08 21:20:44', 'bbfd7f40-1385-ebc2-d83e-c69971e4b2b2');
INSERT INTO `microchip_classify_log` VALUES ('461b6113-decf-39a9-56c5-2bd9ac932ed8', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-12-24 13:57:51', '0f1118ac-65e2-9cec-7211-3bd27371dc1f');
INSERT INTO `microchip_classify_log` VALUES ('46542e08-56bd-0c23-b1a4-a3e400636c37', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-06-01 15:09:45', '503d4b39-54d0-558d-c4d2-be13bfafc237');
INSERT INTO `microchip_classify_log` VALUES ('468ce6db-e525-9cc8-44e5-469e77741859', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-20 11:22:35', 'b2a8ba2b-d260-25b2-3735-661b4ed62208');
INSERT INTO `microchip_classify_log` VALUES ('46d51aa6-f3de-20e6-2b6e-f470b4e336b3', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-06-17 19:40:23', '80392d8a-32a6-3f0a-2cdc-c9816430c90a');
INSERT INTO `microchip_classify_log` VALUES ('46e32df7-14f3-242d-484a-7f8786e46490', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-12-29 23:25:08', '4c75a3ae-f96e-38c2-c881-db9cec5ce8b6');
INSERT INTO `microchip_classify_log` VALUES ('473df599-0c78-f602-8d8b-952d1068592a', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-07-02 09:42:03', 'edf221bc-2be1-9357-5f43-b28fd416a736');
INSERT INTO `microchip_classify_log` VALUES ('482d0941-d03f-a2c7-36a5-91621bd55caf', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-06-30 03:32:41', '4d44c8b2-3c39-011d-496c-d737adb49435');
INSERT INTO `microchip_classify_log` VALUES ('48c701f9-7bc0-132f-b5b9-e15658cccd7e', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-04-12 20:22:04', 'c0652e8c-da3e-272a-bef3-c9253ed5af6b');
INSERT INTO `microchip_classify_log` VALUES ('48dc606e-ab35-7cee-ebf3-76168984d2a0', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-10-19 14:30:42', '37fdeb0a-2b8a-22b3-ef21-84e4849efdf8');
INSERT INTO `microchip_classify_log` VALUES ('4900f1e1-685e-8b3f-00f7-7fed0cc7ac83', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-03-07 23:05:16', '35342983-ff29-4858-32f8-1a84f2f17fdc');
INSERT INTO `microchip_classify_log` VALUES ('4900fe44-5234-d456-1203-a4975fb5d49c', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-10-14 15:30:13', '55a13511-c137-0fc4-8da1-1e7c9c699aaa');
INSERT INTO `microchip_classify_log` VALUES ('4904ce23-c044-118d-b047-c009af0b2d25', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-04-05 01:23:46', '0270ea0b-e82b-b545-52f3-b88dc8d22eaa');
INSERT INTO `microchip_classify_log` VALUES ('4921316a-6b2f-b6a2-2aeb-ed3026f1b46b', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-07-22 04:58:23', '4f21b631-c644-9d98-43fc-6e0ef9b261a2');
INSERT INTO `microchip_classify_log` VALUES ('492f69be-6d10-e471-5cb7-3643eda3a40b', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-11-15 04:34:23', '9f6b225f-0f59-c907-268f-ddfa33b08363');
INSERT INTO `microchip_classify_log` VALUES ('49779a9c-9e61-c894-02a4-b272a4d59f52', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-18 04:02:08', '495c4141-27df-d425-b21d-9c15528e8798');
INSERT INTO `microchip_classify_log` VALUES ('499ca57d-79db-6ec9-e9cd-5bc237bc453a', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-07-11 22:32:19', '95a77475-0aa0-8cb2-fd1a-d0be6d656672');
INSERT INTO `microchip_classify_log` VALUES ('49c809a6-07fb-f3fa-bae1-7276b21fae41', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-07-02 19:36:36', '6409d4d2-f768-0545-abd0-173000986ebd');
INSERT INTO `microchip_classify_log` VALUES ('4a14cb2d-0668-3458-5353-187bba6c3541', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-01 00:56:07', 'a6fe856f-f9e4-37b1-bc80-193f26248034');
INSERT INTO `microchip_classify_log` VALUES ('4a4b4964-dc2f-37d7-e988-48ae998bb027', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-07-31 18:59:19', 'fa37a54c-511b-9403-c9af-93c98fe7354a');
INSERT INTO `microchip_classify_log` VALUES ('4b156a8e-8ff4-fa2f-31d2-063775d54b36', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-07 22:57:16', '3bbd938e-a49b-36c5-0618-db948cf3cae2');
INSERT INTO `microchip_classify_log` VALUES ('4c17cfce-9ae5-e85f-ca06-39fcb01a9838', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-05-19 23:10:13', '8c6c7853-99f5-0258-3c4a-aec7abe03663');
INSERT INTO `microchip_classify_log` VALUES ('4c4e7fb9-0ebb-5afa-4d8b-6a9c74a7de72', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-07-07 15:31:03', 'f31753a6-2bea-686f-a8f0-d78c7c8a0c15');
INSERT INTO `microchip_classify_log` VALUES ('4cb89220-62e8-afbd-1c22-3cc846ad08bf', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-08-03 11:33:22', '317a541a-21e1-2093-6b5d-23a7abff77cf');
INSERT INTO `microchip_classify_log` VALUES ('4cc88f79-5f77-5085-fcdb-b126810a1fd9', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-10-27 20:06:42', 'd100e88e-c5e8-a682-e5cc-d12aec93a76c');
INSERT INTO `microchip_classify_log` VALUES ('4ce9a09a-dab5-fd8b-650a-a02f61c5e147', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-11-16 18:41:33', '9d526a98-19cc-40e2-ae5b-01161e5a0cdc');
INSERT INTO `microchip_classify_log` VALUES ('4df7e7d2-89e3-ba14-f937-82cefa778629', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-02-02 19:10:03', '3bafe2f8-1f57-e912-058e-011d1d1aac08');
INSERT INTO `microchip_classify_log` VALUES ('4df8ad44-fc3e-45fb-5eb2-89590ff045e0', '0.21', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-01-10 13:14:37', '4e5b8eb7-3cdf-67e8-0e20-769fe8451282');
INSERT INTO `microchip_classify_log` VALUES ('4e54fe1a-5853-7d5e-2595-a1c7abf93201', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-06-11 10:30:58', '1bf2f69c-fbf0-da8b-131a-abefa05c7766');
INSERT INTO `microchip_classify_log` VALUES ('4ec37472-7a13-80e0-addd-6578fa7f88e1', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-04-02 06:25:53', '35342983-ff29-4858-32f8-1a84f2f17fdc');
INSERT INTO `microchip_classify_log` VALUES ('4efefafd-bc1a-008b-a53a-77288326fc76', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-04-24 22:02:52', '9a88dd07-c0c4-7f91-adc2-dc85d8fb2476');
INSERT INTO `microchip_classify_log` VALUES ('4f7727e6-928c-2840-d423-dde61906e1ab', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-02-02 18:06:50', '2d110373-1527-cd35-6abc-f4ad7b3d4baa');
INSERT INTO `microchip_classify_log` VALUES ('4fab78d8-a3d4-1d09-fb8c-0c5d5efbb3ce', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-22 04:26:51', '3f455673-7a8a-262e-3fc3-618f2533dc52');
INSERT INTO `microchip_classify_log` VALUES ('50964789-efe8-d8c6-b54d-b22b9cf67e40', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-04-28 21:37:57', '58b1ee8c-d432-afec-4678-684d0d7f6ec0');
INSERT INTO `microchip_classify_log` VALUES ('5097b279-7bdb-67c7-d77d-e75ff4b2c39e', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-08-02 08:50:38', 'b836acc4-1279-20f0-99bc-1fe1efb23e68');
INSERT INTO `microchip_classify_log` VALUES ('50f81ff8-6e5d-6a4e-ccda-881370fdfa8b', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-08-17 10:30:52', '54a91834-4a86-0348-6b84-9af3e164943e');
INSERT INTO `microchip_classify_log` VALUES ('510698f9-a6a5-5329-b63b-d92b25b35182', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-06-29 05:39:30', '6e326e62-acff-3572-8cf7-cf3e91bcc1f2');
INSERT INTO `microchip_classify_log` VALUES ('51133aa2-e289-f63a-7049-9fbfc3a48031', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-12-24 14:00:45', '5875468d-74a9-abf5-8da9-2b483dfcd997');
INSERT INTO `microchip_classify_log` VALUES ('5125afdc-5291-6261-221a-d219d2e4c0ef', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-04-21 11:09:27', '5d9e02cd-a7b2-fbc9-ebc2-505595a7adb4');
INSERT INTO `microchip_classify_log` VALUES ('5126127b-9b56-c915-b240-0fa190170f22', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-02-04 16:15:07', '42825f32-fb05-a416-91a6-eaa2d8ac8db6');
INSERT INTO `microchip_classify_log` VALUES ('5154b058-3ed7-1d7b-6b54-e179490861ec', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-11-05 09:46:38', 'c2f11cce-e0ae-6c41-fed4-5ef81147a9f9');
INSERT INTO `microchip_classify_log` VALUES ('521ce8f1-ee02-cb4c-6635-0e866d2bf4a5', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-01-02 11:54:00', '34221ebf-488e-6702-9e9e-5d1233eab97a');
INSERT INTO `microchip_classify_log` VALUES ('523ac8ba-9787-01a1-e1e9-1c811ca7122a', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-01-31 07:59:41', 'fb5258a5-2000-7e7d-239e-284fe4450aa1');
INSERT INTO `microchip_classify_log` VALUES ('52915536-3694-2b86-71f2-57b38d429f11', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-04-14 22:15:50', 'acb64a9e-bd26-eb16-1482-2c00b9e4137b');
INSERT INTO `microchip_classify_log` VALUES ('52a0b585-ade2-db8a-ce47-cc6ec96004bc', '0.97', '0.99', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2018-10-27 18:34:43', 'ebc83891-ff14-280b-bb4e-43ea0e020cdd');
INSERT INTO `microchip_classify_log` VALUES ('531bbfc3-9973-b0fb-0d03-660957a8e466', '0.97', '0.95', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2004-02-13 22:41:13', '302bc1e3-7599-7a14-dff0-38ae39b06f63');
INSERT INTO `microchip_classify_log` VALUES ('532a93d5-fd54-87c1-4dda-3d39583d72f7', '0.41', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-10-24 23:56:14', '6096c8f1-9803-c371-ed7b-352cd4adf3c0');
INSERT INTO `microchip_classify_log` VALUES ('54b6feda-258f-a7ed-f525-561c66ecbd06', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-04-20 10:45:53', 'de3443cf-7d8e-39e3-2127-3eb69cf3beb1');
INSERT INTO `microchip_classify_log` VALUES ('54c40d63-2c91-4e97-29ce-1b03321c6916', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-10-04 13:57:12', '0b1fba6c-8ec1-43b6-0065-83e8baadf7a4');
INSERT INTO `microchip_classify_log` VALUES ('55292cef-2ce2-052c-c7f8-36da987c5e8b', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-06-24 23:58:46', 'caadddfb-967a-3b50-d5ca-a338a89f50e0');
INSERT INTO `microchip_classify_log` VALUES ('5588a658-631a-cefb-2601-aed30062b1a3', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-10-08 10:56:56', 'fe7fdf86-b67f-1431-0813-a814cbc11878');
INSERT INTO `microchip_classify_log` VALUES ('559b4488-d9a1-da8b-5d88-1e18b24b3e53', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-05-19 02:14:40', '6ad28d60-18e4-fe31-cfb0-b8e072852efd');
INSERT INTO `microchip_classify_log` VALUES ('55cbe12f-9d7e-8795-6e54-bd7bdc6bd963', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-05-02 20:22:42', '4b0efee6-0d14-0fa9-6a62-f1b167b2b512');
INSERT INTO `microchip_classify_log` VALUES ('55d40b62-1687-bed2-be15-d2edb03e50dc', '0.97', '0.98', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2015-03-11 19:39:53', '19238e1d-9e1d-ffc2-2c31-950e3a3302ea');
INSERT INTO `microchip_classify_log` VALUES ('56290435-7d2e-342c-8b23-5d2f3344c64b', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-05-19 13:50:01', '3f3d398d-fa06-8784-9053-5de7089cc5af');
INSERT INTO `microchip_classify_log` VALUES ('56443813-bd15-3578-2be0-042df01fbfff', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-01-29 01:29:02', '9e0763f3-8c23-fc64-ba8a-595eea4ca87b');
INSERT INTO `microchip_classify_log` VALUES ('5651603c-75b6-426c-0612-829116cbd334', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-03-15 09:50:40', 'c2f11cce-e0ae-6c41-fed4-5ef81147a9f9');
INSERT INTO `microchip_classify_log` VALUES ('568b1495-78a3-9ce9-e4c4-905f71f7cf8c', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-16 20:34:18', '2dba4c86-3b4c-3c47-3c9a-245154e8ee5f');
INSERT INTO `microchip_classify_log` VALUES ('56b14054-f11a-fd03-d5f3-4d7a85f5be5f', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-03-19 08:43:31', '917288af-869d-654f-419d-449364d2fcfb');
INSERT INTO `microchip_classify_log` VALUES ('57196656-b519-fb7a-2373-0dce5699e8fc', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-10-18 07:21:49', 'b6f35d45-b81e-74bd-70e9-661ef6802dd2');
INSERT INTO `microchip_classify_log` VALUES ('573d0dca-7959-ab62-618d-7c3ac6754ae5', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-05-28 15:20:04', '17cac8a8-365e-0a17-3014-6ac6e99a7bba');
INSERT INTO `microchip_classify_log` VALUES ('57848a03-06d9-3ccd-9b20-eaf40ff277f8', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2010-05-24 18:25:54', '9794c064-8955-5763-f9f6-54049bc969f0');
INSERT INTO `microchip_classify_log` VALUES ('578b4b7f-60a1-10dc-cec0-a423e86caef6', '0.58', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-03-04 17:19:56', '6e628110-2ae2-02d5-1eb7-8b8345cc81f1');
INSERT INTO `microchip_classify_log` VALUES ('57f81d9d-3318-48c4-f4dc-2fa4b242cdf0', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-07-31 18:59:26', '2e9ce4ca-4ac2-ca94-bfe7-2fb581dba172');
INSERT INTO `microchip_classify_log` VALUES ('581e490c-f6ec-e4cc-be6b-e56469a069c7', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-06-15 10:10:29', '8186582f-f85a-eae1-10b8-36b479b75329');
INSERT INTO `microchip_classify_log` VALUES ('59085123-0c96-0d93-9521-c59be73d6a73', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-11-26 09:47:12', '028d4c99-70f3-2000-7a10-10e2a7033ddb');
INSERT INTO `microchip_classify_log` VALUES ('591e13df-d5b8-3cd1-49fe-c4ec2ce8cf7b', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-10-01 05:54:36', '43b3aedf-5338-9eee-4f7d-09dea5189928');
INSERT INTO `microchip_classify_log` VALUES ('5981c818-411b-4517-5ac9-92fc76f0f297', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-11-04 12:16:59', '302bc1e3-7599-7a14-dff0-38ae39b06f63');
INSERT INTO `microchip_classify_log` VALUES ('59eab18d-77d0-cd7d-b6e0-15a8c2e815b8', '0.93', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-05-11 14:08:58', '803d9073-bfbc-606a-060e-343383640369');
INSERT INTO `microchip_classify_log` VALUES ('5a063acb-edce-3c50-ec85-dd73a551aa15', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-12-08 18:59:17', 'b65e83c6-85ed-f0ea-11bc-26cfd431e50b');
INSERT INTO `microchip_classify_log` VALUES ('5a31dea8-a2e7-0980-e9d7-b1f13e4ec6c9', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2003-06-29 22:41:51', 'b68d4ae6-c94c-deab-f0e3-05069d4a55a9');
INSERT INTO `microchip_classify_log` VALUES ('5a705529-99be-e134-9de2-54ecc5b69cf6', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-01-16 09:45:47', 'ddd21328-efc9-0148-7e05-be5b93e3c27c');
INSERT INTO `microchip_classify_log` VALUES ('5aa372bd-62f3-27d1-df1f-4616a02d7e3e', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-16 22:28:40', 'f4cfac09-c197-0048-3c15-e1f243908b62');
INSERT INTO `microchip_classify_log` VALUES ('5ab4cd50-3f82-fff5-6d7b-429828076f67', '0.68', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-01-09 01:35:40', 'ff98a7c5-eb74-9395-11e3-152778367fba');
INSERT INTO `microchip_classify_log` VALUES ('5b00a45e-c2bf-192f-3389-143df05d7e47', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-05-22 19:34:16', 'e1cea5fc-a0e2-e063-9f98-da99737db3f3');
INSERT INTO `microchip_classify_log` VALUES ('5bc506ab-53e2-0aa1-0ede-4fdc40c318f0', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-10-03 18:00:47', 'bd9c4c25-d1e6-18e0-94c8-dfe45529a502');
INSERT INTO `microchip_classify_log` VALUES ('5c022255-f206-e4b8-e6ac-963110424df6', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-16 03:22:00', '69c167d1-7879-a581-7a95-fc173ceb05ec');
INSERT INTO `microchip_classify_log` VALUES ('5c0852b9-f699-4572-e7a4-262ba481f5ed', '0.08', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-06-26 13:21:58', '30ae6430-8920-bd21-e41c-aeea251e434d');
INSERT INTO `microchip_classify_log` VALUES ('5c3d5b45-f019-b167-cb18-76c5e97ccda1', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-01-22 11:28:03', 'ad9e74e3-0ce1-c608-ce70-17d2c8ff7909');
INSERT INTO `microchip_classify_log` VALUES ('5cf4d302-661a-0190-e9b7-4361415999c6', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-02-25 16:02:06', 'beac9bc1-586e-23c8-3a5c-e0f098a85f30');
INSERT INTO `microchip_classify_log` VALUES ('5db26bd3-6961-6793-e7ec-fe234deb0f32', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-12-06 09:47:47', '6244f135-0a91-fff7-f4f8-efa6e8598d55');
INSERT INTO `microchip_classify_log` VALUES ('5df905a4-203d-842f-05b8-d925d97fa9f8', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-06-24 06:41:24', '50052cb6-9f20-ddbc-0af3-04495b4608ae');
INSERT INTO `microchip_classify_log` VALUES ('5e146cc5-70fa-3ade-1518-4aa02d7183f4', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-09-04 03:13:41', '604e5c04-01e9-4879-6b3a-4477ef07dcb9');
INSERT INTO `microchip_classify_log` VALUES ('5e18686a-3b3d-d551-1512-3ff8f138a5bf', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-07-08 23:19:06', 'af4201d5-c72a-738d-03bf-711bb3f5c2cd');
INSERT INTO `microchip_classify_log` VALUES ('5e8c8393-611c-d695-aa84-aba1d688a9c2', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-12-02 15:21:58', 'e93ad883-47fe-bf49-2c5f-2fba0da73bd3');
INSERT INTO `microchip_classify_log` VALUES ('5e93e244-e953-67b6-65dc-a9a9527dd0df', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-08-08 23:25:29', '9d95b751-5d07-ae96-8bd6-4a078df6d3fb');
INSERT INTO `microchip_classify_log` VALUES ('5ed2079d-6d52-dd91-7506-1d5b893b4d05', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-06-02 17:51:30', 'b5bcb33f-7d85-5126-15d8-026664ba4f1d');
INSERT INTO `microchip_classify_log` VALUES ('5efd27a0-54a1-3d42-6570-668a23796f7a', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-09-27 18:33:09', '3750bee5-e140-a9c4-ed2f-655513a5ba8e');
INSERT INTO `microchip_classify_log` VALUES ('5f2120d2-6ebb-a85f-aa42-42a8036411ad', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-17 08:29:17', 'f21e0772-198b-a005-7c15-aca805bd72b0');
INSERT INTO `microchip_classify_log` VALUES ('5fad3d46-1493-ef0c-9398-c4e306b7d6f6', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-03-29 23:34:40', 'b0cc7db6-7bab-e7eb-844b-829261e7cef2');
INSERT INTO `microchip_classify_log` VALUES ('5fcb314b-39ca-ec73-f112-29128c786be8', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2009-06-28 08:20:19', 'bf9b872b-e3bb-e04e-4d8d-5eaeeedfcf6f');
INSERT INTO `microchip_classify_log` VALUES ('608016d7-1bc9-8cf3-ebc4-993f61d9f05b', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-08-09 18:02:44', '9c8784b5-cfdc-4a67-742c-5c6816680a87');
INSERT INTO `microchip_classify_log` VALUES ('609d612c-5563-717c-6089-4d5baed9c9e7', '0.97', '0.91', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2022-04-05 11:24:37', '28fa47cf-df5b-a145-efce-381734432875');
INSERT INTO `microchip_classify_log` VALUES ('60ed78b1-f3c1-26af-9f3c-0d85a6c7e9d7', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-01-09 14:50:43', 'a39a217d-c43f-ae14-ea41-7537e8f4f442');
INSERT INTO `microchip_classify_log` VALUES ('6111fd7f-b7b1-39e9-7406-657ad3b26c30', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-10-13 03:21:49', 'd0098d40-a64e-0b3f-2034-ce4dc7a5e7d4');
INSERT INTO `microchip_classify_log` VALUES ('61701f49-5f19-2eb2-893e-b85635cdb13f', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-07-17 18:26:55', 'c9c030dc-0f5f-a42e-e51f-68cf6451fcd3');
INSERT INTO `microchip_classify_log` VALUES ('6180239b-a4e0-cc36-425b-2b36d5046909', '0.59', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-07-10 18:39:37', '3dd82449-5e07-199e-d13f-a6eb17f7ec75');
INSERT INTO `microchip_classify_log` VALUES ('61a8c998-0827-b5a2-5e2e-e7b84c525715', '0.32', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-05-13 13:42:44', '7b1b3c18-1b8d-e229-e9ea-5dce5ae7fed5');
INSERT INTO `microchip_classify_log` VALUES ('627f70b0-bcd0-9c46-cf42-7c210408d5cc', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-18 16:34:03', '4f117bc2-2db7-6fa0-cf92-41d465cc0462');
INSERT INTO `microchip_classify_log` VALUES ('6295fa99-3b17-6881-add4-924e6dd06bee', '0.01', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-05-22 12:44:26', '4833609b-cfb0-807b-6d66-f471ac4cff05');
INSERT INTO `microchip_classify_log` VALUES ('6311a90a-74a2-a89f-6b70-eb5bd2e940d4', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-12-07 04:12:01', '36ab4037-79c3-84c6-cf87-c16e87aaf744');
INSERT INTO `microchip_classify_log` VALUES ('63b570a6-144e-5076-2105-ab28f48b90cd', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-03-16 03:14:29', '7844810f-3a8d-7d1e-012c-c5d1189f1a6f');
INSERT INTO `microchip_classify_log` VALUES ('63df2db3-e4af-1d31-7388-5ad87f20a4f8', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-04-04 06:15:49', '3c883202-8968-d70a-baf7-5fe5c16d1dc4');
INSERT INTO `microchip_classify_log` VALUES ('6439d431-5495-3c3d-b6aa-112ab6d0e8e0', '0.22', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-11-19 07:14:28', 'f615b6ef-dcfe-b8d5-284e-484d6f11c03e');
INSERT INTO `microchip_classify_log` VALUES ('6444402a-8f06-1a4e-fbb1-01dc850c3781', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2022-11-15 11:43:27', '07f0ece8-3116-6296-4413-16e59504a4c8');
INSERT INTO `microchip_classify_log` VALUES ('64c75f92-c19b-a5e0-4834-91d78f081bc0', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-02-28 05:39:25', '6ab22971-1c3a-0727-608d-e74be7e84462');
INSERT INTO `microchip_classify_log` VALUES ('64eb8848-41a0-8595-0153-a74cff71da84', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-05-16 15:06:29', 'c13a6785-f4ce-6164-3013-31f6f95dd921');
INSERT INTO `microchip_classify_log` VALUES ('651bbea3-6a12-a512-55e3-53f2edc8348e', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-04-03 05:49:05', '3d3f4341-48e7-b05a-fe91-a25d72068f4e');
INSERT INTO `microchip_classify_log` VALUES ('651c1624-33d5-e76e-276f-d10af1055861', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-09-23 06:15:14', '42825f32-fb05-a416-91a6-eaa2d8ac8db6');
INSERT INTO `microchip_classify_log` VALUES ('658f19ba-a8e9-50e4-806c-3fa51145949a', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-12-29 01:22:14', '342fe3aa-ed5b-0b13-569c-976050a54b92');
INSERT INTO `microchip_classify_log` VALUES ('6593d4be-29f5-7866-529b-9298817160f8', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-05-16 03:45:12', 'b09eb1ff-0bb4-4ea2-e117-7127e0e0e9a3');
INSERT INTO `microchip_classify_log` VALUES ('65ca22e1-d48c-5bb2-1a16-75cdeb1ecaf1', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-03-11 05:43:20', 'f2bfefc3-b541-377f-7bf7-9504b586f43c');
INSERT INTO `microchip_classify_log` VALUES ('65de5be7-70d6-6724-c18e-119d162c7dc1', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-05-26 12:03:26', 'fefe2b19-ca30-5fce-306e-703e4e539c47');
INSERT INTO `microchip_classify_log` VALUES ('65ff8223-800e-2a14-63b1-12c1f31e5cff', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-08-14 18:59:17', '8fe87b7b-3306-9dba-a2b0-8440761eccd9');
INSERT INTO `microchip_classify_log` VALUES ('669df3ef-d150-60c4-1ec8-b9969892cd1d', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-08-01 17:39:45', 'a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf');
INSERT INTO `microchip_classify_log` VALUES ('66b30e5f-6ba1-7ce1-6484-497f0e86c310', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-10-25 12:46:57', '743c6db4-4adb-6291-62d3-0f1100ac5503');
INSERT INTO `microchip_classify_log` VALUES ('66d12854-23ba-311d-62aa-8ca0a7ed1526', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-06-30 07:09:03', '84eaaca3-6bf5-a8d5-9b27-776f8728275c');
INSERT INTO `microchip_classify_log` VALUES ('66d504ea-4c0f-4a94-f621-1293c2e6aa1a', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-10-10 17:56:25', 'd1af995f-4435-dbc2-bd29-07a273087f5a');
INSERT INTO `microchip_classify_log` VALUES ('66dcfe31-02c8-9a5c-be88-1916d45b2347', '0.06', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-04-20 16:43:22', '63ff88d9-b00b-2821-02e0-8f672f0b00b4');
INSERT INTO `microchip_classify_log` VALUES ('66f3934c-3de4-30b1-3413-91397649f837', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-03-31 13:57:46', '2c5f5246-4383-a995-922b-ce126d8fcf7a');
INSERT INTO `microchip_classify_log` VALUES ('67be45e0-9a0f-36fb-0e93-74fa65685475', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-04-24 14:48:37', 'a9a51e5f-5217-731a-5844-7b14f932b8ae');
INSERT INTO `microchip_classify_log` VALUES ('67dfb4b9-886e-415c-4595-4f4d9bb65f02', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-04-08 11:48:47', '371864e3-8457-5339-891b-5f03633ff6de');
INSERT INTO `microchip_classify_log` VALUES ('6876a04a-71e5-3eb3-6ad9-8df39ddf978e', '0.23', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-02-06 17:57:07', 'd2d5e57e-40e7-93a5-aa55-dc4046f01d2c');
INSERT INTO `microchip_classify_log` VALUES ('687b09b6-b695-d09b-cd03-0a2933b25047', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-11-25 09:31:24', '393f0815-87cf-1a02-eb94-fcdec3cdee42');
INSERT INTO `microchip_classify_log` VALUES ('689953db-44b3-f837-50e4-26af76cfd84a', '0.96', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2017-08-01 17:51:41', '9bb34087-4782-b896-5217-7f50b5e8f003');
INSERT INTO `microchip_classify_log` VALUES ('69937dfe-d96a-b401-59e5-e6e92be036b8', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-07-07 01:28:48', 'fffcd95a-8d99-e14f-03ce-1083e8f292ba');
INSERT INTO `microchip_classify_log` VALUES ('69b20ca8-6e85-0bb3-7035-fdd64f5ffeb4', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-05-07 03:06:04', '57d9294f-217f-4511-96f8-ad72634abfdf');
INSERT INTO `microchip_classify_log` VALUES ('69d76123-0d38-312a-50a8-627840eeee4d', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-20 01:50:02', 'ebe90c92-7d86-e0ba-ef33-c17dd2b3e2a0');
INSERT INTO `microchip_classify_log` VALUES ('6a5a329e-aef8-da36-15d1-06c7da83d215', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-04-02 19:20:04', '9e520339-956b-cc23-adca-e1edbbb21665');
INSERT INTO `microchip_classify_log` VALUES ('6a67d81f-295d-0532-51dc-6a3763663c88', '0.00', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-10-28 17:09:54', 'df1fcd4b-7707-bb52-3098-2711fc51fbd2');
INSERT INTO `microchip_classify_log` VALUES ('6a7076ed-12d1-d3de-81df-51e12d331157', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-06-27 06:11:18', 'd4e13fce-bd56-c0c6-4de4-cd915af37fcb');
INSERT INTO `microchip_classify_log` VALUES ('6b29d921-e339-b31d-2add-d6d3ae061300', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-09-10 08:21:13', 'c2b9535b-b9fc-0374-4125-7a5c24b653bb');
INSERT INTO `microchip_classify_log` VALUES ('6b56c4cc-e40a-70da-f73f-da0746fa9e49', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-10 21:46:56', '45e95ffa-3f65-5a76-5ff0-01b3c4dd41c7');
INSERT INTO `microchip_classify_log` VALUES ('6b8cb1c8-e9c1-e676-5483-ee99b081f392', '0.06', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-05-10 17:37:23', '19238e1d-9e1d-ffc2-2c31-950e3a3302ea');
INSERT INTO `microchip_classify_log` VALUES ('6b904351-df12-aa0f-3f97-2bccdfa201a0', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-11-03 01:31:40', '6244f135-0a91-fff7-f4f8-efa6e8598d55');
INSERT INTO `microchip_classify_log` VALUES ('6c3a7a3c-5a02-160d-b659-2172fae5a06a', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-02-01 19:01:05', '795f70f5-9398-5a7a-f23b-69badb2f9968');
INSERT INTO `microchip_classify_log` VALUES ('6c64e04f-925a-dbcd-0a28-d7c11ac64196', '0.94', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-08-07 14:26:15', '450b765b-89c5-5a6c-ac8b-b2ecf4b5d2b4');
INSERT INTO `microchip_classify_log` VALUES ('6c9f1cd6-5c66-ee97-2449-1b4a98493743', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-06-29 06:01:49', '8cfafa28-b536-546d-0a48-c3fb53e8963e');
INSERT INTO `microchip_classify_log` VALUES ('6cbb15d3-3acb-b235-0a3a-9a0ff0eaa4c6', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-11-24 23:50:15', 'b4867457-3996-b9dd-bdb1-58ace798f47e');
INSERT INTO `microchip_classify_log` VALUES ('6d7cc534-18b8-44ee-0f3d-b0c4568011f3', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-10-10 04:28:58', '483d0fbe-0a24-80a6-a64c-04ae6a79988f');
INSERT INTO `microchip_classify_log` VALUES ('6d970f86-493a-4782-d6f4-15cdba6caf2e', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-06-08 15:09:50', '604e5c04-01e9-4879-6b3a-4477ef07dcb9');
INSERT INTO `microchip_classify_log` VALUES ('6dc23bc5-b64e-25a9-42fe-cf5f5023e1f4', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-05-23 11:48:17', '6409d4d2-f768-0545-abd0-173000986ebd');
INSERT INTO `microchip_classify_log` VALUES ('6de0594e-7a3c-9a3f-614c-44a1cc6044eb', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-01-01 01:58:23', '9a575c61-883f-e0b4-b47c-d8b94ba3d400');
INSERT INTO `microchip_classify_log` VALUES ('6e1b48ec-f97d-0cae-2ca9-0cca449640a7', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-06-29 22:36:13', 'cc28697e-f698-b29a-381e-00a55df68f4f');
INSERT INTO `microchip_classify_log` VALUES ('6e353041-f7a7-db41-29aa-8d1a01e8d1a1', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-10-12 21:02:23', 'f5b0146a-0cfc-53bc-cdaa-23399b35c6a3');
INSERT INTO `microchip_classify_log` VALUES ('6ee003a9-d944-3efd-7680-c7995c961239', '0.19', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-10-19 09:29:11', '85e230e8-5c2f-7778-979f-bb203e1516df');
INSERT INTO `microchip_classify_log` VALUES ('6ef36748-eba9-738c-e3f1-98af0c7e37e3', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-09-21 14:24:09', 'a780fee6-a0ec-d953-e2c9-2af0d5f1f020');
INSERT INTO `microchip_classify_log` VALUES ('6f5de252-061b-894d-4884-754fe61c43ee', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-05-12 19:59:28', 'f2464487-d89b-4f1e-befa-c73261bf2cc9');
INSERT INTO `microchip_classify_log` VALUES ('6fc1174f-c887-29ad-8cc6-d3869493fb9b', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-05-30 04:08:07', '6760cf06-ae31-9d90-3a83-8421e9a36045');
INSERT INTO `microchip_classify_log` VALUES ('6ff4a48c-330b-66c3-6f3b-6bf9ad263363', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-07-06 13:06:35', '48ecbcfe-5178-1d7a-797d-efd9c55a70b8');
INSERT INTO `microchip_classify_log` VALUES ('70046d46-df01-92ff-357e-9ad9c03dfbd5', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-09-26 04:40:35', '9d95b751-5d07-ae96-8bd6-4a078df6d3fb');
INSERT INTO `microchip_classify_log` VALUES ('702e3644-3817-bbb3-66fd-6a087505293e', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-08-26 08:25:50', 'f82362d0-a7af-e9f8-af9e-41a0ffa6847e');
INSERT INTO `microchip_classify_log` VALUES ('70abd281-230f-7385-0cec-f7ad397444b3', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-10-24 18:01:35', '624cdaa5-fdde-9cab-078a-fa0bb91c9645');
INSERT INTO `microchip_classify_log` VALUES ('70beae5c-d38d-b6b2-30c8-27b9750e7233', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-06-22 03:33:43', '45e95ffa-3f65-5a76-5ff0-01b3c4dd41c7');
INSERT INTO `microchip_classify_log` VALUES ('70f22b1d-e5da-62e6-4bcd-d983477d8768', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-04-11 13:28:48', '46f37862-7a80-2ab1-3b15-f8993087a780');
INSERT INTO `microchip_classify_log` VALUES ('7120e43f-1ec2-c868-42b5-d56b4630f303', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-07-05 14:00:10', 'f19c5790-8fbb-d20a-20db-883a19ecdd40');
INSERT INTO `microchip_classify_log` VALUES ('712f1747-cf1d-e7cf-fb33-eefe9a37a896', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2017-08-19 00:06:57', 'c5c45c13-8eb3-6ff8-32bf-98db4cb06992');
INSERT INTO `microchip_classify_log` VALUES ('71552ec5-5af8-46e2-cc3a-98cdad136be4', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-05-07 16:10:43', '38a4b2b8-152c-bf48-c189-ea53c01e438b');
INSERT INTO `microchip_classify_log` VALUES ('717a4604-7473-b173-8d19-18bf4b89fe61', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-02-13 13:56:36', 'be8c330c-9beb-57dd-9278-5f46c45cb82b');
INSERT INTO `microchip_classify_log` VALUES ('71c2c3f9-ac61-a86f-f81e-6f1758192da7', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-07-01 13:14:41', '73a777d5-3f98-7886-0887-3b6f51b50d58');
INSERT INTO `microchip_classify_log` VALUES ('71ffefbe-e663-e8aa-a20c-20d4823dc7c8', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-07-24 20:51:49', 'aa955953-2e00-c2d9-67ac-86370c13775d');
INSERT INTO `microchip_classify_log` VALUES ('727bffd8-f31d-c9fb-859d-44e6f32880db', '0.47', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-30 11:57:12', '8edb09c7-3485-7491-cd75-b1d9aba0f459');
INSERT INTO `microchip_classify_log` VALUES ('72deee5b-ed64-4f6a-9ead-5d0dd7ef3af0', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-01-27 17:02:21', '663f84ba-74c2-4264-49e1-5e9e436296d0');
INSERT INTO `microchip_classify_log` VALUES ('72e6b82d-cbeb-0e06-9b5f-50ca612b0da2', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-01-14 11:25:39', 'a3c1f5d3-6164-6eff-fa9c-d988dcba65aa');
INSERT INTO `microchip_classify_log` VALUES ('736a419f-3316-493a-9584-ea1b9401651c', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-04-19 23:40:51', 'fe872847-a502-9e5b-f000-533bfa0a0c67');
INSERT INTO `microchip_classify_log` VALUES ('7487294c-04c1-8c85-3e23-f22177add717', '0.19', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-10 02:35:34', '3bafe2f8-1f57-e912-058e-011d1d1aac08');
INSERT INTO `microchip_classify_log` VALUES ('74b7d8eb-27c5-6cc9-a2a5-f1c9793d4fbf', '0.97', '0.90', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2018-04-07 13:41:46', '3dd82449-5e07-199e-d13f-a6eb17f7ec75');
INSERT INTO `microchip_classify_log` VALUES ('75a8174e-c752-028a-d554-20afe3c9a056', '0.67', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-04-07 00:15:35', 'caadddfb-967a-3b50-d5ca-a338a89f50e0');
INSERT INTO `microchip_classify_log` VALUES ('75ba2f7f-c0cb-30ef-ee4a-b72ac6eb275a', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-10-28 11:30:10', 'aa955953-2e00-c2d9-67ac-86370c13775d');
INSERT INTO `microchip_classify_log` VALUES ('7619e84d-a919-577c-5ea6-d3cee213eef2', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-02-02 16:06:02', 'b24e7a13-50ac-2051-8d11-f0bd7c17565f');
INSERT INTO `microchip_classify_log` VALUES ('767f1a02-0654-fc4e-ff16-4998d07591e7', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-07-11 23:17:57', '25010fe8-4e0e-06f2-789d-b32cf65ef24e');
INSERT INTO `microchip_classify_log` VALUES ('76894185-b175-3ac8-1073-de5460a69e6f', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-11-13 06:30:12', 'f41d28e5-35c2-fce8-e402-bbe36ed489a6');
INSERT INTO `microchip_classify_log` VALUES ('768b064c-c013-aaf9-0413-8b1e644893ca', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-07-30 10:33:25', 'cfcfd771-37b1-f364-2c9b-7e4418cbd5bd');
INSERT INTO `microchip_classify_log` VALUES ('76a2232b-f56f-cab1-6a22-9f3059c5902c', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-02-09 16:18:19', '976f43bf-89e9-7513-3e02-19a89c9c6e62');
INSERT INTO `microchip_classify_log` VALUES ('76bc13eb-56ea-f0a3-9181-8c602145d874', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-04-12 03:41:14', 'e98d040a-c57a-9ee5-67aa-2fbf202617e7');
INSERT INTO `microchip_classify_log` VALUES ('76be6865-498b-2601-dc0e-fdbece0d04f3', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-07-04 12:43:08', 'dec7e2f9-9864-eca6-25ef-420064fa344f');
INSERT INTO `microchip_classify_log` VALUES ('76efe8e8-0179-9e74-4725-c995174b8f64', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-12-18 13:18:42', '6565932e-3e00-c58f-e686-3c231055b89a');
INSERT INTO `microchip_classify_log` VALUES ('7761064d-f04a-ac08-385b-f721913903b4', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-05-16 02:51:00', 'b67eb11c-7ea2-ff9f-fd82-80f866d31b21');
INSERT INTO `microchip_classify_log` VALUES ('778dd9b8-9e2a-fe32-7902-015f90ec8f11', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-02-27 21:55:54', '245e442d-15b7-2321-70d4-648f6c8462f5');
INSERT INTO `microchip_classify_log` VALUES ('77ef273a-47b8-1317-67f0-f06e455ac9e0', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-21 23:21:26', '3a1fda26-5e1d-ed72-a1ef-2bf7c1b3b288');
INSERT INTO `microchip_classify_log` VALUES ('781cd0ed-1759-45c0-9b75-f0a72cdecf54', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-12 04:59:29', 'c7d301b3-ba04-2982-ef38-45fceae7092f');
INSERT INTO `microchip_classify_log` VALUES ('783f4c3e-b47b-b895-f81f-11c1d33a7348', '0.97', '0.91', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2002-03-27 05:57:29', '53eb059e-713e-2acf-eb36-8a8a9c49470a');
INSERT INTO `microchip_classify_log` VALUES ('7887da5b-1663-5ab7-cedf-01d964eaf6ee', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-03-02 17:04:43', 'c42eb726-0188-1764-c93e-a269d0cb1d44');
INSERT INTO `microchip_classify_log` VALUES ('78b334d4-6caf-daeb-acc0-6be25134affe', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-08-03 20:57:55', '22922a68-68dc-1b47-52f3-e5b270843fff');
INSERT INTO `microchip_classify_log` VALUES ('78e6aa9d-13a7-cc83-cf9b-852971977e19', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-02-22 07:42:41', '8ffcdfba-53a7-0332-030a-d0d35c266073');
INSERT INTO `microchip_classify_log` VALUES ('795bac14-e5f8-2316-870a-71dadc2b92dc', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-02-22 21:53:29', '663f84ba-74c2-4264-49e1-5e9e436296d0');
INSERT INTO `microchip_classify_log` VALUES ('799a69be-ba1f-4f52-887f-e6fd6dc8be6c', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-03-31 11:40:50', '81bf73a5-6568-0ceb-1f3c-c553037d521f');
INSERT INTO `microchip_classify_log` VALUES ('7a430575-8900-1ac5-d27c-ec4cca812f8a', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-04-17 19:15:59', 'f31753a6-2bea-686f-a8f0-d78c7c8a0c15');
INSERT INTO `microchip_classify_log` VALUES ('7aba19b7-f314-b868-e955-9dd1bd6b5868', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-12-17 10:48:17', '66ed698f-9338-9f7b-9c0a-f781d99ce7ac');
INSERT INTO `microchip_classify_log` VALUES ('7b318862-a7ce-8fc4-ee35-9b4bb57f53e6', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-06-26 16:05:36', '7096d424-9946-f523-6156-bc03a7ccfa28');
INSERT INTO `microchip_classify_log` VALUES ('7b3e553e-166f-e983-d9bb-ba5be1671b4b', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-06-29 19:17:37', 'fecd611d-4f64-c650-8cf2-90bbafa576a5');
INSERT INTO `microchip_classify_log` VALUES ('7c8b4f27-a659-ec1c-ec15-1493c12feedb', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-06-03 05:30:08', '9f80d0f5-d560-9384-5f02-d9e4fcd9d6c0');
INSERT INTO `microchip_classify_log` VALUES ('7d4dd3e2-b77d-7737-4568-6e9f813e4864', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-09-06 23:29:41', 'c1a572a8-4623-45c6-0065-a1a61e2df592');
INSERT INTO `microchip_classify_log` VALUES ('7d8b5f35-1668-afd7-f5af-542ecc656c8b', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-03-02 10:55:00', '7b26faf5-26f7-2132-1294-040d1548c547');
INSERT INTO `microchip_classify_log` VALUES ('7d93d8c8-b866-9639-490b-7389a482a04f', '0.97', '0.96', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2016-11-13 14:10:30', '4e5b8eb7-3cdf-67e8-0e20-769fe8451282');
INSERT INTO `microchip_classify_log` VALUES ('7dd6a94d-8e6a-4a85-a6d2-893fad145034', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-09-29 11:34:36', '8fe87b7b-3306-9dba-a2b0-8440761eccd9');
INSERT INTO `microchip_classify_log` VALUES ('7dff6030-c530-c492-702e-f0181fd272d6', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-01-12 16:53:48', '9e5ca11e-f187-91ed-0ad9-bf77e223157a');
INSERT INTO `microchip_classify_log` VALUES ('7e0fd636-cdc8-ef2a-a3b4-49f903f05ae8', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-07-30 05:42:35', '6835fba7-a8b1-e83e-eaba-4e320e50b8f3');
INSERT INTO `microchip_classify_log` VALUES ('7e70351b-5494-eae3-5344-429f476991c1', '0.92', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-05-05 22:17:34', 'fefe2b19-ca30-5fce-306e-703e4e539c47');
INSERT INTO `microchip_classify_log` VALUES ('7e99d0b4-e95b-6232-9928-66ef0dbd7f35', '0.51', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-02-17 05:21:09', '5b614e78-c88c-b5a1-99e2-9a2594b38f2c');
INSERT INTO `microchip_classify_log` VALUES ('7f3a894d-8477-9884-9861-2798487c68bb', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-11-04 07:04:33', '0df87a77-ef10-6803-ce2f-01bdbf29d659');
INSERT INTO `microchip_classify_log` VALUES ('7fa0cc27-3a19-0a40-4c44-301ba94a95da', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-03-31 10:12:26', 'be032611-3bad-18d5-fd99-37068a1aba62');
INSERT INTO `microchip_classify_log` VALUES ('7fe698e5-16d5-887e-414f-3f4c6ab9bd56', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-10-04 00:05:06', 'a92a67ff-349e-512b-2fc0-a03f09c7c23c');
INSERT INTO `microchip_classify_log` VALUES ('801aa720-8d2c-4577-d80e-a66a28a452ed', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-06-15 10:56:58', '976f43bf-89e9-7513-3e02-19a89c9c6e62');
INSERT INTO `microchip_classify_log` VALUES ('808cb461-8ac9-d128-9996-42aa9c56387c', '0.32', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-01-30 03:46:41', 'fe7ece18-ae66-3a81-3282-1282c572e85a');
INSERT INTO `microchip_classify_log` VALUES ('80acacb1-2b84-1ab6-5bf2-f71b7cdb25d5', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-03-05 18:51:43', '9f80d0f5-d560-9384-5f02-d9e4fcd9d6c0');
INSERT INTO `microchip_classify_log` VALUES ('80f045d1-dc73-de8d-92b6-b444e0d5eef4', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2007-09-05 14:06:45', '7c30f3a2-5471-7e38-6ac5-ecb60d556ded');
INSERT INTO `microchip_classify_log` VALUES ('82842173-4b1b-931b-b95f-bcec1df6238d', '0.97', '0.97', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2012-04-14 17:24:39', '5dc51344-0e41-3395-ebfa-62405941c533');
INSERT INTO `microchip_classify_log` VALUES ('82c16c25-03e5-7a9e-310a-5e4f0bf05552', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-01-20 10:46:37', '7a3298cd-a9f3-5c63-c9bf-6c2bfd6ca37b');
INSERT INTO `microchip_classify_log` VALUES ('83fb745d-40e4-7022-6890-0fa62ba2f13a', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-01-06 08:02:01', '23839abf-4e93-416a-7c68-c394e31e454f');
INSERT INTO `microchip_classify_log` VALUES ('841b5482-c61e-6f2f-4657-d3a694863c1f', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-09-30 14:02:44', '25010fe8-4e0e-06f2-789d-b32cf65ef24e');
INSERT INTO `microchip_classify_log` VALUES ('8434840b-86e2-2596-62d3-d63627e470b0', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2002-03-17 11:31:23', 'c0994229-70c3-5d85-7da8-0c5e93e42a85');
INSERT INTO `microchip_classify_log` VALUES ('84923c60-8d67-a7bf-b942-fc9c19ba05d1', '0.97', '0.91', 1, 'CQI-S-NG', 1, 'CQI-S-NG', '2016-09-21 12:59:59', '38ff1beb-5bdf-ae2b-c9ff-32d04618e4e4');
INSERT INTO `microchip_classify_log` VALUES ('851dc063-e12f-da08-03f8-ef94aefd305b', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-01-13 22:10:53', '9b7712de-0707-d0c6-ae65-48e0e5c42236');
INSERT INTO `microchip_classify_log` VALUES ('8526779a-d4ba-4b22-b507-2aa505eca546', '0.97', '0.93', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2007-10-01 00:52:57', '673f1a05-3aa7-09c6-2f29-b2cfbe91f215');
INSERT INTO `microchip_classify_log` VALUES ('852899a0-46dc-4142-9fc7-75e861cc0d7f', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-10-25 12:09:06', 'bd8c3e10-d040-6e71-e272-9127a366eb54');
INSERT INTO `microchip_classify_log` VALUES ('85c29e52-9e80-d9b2-c313-4fbae80c7905', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-03-01 13:01:26', '48926f09-20bc-100a-c77d-d83e50865f2e');
INSERT INTO `microchip_classify_log` VALUES ('85f0dcbb-26e5-c6a3-8149-8dc43af056b0', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-04-12 08:23:54', '9b598c6c-91d2-1ba7-bc8f-9ee2fdd3a042');
INSERT INTO `microchip_classify_log` VALUES ('85f7dd38-5e9a-31e8-f31e-5edfa825f783', '0.40', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-08-31 03:13:51', '57588683-d29a-c2e5-b461-741b0d82185c');
INSERT INTO `microchip_classify_log` VALUES ('86532f8d-c4fb-dad0-ce9e-a3cf9f4c67cc', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-02-06 03:04:27', '0270ea0b-e82b-b545-52f3-b88dc8d22eaa');
INSERT INTO `microchip_classify_log` VALUES ('865f0c27-a1fb-a72f-e507-a2b858eca439', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-09-29 23:57:45', 'e9deb631-61d4-bd34-bff5-e87546c9d044');
INSERT INTO `microchip_classify_log` VALUES ('86828f8c-d877-0ffa-c4fb-b69370aeea90', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-02-16 10:22:36', '0570e645-04d8-1ad2-f7f5-c71b8283ff53');
INSERT INTO `microchip_classify_log` VALUES ('86bb6e61-ced2-9dc0-c964-3ceb9895ae1e', '0.06', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-11-23 23:28:18', '1ad94d68-71eb-fac6-72e0-446d7949aebd');
INSERT INTO `microchip_classify_log` VALUES ('86f15c49-c309-d708-0e06-e925c0907621', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-03-17 13:02:45', '92ffb707-f1d4-7128-7e8d-8a529e47f010');
INSERT INTO `microchip_classify_log` VALUES ('8746314f-d1df-959c-96fd-5d5448ea7292', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-08-31 09:29:40', 'e30a128b-0458-e2e5-3a8c-80e5281f6464');
INSERT INTO `microchip_classify_log` VALUES ('8756b987-1a58-ec80-d6a3-46262838d2ee', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-06-24 02:06:53', '80392d8a-32a6-3f0a-2cdc-c9816430c90a');
INSERT INTO `microchip_classify_log` VALUES ('8781f706-f8f8-94fe-ec9f-2fe1a599a702', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2000-02-29 01:25:02', '75655d74-7a72-b425-8fc4-4eb5c37cf374');
INSERT INTO `microchip_classify_log` VALUES ('87a70bb4-2368-50a4-504c-761e33d5a875', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2003-08-28 10:33:19', '63ee9cae-c504-88b2-8321-d6344927cc04');
INSERT INTO `microchip_classify_log` VALUES ('88225561-9d42-ca2a-7c57-584e18de25b5', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-05-12 22:01:10', '4d44c8b2-3c39-011d-496c-d737adb49435');
INSERT INTO `microchip_classify_log` VALUES ('8840cf75-f048-38a5-71a5-85e05b9caa69', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-05-21 11:46:58', 'c9193ea4-29de-cfcd-8fb5-a93da7aaf565');
INSERT INTO `microchip_classify_log` VALUES ('8860fa69-d39f-182e-8ab9-7ebf5b65d0ac', '0.97', '0.95', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2004-08-27 08:37:30', '63dcc516-9ff9-0075-cd5d-01c117749d0c');
INSERT INTO `microchip_classify_log` VALUES ('88a6c1fb-3488-fd5f-d12f-6f4af3437a2a', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-01-18 14:33:35', '9334d98a-ca12-3562-623e-2b912736bdd9');
INSERT INTO `microchip_classify_log` VALUES ('88ea4e29-4f36-9e9c-bbe9-695fe3bbe824', '0.35', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-10-01 08:50:15', '64efcec4-78ae-37be-0d23-e0285cecac5f');
INSERT INTO `microchip_classify_log` VALUES ('890d5d2f-932a-2be6-0eb5-f496fb4750e2', '0.45', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-01-06 21:32:38', 'ae5640a2-c9ee-b279-d324-34e2f6352fd0');
INSERT INTO `microchip_classify_log` VALUES ('89b5c6f6-a129-7840-fe78-b7375b7d88af', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-06-19 16:55:04', '51c589b1-b30e-6b41-6ce2-6f6255afe9ed');
INSERT INTO `microchip_classify_log` VALUES ('89c10089-17e7-7926-e037-6fea2a4fc100', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-03-05 13:31:00', '9b5ae60a-1dd4-5845-1415-3dc56cb0cf3a');
INSERT INTO `microchip_classify_log` VALUES ('8a82ab01-80bf-1eb1-dacf-8507d426be4f', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-09-09 08:54:51', '04f8e2d9-e58d-0172-52eb-2aff91e1399f');
INSERT INTO `microchip_classify_log` VALUES ('8a8a950a-6450-8bd4-7c4b-242c0ccacdff', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-02-10 20:11:46', 'c7d301b3-ba04-2982-ef38-45fceae7092f');
INSERT INTO `microchip_classify_log` VALUES ('8a8dc979-6376-f33a-049f-98ee53664085', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-01-04 09:40:51', '4fec82bf-3552-4d9e-262b-f7b8640c8c97');
INSERT INTO `microchip_classify_log` VALUES ('8af32bee-b9f7-816c-1d2d-7df1ef962119', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-11-20 18:06:51', '44873696-421e-7486-756e-1fedd78634b3');
INSERT INTO `microchip_classify_log` VALUES ('8b9be3ee-ed89-178a-f133-21168b860c0a', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-07-13 03:54:50', '2b53ffe8-eb9a-fd95-4209-56bd538d82e2');
INSERT INTO `microchip_classify_log` VALUES ('8bfdeb6e-623b-ed03-879d-ff132145ae19', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-03-31 03:20:16', '631cb430-00cf-05bc-2052-2121cbbacfe5');
INSERT INTO `microchip_classify_log` VALUES ('8c3b4e76-e9db-0b91-07aa-e3f7d0267974', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-07-16 20:38:27', '47cb5447-decb-a211-343d-1aaab53fff48');
INSERT INTO `microchip_classify_log` VALUES ('8c79e18d-523c-1362-f09e-65b15e4fe3ae', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-03-10 13:56:02', 'c4fd3ab9-4834-3569-8c8b-ea5fa3e0a4fb');
INSERT INTO `microchip_classify_log` VALUES ('8c830a78-4529-1a52-2adb-32d7ecb26337', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-03-14 00:15:36', 'd4b05735-32eb-7d7d-82af-90f7bc65d3e5');
INSERT INTO `microchip_classify_log` VALUES ('8c86406c-6d76-5f6d-d3b4-9811343c9773', '0.46', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-03-09 08:48:38', 'cfcfd771-37b1-f364-2c9b-7e4418cbd5bd');
INSERT INTO `microchip_classify_log` VALUES ('8caf511d-bb3a-bd08-0fd6-971667d8b528', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-01-10 01:39:47', '99a655e8-f762-a78f-2c53-abc1608e7828');
INSERT INTO `microchip_classify_log` VALUES ('8d5e7719-2ece-511a-16eb-08019802e19d', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-04-15 01:07:35', 'ab265f6a-0a1b-2dc6-6dc0-bb00bdb0f92e');
INSERT INTO `microchip_classify_log` VALUES ('8dda98cf-6e39-46f2-e07f-7d07bd9c9b4e', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-04-10 11:10:28', '7c30f3a2-5471-7e38-6ac5-ecb60d556ded');
INSERT INTO `microchip_classify_log` VALUES ('8ded2037-d943-dfe8-64b7-cedb7404ca0d', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-09-24 16:47:54', 'a1c65fc6-9fbb-aa3c-029d-491ec0c98999');
INSERT INTO `microchip_classify_log` VALUES ('8e2f26a9-fcfd-e9a1-77a7-ef29f2887c6d', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-03-31 07:14:15', 'a4136c76-28a1-396a-1f73-a66e1c795c68');
INSERT INTO `microchip_classify_log` VALUES ('8e5e7a2f-5b90-605c-d7f3-7438e5d784df', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-12-05 13:48:51', 'e464f57e-7882-0f5e-64a6-83f2914f7fe5');
INSERT INTO `microchip_classify_log` VALUES ('8e692efa-2dfb-668c-c543-cbfa4386e367', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-05-05 21:45:49', '624cdaa5-fdde-9cab-078a-fa0bb91c9645');
INSERT INTO `microchip_classify_log` VALUES ('8ebd2c2e-cfca-627b-509d-70fe66a9d028', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-12-20 23:01:40', 'c06f59fc-18dd-2dce-88dd-55ad03844330');
INSERT INTO `microchip_classify_log` VALUES ('8ef39c87-a5ce-ac5a-ffe3-2a3f44cb5782', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-06-28 16:27:49', '2376868c-8e2b-2916-cd0a-ef8f95a2b91b');
INSERT INTO `microchip_classify_log` VALUES ('8f424a3a-65fe-db08-6597-3260559caa4d', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-01-25 19:15:22', 'edc5c31d-4804-6068-3d21-44b5291d3581');
INSERT INTO `microchip_classify_log` VALUES ('8f4510dc-175b-5179-81fd-2d832d210a5a', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-12-25 10:07:40', '4ddf9c24-c313-9a1e-b048-54cc26b0d397');
INSERT INTO `microchip_classify_log` VALUES ('8f7b3ca4-a507-6467-22b0-809860bb5500', '0.70', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-05-11 17:14:45', '2376868c-8e2b-2916-cd0a-ef8f95a2b91b');
INSERT INTO `microchip_classify_log` VALUES ('8f9562ed-0a84-05d0-7928-cd049caba246', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2003-07-20 12:20:18', 'b6f35d45-b81e-74bd-70e9-661ef6802dd2');
INSERT INTO `microchip_classify_log` VALUES ('8fea8429-4eca-6c26-1dff-5852a5436797', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-09-17 03:19:08', 'a30adb18-c7ff-e95b-b750-efc20c12c48d');
INSERT INTO `microchip_classify_log` VALUES ('910979f7-af86-3100-dafe-6a775b86dbbc', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2005-04-13 13:35:14', '019a4d0b-f6a8-bb5d-3eea-0de55b3bc83b');
INSERT INTO `microchip_classify_log` VALUES ('9118c21a-f5e8-b654-f187-9d761e790eb2', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-07-25 23:11:04', '34f2d8af-4b98-57f6-4a0f-03121afd3825');
INSERT INTO `microchip_classify_log` VALUES ('912f6a1c-675e-3fef-8916-35b3e1ee0574', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-10-18 03:02:01', '6ab22971-1c3a-0727-608d-e74be7e84462');
INSERT INTO `microchip_classify_log` VALUES ('917fabae-9179-b238-1cea-eca741ed8662', '0.16', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-12-01 12:19:22', '54d6db16-23ad-7910-4926-e1845df958a8');
INSERT INTO `microchip_classify_log` VALUES ('9189341f-4444-a194-3e39-17df371b20d3', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-08-31 17:04:23', 'e3baf096-e922-2b6c-992d-3c44acb890ce');
INSERT INTO `microchip_classify_log` VALUES ('91a825a1-9d64-d9b9-904e-894ea5b7fbe3', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-10 17:39:29', '3480304d-7000-33be-0821-a0f9c69e5e3b');
INSERT INTO `microchip_classify_log` VALUES ('91ba7fdd-7af4-5eaa-e870-072c41cb5666', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-04-16 15:42:41', '5e21175c-e452-3567-5c18-65b56c664d3b');
INSERT INTO `microchip_classify_log` VALUES ('91e2bc04-fa18-7075-dc0a-abc3a99a61cd', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-10-20 00:40:06', '71af0c9e-9442-0a4f-4f10-f22b4ec25d3c');
INSERT INTO `microchip_classify_log` VALUES ('928e8146-eb5a-4541-025c-907babe1949a', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-12-02 01:35:06', 'fffcd95a-8d99-e14f-03ce-1083e8f292ba');
INSERT INTO `microchip_classify_log` VALUES ('92fc8dab-637a-e6bb-4b2f-805a340724c9', '0.25', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-08-05 13:30:37', 'e967941b-2c03-a41a-e6a8-a593a0460f3a');
INSERT INTO `microchip_classify_log` VALUES ('93193941-bafb-6ff3-1ba1-f37b5a5db274', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-10-29 06:25:50', 'ce82f1ce-2302-20d3-8d05-ca234a75a360');
INSERT INTO `microchip_classify_log` VALUES ('93fecc92-6ae6-1d60-d303-ce1583221dc7', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-02-18 16:21:13', 'ed24b193-ccf5-ade1-3e95-d6910f312104');
INSERT INTO `microchip_classify_log` VALUES ('94176e1f-0c24-2506-f11e-fa5d25ee4c03', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-10-22 19:01:32', '8a721130-e408-2501-1a77-e0ee7ea017ab');
INSERT INTO `microchip_classify_log` VALUES ('941b1b97-eb50-1e18-16cb-3e4108e05a4a', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-03-01 21:49:19', '7b6b6197-0ba6-0347-dba1-1b38c110f4c4');
INSERT INTO `microchip_classify_log` VALUES ('9463c235-1a87-20b2-1b80-0f3214a51f4e', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-05-10 21:53:19', 'f5f676d4-f6d6-2b28-24c0-abe6fa668371');
INSERT INTO `microchip_classify_log` VALUES ('951a618b-9a97-bd38-6418-172dc2408656', '0.71', '0.95', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2007-02-14 20:34:47', '37fdeb0a-2b8a-22b3-ef21-84e4849efdf8');
INSERT INTO `microchip_classify_log` VALUES ('951a6c79-16ba-cbad-34b5-0822e32cf0f2', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-11-06 17:26:01', '539b5ea0-ca1c-73c5-e653-3a6e86c24851');
INSERT INTO `microchip_classify_log` VALUES ('95735e7e-536b-387a-90f0-5a7464763990', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-12-28 21:56:58', 'f3814646-864d-5763-5ef4-37228d041811');
INSERT INTO `microchip_classify_log` VALUES ('95aaf309-1cbb-49b3-0c78-199b648d3a8e', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-04-19 22:18:00', 'b0f36095-e4aa-6807-4e99-976470bca52b');
INSERT INTO `microchip_classify_log` VALUES ('962f3661-6fe3-425d-b638-44a147b53e6a', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-08-13 22:27:10', 'e98d040a-c57a-9ee5-67aa-2fbf202617e7');
INSERT INTO `microchip_classify_log` VALUES ('96628df5-b1db-c08f-426b-8393b5631f1f', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-03-28 15:23:32', '03325039-452c-8be6-5112-b158e3efb6a1');
INSERT INTO `microchip_classify_log` VALUES ('968adc72-8764-5ab7-0ec5-5ce94c523472', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-01-16 23:18:25', 'b3974246-741f-83a9-8a6e-0bb933230d3b');
INSERT INTO `microchip_classify_log` VALUES ('9701642f-b157-0afd-13f0-3860974c0575', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-02-05 10:01:51', '2c5f5246-4383-a995-922b-ce126d8fcf7a');
INSERT INTO `microchip_classify_log` VALUES ('9719da57-7a1d-5438-3565-1e10411c9893', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-29 15:15:18', '1ad2ead4-a2ba-cfd4-842f-bba77b1f9a91');
INSERT INTO `microchip_classify_log` VALUES ('97807266-6647-9dfb-dc50-b66716c4bdd2', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2009-08-06 06:45:36', '143450d5-c9ea-1d95-2fbf-a449d78d30b8');
INSERT INTO `microchip_classify_log` VALUES ('9780b8b1-6531-2e91-f98a-9ce9d996855e', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-07-23 19:44:24', '15e25614-bc03-95ed-3d5e-c68b49f83d4b');
INSERT INTO `microchip_classify_log` VALUES ('97a260c6-c30a-9698-e07d-689716eb66ce', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-06-26 09:49:23', 'a25b3514-da45-42c8-6853-948ce4e08c86');
INSERT INTO `microchip_classify_log` VALUES ('97f06f2e-5f82-7ca6-99fb-18b0913af2c6', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-07-22 00:29:33', '92038a15-3ff1-1ce6-4d78-6a904438cd46');
INSERT INTO `microchip_classify_log` VALUES ('97f52cbb-96bf-3915-e5b7-5bc75d3ee950', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-10-16 04:14:50', 'ebeee2d8-3a56-5d89-36c8-9646a7a1cf2f');
INSERT INTO `microchip_classify_log` VALUES ('98645ae0-4a90-df65-c8ba-bd444875765f', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-07 17:43:29', '79deb72f-0421-89b2-8905-7f64634b7ac3');
INSERT INTO `microchip_classify_log` VALUES ('98a69657-aa83-d484-ddc0-eeeeec0fd304', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-10-06 18:53:57', '111919af-0a57-c861-bb7a-5ee8614d439c');
INSERT INTO `microchip_classify_log` VALUES ('98dfa437-96c5-0d43-52ec-a2aa81946095', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-09-14 11:23:54', '4bf4f557-9b19-f2c3-a6e8-241dee226245');
INSERT INTO `microchip_classify_log` VALUES ('9921fec8-bf34-35c5-99e3-92b0cb8bafca', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-05-05 01:54:55', 'c9193ea4-29de-cfcd-8fb5-a93da7aaf565');
INSERT INTO `microchip_classify_log` VALUES ('99d2d2a4-59e7-4c85-c8f9-3dafa3431c6d', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-01-26 13:12:31', '6230aea4-0f8f-34df-4792-08f46543aa5f');
INSERT INTO `microchip_classify_log` VALUES ('99ea6566-9b12-dcd7-b466-1e15f05412e2', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-07-30 04:03:13', '5bf9f0b9-9a0c-c8c9-145f-7374d93acb29');
INSERT INTO `microchip_classify_log` VALUES ('9b2f082b-c2cb-00fb-9bec-53dabb753a8d', '0.68', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-07-09 00:20:03', 'f8d954ed-7d6f-38ce-27da-876a65b09580');
INSERT INTO `microchip_classify_log` VALUES ('9b378cb4-4099-5a5e-7526-a26b88fd7284', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-06-30 17:52:24', '039ddaa0-c80e-4d9f-092d-0b075746ff0c');
INSERT INTO `microchip_classify_log` VALUES ('9b4883cd-23ba-ef5e-ae31-1707357e4be6', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-13 22:44:41', '57f38b29-d770-233c-cc0c-aae313c25624');
INSERT INTO `microchip_classify_log` VALUES ('9b4c3fe1-debe-9138-2ffb-6a8564958b56', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-01-22 15:58:23', '89b4cc22-bed7-6706-37a9-d826de67dfcc');
INSERT INTO `microchip_classify_log` VALUES ('9b6936e6-6ab4-3fae-6fc7-e96258b81492', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-01-24 08:28:31', '7cfe7a9b-6aae-d4a5-8398-044a5f149e5e');
INSERT INTO `microchip_classify_log` VALUES ('9bef1869-3e81-ea8f-35a2-142c0137968b', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-12-25 09:21:59', '147f4831-b26c-ee7a-0791-d5ddc30cdfa7');
INSERT INTO `microchip_classify_log` VALUES ('9c13f296-766f-8043-8c39-5f24bc8ec937', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-10-18 05:50:32', 'afae4fbe-5b1f-43cb-ec6c-853f002dc6d4');
INSERT INTO `microchip_classify_log` VALUES ('9c3b772b-0c25-c39b-9545-8cd07f859128', '0.56', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-08 11:36:19', 'a7f3d255-ed09-5112-a0db-97b2b06d1b69');
INSERT INTO `microchip_classify_log` VALUES ('9c9d87a9-c1c1-66ff-2836-3eca298e43c7', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-17 04:02:44', 'ef2563f7-677c-49d2-3c1b-d6cf2c419be0');
INSERT INTO `microchip_classify_log` VALUES ('9cca5fcf-bc3c-886e-d8d1-dca43bb68f52', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2005-02-25 15:46:41', '754f0562-5725-bb2b-b7bb-e05e2e947aef');
INSERT INTO `microchip_classify_log` VALUES ('9cfeab85-687e-4da4-2860-80be913325ae', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-03-01 19:46:45', '90fcb970-cb6d-ed85-b5fa-3db6f667d5ce');
INSERT INTO `microchip_classify_log` VALUES ('9d04d714-0a0e-afa5-a3ea-3fe322ac06ca', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-06-26 18:21:41', '73e54e8c-4241-1a27-5711-f04dd0f26245');
INSERT INTO `microchip_classify_log` VALUES ('9d06240a-ec89-de9e-79a9-cd1a09e1c497', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-07-25 16:09:51', 'f19be53b-edf6-86e8-7573-decab08a3eea');
INSERT INTO `microchip_classify_log` VALUES ('9d290467-63f9-9c64-7bbf-060e381da7e5', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-04-25 18:16:10', '3f636d0e-fc69-1399-30fe-fe74b4e78284');
INSERT INTO `microchip_classify_log` VALUES ('9d3bbdb8-c722-9208-8307-f45099d5feb6', '0.30', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-02-29 02:58:25', '7b6b6197-0ba6-0347-dba1-1b38c110f4c4');
INSERT INTO `microchip_classify_log` VALUES ('9e1a2ae7-ea9f-e169-2044-e7e407d1b9a2', '0.62', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-01-14 21:51:18', '44316c96-3377-9855-8a4a-8d7b2aab88a7');
INSERT INTO `microchip_classify_log` VALUES ('9e65cf7c-0d7b-a4e9-8978-91b6f44083ee', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-10-15 01:47:53', '5e21175c-e452-3567-5c18-65b56c664d3b');
INSERT INTO `microchip_classify_log` VALUES ('9e91bc76-76cb-7441-2bea-4b11473ea7df', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-01-17 02:10:50', '9a88dd07-c0c4-7f91-adc2-dc85d8fb2476');
INSERT INTO `microchip_classify_log` VALUES ('9ec52112-572b-ea28-d40a-7c94c9ff24d0', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-04-19 22:25:28', '2e5ee76e-c798-f5e9-bf4b-54bb26653220');
INSERT INTO `microchip_classify_log` VALUES ('9edad543-4d1c-058c-50cf-35226bef4a5c', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-07-16 23:02:45', 'c90f93e5-0fd0-0b6b-b430-f1721f96ac21');
INSERT INTO `microchip_classify_log` VALUES ('9f1742d1-3fca-ab7a-94b7-a80d02f0df3f', '0.49', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-04-17 06:08:28', '9a575c61-883f-e0b4-b47c-d8b94ba3d400');
INSERT INTO `microchip_classify_log` VALUES ('9f3c38af-231c-f8ca-904e-e76a478097bf', '0.54', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-11-07 17:13:45', 'cf232102-13d2-939e-ce3e-5a17ac94d824');
INSERT INTO `microchip_classify_log` VALUES ('9f3f9aa1-a4c8-3d62-c2fd-5e32424117a3', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-04-13 17:48:36', '4b9e1acd-a399-ae31-e592-eb35f8c0211c');
INSERT INTO `microchip_classify_log` VALUES ('9f5d8ba1-0aff-4c04-e73f-83d33a81b1d6', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-07-21 13:08:08', '84eaaca3-6bf5-a8d5-9b27-776f8728275c');
INSERT INTO `microchip_classify_log` VALUES ('9f6cd043-278c-abe7-ff92-62d5c7ec060d', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-01-16 07:39:30', '25aef779-cb77-9784-e3f3-a6677054b956');
INSERT INTO `microchip_classify_log` VALUES ('9fef220e-87a0-7370-3f20-15d7f2d8d508', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-02-22 02:39:28', 'eb378b86-eba0-01ff-f023-9c9932ccf22e');
INSERT INTO `microchip_classify_log` VALUES ('9ffac488-35c5-d51c-3f78-5c48c2fbe16c', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2021-01-28 21:24:52', 'b65e83c6-85ed-f0ea-11bc-26cfd431e50b');
INSERT INTO `microchip_classify_log` VALUES ('a014be69-2d8f-e071-f012-b2c891ccd725', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-04-17 22:35:53', '01475b0b-0612-bc32-1f97-3324b2482d96');
INSERT INTO `microchip_classify_log` VALUES ('a079c98e-4009-0a7f-62a4-e38bb7ea5e4f', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-03-17 12:49:48', 'd2dde162-3e34-276f-1e34-dc48f65c2cb2');
INSERT INTO `microchip_classify_log` VALUES ('a0afcdbe-dbbd-474b-4fae-17bc362a9acf', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-01-05 09:00:52', '71af0c9e-9442-0a4f-4f10-f22b4ec25d3c');
INSERT INTO `microchip_classify_log` VALUES ('a0c7e2e4-23e5-9b6c-352e-5009263e2f5d', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-08-13 14:57:03', '5495c631-7f85-e72b-ae06-a1f9b230e9d6');
INSERT INTO `microchip_classify_log` VALUES ('a0d7c296-2535-9d12-26b9-f4db96755356', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-07-03 23:57:09', '6e490b06-a7ca-689b-2c03-d2fd3ccc5e64');
INSERT INTO `microchip_classify_log` VALUES ('a12af95a-ea53-724c-baa9-6fa300a5bac0', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-05-12 14:11:59', '1e92beed-328d-ba9d-8b3d-ea62dee42712');
INSERT INTO `microchip_classify_log` VALUES ('a14ae72f-f083-e992-7dd2-17c45a84e20a', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-02-27 19:32:46', 'bf9b872b-e3bb-e04e-4d8d-5eaeeedfcf6f');
INSERT INTO `microchip_classify_log` VALUES ('a187f67f-ffb0-2f18-8376-d60ad893664b', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-07-27 15:38:31', '0d868ab7-78a7-e856-9ef0-c76da5bf17d2');
INSERT INTO `microchip_classify_log` VALUES ('a1a5faf9-1d68-9289-f3e7-55794055b1c6', '0.70', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-12-25 00:23:44', '3a8e7930-7148-9d1f-a956-49fa28a3fbce');
INSERT INTO `microchip_classify_log` VALUES ('a1b39fe2-43a0-f9db-1371-e8e245747cd3', '0.15', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-11-05 02:56:00', '4caec3cb-9862-f098-e33b-261988075633');
INSERT INTO `microchip_classify_log` VALUES ('a26ded15-305e-9834-35bb-e9371099d3dc', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-10-10 02:33:32', '8aefe583-380f-22cc-601c-10b9e4fb09f6');
INSERT INTO `microchip_classify_log` VALUES ('a2e50b67-4614-7daa-2d57-0a052f1ec516', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-03-29 22:13:07', '788a518a-d626-37c5-5a24-378c7138ad6a');
INSERT INTO `microchip_classify_log` VALUES ('a2ebc73c-a15c-5e01-8ab0-c150a1476eee', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-09 16:57:20', 'c4411074-738c-46d6-91c6-62dbeaadb116');
INSERT INTO `microchip_classify_log` VALUES ('a35b7903-5c28-6f20-9407-fa4f2e86e720', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-03-28 01:42:17', 'a9554b60-1b91-5d44-f5c6-c4a9d4a100f4');
INSERT INTO `microchip_classify_log` VALUES ('a35f99cd-c7ba-ff45-8c51-df1e89f2899b', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-09-16 05:00:11', '028ed474-99dd-e204-601a-0e7882ac2031');
INSERT INTO `microchip_classify_log` VALUES ('a3fa276a-c981-6000-9aee-e76fe3fbe51e', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-09-12 00:12:51', '15669c01-25cc-8786-1202-dafe51a334b3');
INSERT INTO `microchip_classify_log` VALUES ('a41fb6a6-cfa0-3062-d8ff-55f8d9c20090', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-03-12 06:43:29', '3d3f4341-48e7-b05a-fe91-a25d72068f4e');
INSERT INTO `microchip_classify_log` VALUES ('a4792c7e-6337-be65-ea65-418f4896da10', '0.97', '0.95', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2001-04-09 15:43:44', 'ee380e4b-7685-0569-ce3e-843efafd8755');
INSERT INTO `microchip_classify_log` VALUES ('a4c8d86c-123b-af52-046b-10a164d7e81e', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-11-08 00:09:35', '4eb89a7a-7ced-1e55-8941-3739c3efe358');
INSERT INTO `microchip_classify_log` VALUES ('a579fc57-c27d-c915-3cdc-73967f76dd27', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-02-19 21:27:36', '767c8af9-f8d4-d598-9ef1-11bacd4b25f6');
INSERT INTO `microchip_classify_log` VALUES ('a5887e0a-17e6-80b6-d94a-5ec7f158c083', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-04-22 17:34:45', 'b67eb11c-7ea2-ff9f-fd82-80f866d31b21');
INSERT INTO `microchip_classify_log` VALUES ('a5e4dfa9-73a9-c996-31a0-28beb1c163eb', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-10-08 13:54:11', '3e849af7-c7f4-d556-b3c1-9ed61e89f492');
INSERT INTO `microchip_classify_log` VALUES ('a603c358-3fa6-6ce5-a106-dfba00766a45', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-05-17 21:58:53', 'f2da4a77-3b68-6475-cd97-ae43d6bfd848');
INSERT INTO `microchip_classify_log` VALUES ('a60acb9f-97b9-1e66-0972-7ebcf14649aa', '0.30', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-11-27 04:51:04', 'cbbe035f-a752-d55c-f482-0c4a3d79d02a');
INSERT INTO `microchip_classify_log` VALUES ('a686f1ec-d212-8469-9b38-e74578406cba', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-11-13 05:05:49', 'b1c22139-84a7-4f8b-626f-a7d9f4b0df8e');
INSERT INTO `microchip_classify_log` VALUES ('a6983a0b-0c1f-03dc-4558-7e24ddfd745c', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-12-26 19:50:44', 'b0cc7db6-7bab-e7eb-844b-829261e7cef2');
INSERT INTO `microchip_classify_log` VALUES ('a6e6c58b-8dd8-12ba-86a9-cdf30175d495', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-12-16 13:30:43', 'fcef231c-4cd8-cdd5-2a88-d2bb502c72e2');
INSERT INTO `microchip_classify_log` VALUES ('a7453369-8072-261c-a6af-25582e9cb6b3', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-10-12 15:19:45', '9dfefae6-f58b-0bcb-7238-ce7556d930da');
INSERT INTO `microchip_classify_log` VALUES ('a74b4093-bfbe-e306-94a7-09e2dec566bc', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-06-24 23:21:41', 'fefe2b19-ca30-5fce-306e-703e4e539c47');
INSERT INTO `microchip_classify_log` VALUES ('a7b929dc-f14c-3e99-dd13-fed423450320', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-10-19 14:38:05', '6082a3e1-cb8a-b4e3-5a36-8a1507551a2e');
INSERT INTO `microchip_classify_log` VALUES ('a83dbaff-ee18-ea98-88d6-74995feb2536', '0.97', '0.92', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2006-01-23 15:01:52', '534118a2-96f5-4f4c-7597-0a172616998f');
INSERT INTO `microchip_classify_log` VALUES ('a8531637-c9b7-c6d5-954e-0a6605bce9fa', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-08-14 18:55:09', '52092179-9a2f-13b3-e1cf-bdc5c61d1f28');
INSERT INTO `microchip_classify_log` VALUES ('a87488dc-520b-1578-2b81-3ac72dcb9c15', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-03-13 08:23:35', '9b598c6c-91d2-1ba7-bc8f-9ee2fdd3a042');
INSERT INTO `microchip_classify_log` VALUES ('a9429efa-c72d-7df2-a053-f20629342853', '0.32', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-04 20:53:31', '2376868c-8e2b-2916-cd0a-ef8f95a2b91b');
INSERT INTO `microchip_classify_log` VALUES ('a9851409-d35c-4291-218d-109e691cbfd3', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-08-18 12:23:31', '13ea0878-e7f5-8daf-671e-75a7b38c8039');
INSERT INTO `microchip_classify_log` VALUES ('aa558414-2cb5-2003-8914-82e45d6d8735', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-07-05 10:57:33', 'cba64e78-3de6-b426-dd16-24a697d91f35');
INSERT INTO `microchip_classify_log` VALUES ('aaa5b6b0-eb8e-b43f-4a50-e524edf04758', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-12-12 07:39:08', '1b01845a-5fa0-b8c3-6220-30444a21760e');
INSERT INTO `microchip_classify_log` VALUES ('aac83b63-b3f3-a28d-60c9-352035581114', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-09-26 11:23:36', '25aef779-cb77-9784-e3f3-a6677054b956');
INSERT INTO `microchip_classify_log` VALUES ('aaec5d9b-0470-1a87-8fb7-5a2bdc665a24', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-04-14 20:03:14', '9ca5e883-bb17-0a6e-d191-82371c627114');
INSERT INTO `microchip_classify_log` VALUES ('ab20f486-6c1b-ff2d-5d5c-d9a19c2502de', '0.97', '0.92', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2017-07-06 15:07:40', '50aca712-7012-a962-7c36-11e7ce148784');
INSERT INTO `microchip_classify_log` VALUES ('abb5e19a-72ac-b273-389a-7f3ae3612b73', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-07-14 02:23:59', 'cc28697e-f698-b29a-381e-00a55df68f4f');
INSERT INTO `microchip_classify_log` VALUES ('ac22ce80-d9ab-597e-2e07-0acbd47dcd5e', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-07-06 17:23:43', 'c06f59fc-18dd-2dce-88dd-55ad03844330');
INSERT INTO `microchip_classify_log` VALUES ('aca50bad-b5c3-96e9-0c4c-44f351fa2f08', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-03-05 00:46:46', '22eef1f5-e0fc-143a-3ae4-b2b2201fb320');
INSERT INTO `microchip_classify_log` VALUES ('ad230b2c-8dc7-738d-a100-2e45014e375a', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-05-18 20:24:31', '8ab2e171-c9b3-0cfb-0e48-22e8d12bf2d6');
INSERT INTO `microchip_classify_log` VALUES ('ad3b701f-51df-1b96-c608-8343fc19bab6', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-01-20 06:14:16', 'beac9bc1-586e-23c8-3a5c-e0f098a85f30');
INSERT INTO `microchip_classify_log` VALUES ('ad6cd3b5-9621-a40a-1154-d2a8164a1917', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-06-21 13:39:22', '4d568c13-77bc-9471-8c96-a5cf00eaa5e5');
INSERT INTO `microchip_classify_log` VALUES ('adde44bb-7f5d-61fa-dff1-0837a1590a70', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-04-04 07:05:36', 'b7c2944f-7988-8e6b-3a5e-590c38cd64cf');
INSERT INTO `microchip_classify_log` VALUES ('adeaa1b0-df7d-5b99-9798-7798561585ab', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-01-08 07:36:15', 'f9f28434-2bfb-c8da-b58a-e9d7d0382a49');
INSERT INTO `microchip_classify_log` VALUES ('ae0fa00d-e705-b2a8-1576-cb18553956d9', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-03-23 06:43:35', '6a610514-890a-084e-c82b-8a0bc57f27a9');
INSERT INTO `microchip_classify_log` VALUES ('ae23df82-58a8-3aa9-27ac-b6f7933776f3', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-01-09 09:21:08', 'b22b96fd-9c5c-f68d-8aca-4c902c0eebe4');
INSERT INTO `microchip_classify_log` VALUES ('ae9a85f9-c504-a5ef-ac00-0aab94a10775', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-08-28 20:07:11', 'edad3c50-c605-5016-83c1-839647408787');
INSERT INTO `microchip_classify_log` VALUES ('aea5cc1e-7bd5-e6fa-dda0-e17616579995', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-10-04 00:17:48', '5760aa3e-2d09-a52f-14e7-fd80f2630efa');
INSERT INTO `microchip_classify_log` VALUES ('aebeaa62-c392-127b-6ba8-f1149f2826e0', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-02-19 21:00:44', 'e0bf808e-fc1a-6afb-aaf4-912eb61c9175');
INSERT INTO `microchip_classify_log` VALUES ('aed757e5-af4b-85b0-eb51-31d5a60e91d8', '0.97', '0.92', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2016-04-03 12:21:09', 'a95bf4fa-49d0-ebf4-0850-5857f64658e7');
INSERT INTO `microchip_classify_log` VALUES ('aefd573e-d929-10eb-17ec-f7969ecb3cb2', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-07-26 04:53:01', '3a4aa369-8732-58e3-b3b4-dae4be82f359');
INSERT INTO `microchip_classify_log` VALUES ('af0285d9-e630-0fe3-1ecc-a61affb3b21f', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-19 20:35:42', '2e4d0246-1fef-a252-b913-3aa01e9f8304');
INSERT INTO `microchip_classify_log` VALUES ('af771127-e8d9-a5d1-7827-16eef9bea28f', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-12-04 00:06:09', '8910ad02-9ac9-8d3b-5169-b8d53d06707b');
INSERT INTO `microchip_classify_log` VALUES ('af88311d-3153-efbe-c6e9-b9cf1ea5f5da', '0.34', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-08-24 13:54:23', '0b7cc1d5-4fa4-fe59-3a3d-f1bb4fb2d53b');
INSERT INTO `microchip_classify_log` VALUES ('afb15a1a-baca-8f79-802b-43fa5a64d43c', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2022-11-01 02:46:08', '0372f546-9712-cf45-4156-0ecd7278aa29');
INSERT INTO `microchip_classify_log` VALUES ('afce42d7-bbf9-b92d-00c3-65704a1520c3', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-05-23 15:08:37', '0f6c9b66-7e10-7125-7ee6-2cc77bd33bbe');
INSERT INTO `microchip_classify_log` VALUES ('b02d862c-f025-f20c-c333-791758b05d7c', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-06-12 19:51:22', '532aaced-a980-782d-8005-ba1613f19472');
INSERT INTO `microchip_classify_log` VALUES ('b06d03ed-3d23-e1d8-9bd3-9667be85a47e', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-05-15 01:55:18', 'bb8b3f87-8834-5004-681a-b200fe2f693d');
INSERT INTO `microchip_classify_log` VALUES ('b0ae0ed6-4d17-d0e8-b871-9fde3d2531d7', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-07-16 22:12:10', 'c42eb726-0188-1764-c93e-a269d0cb1d44');
INSERT INTO `microchip_classify_log` VALUES ('b0d7951c-3577-14f1-8b3a-38653eb55ae7', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-02-01 13:57:57', '4eb89a7a-7ced-1e55-8941-3739c3efe358');
INSERT INTO `microchip_classify_log` VALUES ('b165a122-6a18-bd82-2b1d-8c68f25a5691', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-06-09 04:11:49', 'fe7ece18-ae66-3a81-3282-1282c572e85a');
INSERT INTO `microchip_classify_log` VALUES ('b1716e73-0369-0f5a-98ad-91d02db3e7d5', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-11-01 17:02:35', '8910ad02-9ac9-8d3b-5169-b8d53d06707b');
INSERT INTO `microchip_classify_log` VALUES ('b1eaec7c-4915-8198-10b7-0a411152bfab', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-04-11 08:27:11', '8e4f7e09-456f-303d-7aa0-e4e2f3c98608');
INSERT INTO `microchip_classify_log` VALUES ('b202ead0-8364-4297-d304-b60b1016133c', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-02-26 17:46:08', '1df12083-6519-754a-29a3-5f3ca7644cdd');
INSERT INTO `microchip_classify_log` VALUES ('b29fcfe6-4321-1235-bd6f-124adbb774ae', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-11-15 11:41:06', 'c6af1e38-44e1-c2af-fc9d-f1f81ad8b453');
INSERT INTO `microchip_classify_log` VALUES ('b2adb5ba-a5f1-8c7b-51d7-d7e447845557', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-07-24 10:01:43', '251ee713-6a32-19f0-3018-cb7677b5fa48');
INSERT INTO `microchip_classify_log` VALUES ('b2ff4161-2beb-3f31-7536-d12595edc8da', '0.07', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-07-06 11:57:12', '38ff1beb-5bdf-ae2b-c9ff-32d04618e4e4');
INSERT INTO `microchip_classify_log` VALUES ('b310a719-4db1-a381-6aa0-767631a56da0', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-03-21 23:07:13', 'b5a530cd-4074-53f4-bc5a-1aca621ed570');
INSERT INTO `microchip_classify_log` VALUES ('b4341c86-2e9d-e35b-3d4c-8fcd24ebc959', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-08-11 13:47:08', '417e19dc-989e-f0e0-3033-3cca6329bc7a');
INSERT INTO `microchip_classify_log` VALUES ('b44d9e9a-85de-05b8-a4be-e1d3a90eb57c', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-06-03 10:16:31', '5bf9f0b9-9a0c-c8c9-145f-7374d93acb29');
INSERT INTO `microchip_classify_log` VALUES ('b4562b62-bb79-eed3-d5fc-5f2e8bea3ce2', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-08-20 02:18:36', '753bdab0-6326-f7f8-6994-9d7b7a6b3db0');
INSERT INTO `microchip_classify_log` VALUES ('b479fde2-4b40-be5c-d7c7-1b2528cf96ac', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-08-14 20:53:03', '15e412ff-46d9-65d2-4f32-e0f784deef64');
INSERT INTO `microchip_classify_log` VALUES ('b4b04495-3271-5b55-4db7-c3079175e164', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-10-25 19:16:59', '8bc05d69-0d14-88ea-fd67-0a2f0373fa19');
INSERT INTO `microchip_classify_log` VALUES ('b4bd96c2-d931-ba95-7763-17077bd83cfa', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-11-10 04:47:30', 'b6f35d45-b81e-74bd-70e9-661ef6802dd2');
INSERT INTO `microchip_classify_log` VALUES ('b50e2429-d5ed-bfc0-28fe-cbbdbab423d3', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-04-10 03:27:25', '6c7b2c5e-d48c-d149-e855-ba8083d69c18');
INSERT INTO `microchip_classify_log` VALUES ('b52d267e-9b37-56eb-ee5c-9309333eaf5a', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2007-01-16 00:08:12', 'cfcfd771-37b1-f364-2c9b-7e4418cbd5bd');
INSERT INTO `microchip_classify_log` VALUES ('b533512d-7809-4396-5071-21283924f031', '0.52', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-03-10 08:52:50', '2bb377dc-c6af-51c6-1ac0-09053b2c898e');
INSERT INTO `microchip_classify_log` VALUES ('b5394bab-b897-dd07-bf94-03a788f6bc05', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-01-20 13:44:52', '56176c49-2c55-e933-75f9-9a6fa2fe192c');
INSERT INTO `microchip_classify_log` VALUES ('b59b85c5-8de0-1b32-28c9-162b5e02a044', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-06-22 22:28:33', '2d110373-1527-cd35-6abc-f4ad7b3d4baa');
INSERT INTO `microchip_classify_log` VALUES ('b5a6d39b-108b-ffeb-a204-25566b5f8267', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-06-16 09:54:29', '113ea8d8-776c-f539-24cd-b86bc5433419');
INSERT INTO `microchip_classify_log` VALUES ('b5d0147a-7c03-ccc0-7a37-3201c00abe4d', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-08-08 06:43:49', 'a1a343a5-8dc1-2145-ea43-8ee84576ad9b');
INSERT INTO `microchip_classify_log` VALUES ('b5d5dcb8-e79b-f2bc-4881-25fc5284426c', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-01-12 17:24:52', '039ddaa0-c80e-4d9f-092d-0b075746ff0c');
INSERT INTO `microchip_classify_log` VALUES ('b60c27c8-84ff-176e-fe7b-63df8ad59ff1', '0.54', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-04-05 01:16:05', '4f312185-2b96-980c-21fa-5a6eb77a32c5');
INSERT INTO `microchip_classify_log` VALUES ('b69b9189-2120-8876-8782-71d8df28ee45', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-09-12 20:54:16', '1c8eb027-4a3b-338e-3f92-9a3ed766e179');
INSERT INTO `microchip_classify_log` VALUES ('b69cc7cc-9ce7-f86e-a4b4-f2d05022cc69', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-04-02 20:20:00', 'ebc83891-ff14-280b-bb4e-43ea0e020cdd');
INSERT INTO `microchip_classify_log` VALUES ('b6a2eaad-1970-fc20-4736-49edfd8c5bb3', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-06-09 16:46:40', '6039b856-5742-4d7a-8586-a801d0ff91d0');
INSERT INTO `microchip_classify_log` VALUES ('b6b48adb-1d2d-7b56-f829-e842eff6079f', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-08-11 17:58:13', 'f198af61-ada8-4cbe-a6c9-c059be6d6a9b');
INSERT INTO `microchip_classify_log` VALUES ('b6c0e8cb-30da-cbf6-58bb-3bb81cd88e6c', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-08-03 02:19:25', 'b3aad300-33a4-f3d8-459e-8acb7b43b45f');
INSERT INTO `microchip_classify_log` VALUES ('b72a5e62-ce11-482e-1002-f331d7fa9a5b', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-09-23 07:27:14', 'f14bfaa4-b794-1eae-f473-1f7312ab22d0');
INSERT INTO `microchip_classify_log` VALUES ('b74e3635-7319-0ea8-d322-bdf0ac3d7839', '0.32', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-11-24 21:47:01', '6e206872-fb30-3129-eec3-c28aeaaf4ea3');
INSERT INTO `microchip_classify_log` VALUES ('b830507b-5018-1bae-fef0-ff234649cd42', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-04-13 09:40:11', '6096c8f1-9803-c371-ed7b-352cd4adf3c0');
INSERT INTO `microchip_classify_log` VALUES ('b8ceeb8e-97df-6ecc-130b-bfc289f6ed35', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-11-17 18:22:03', '38ff1beb-5bdf-ae2b-c9ff-32d04618e4e4');
INSERT INTO `microchip_classify_log` VALUES ('b8dd365d-6615-93c8-013e-d8b6e0e58dad', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-10-31 00:08:28', '5e21175c-e452-3567-5c18-65b56c664d3b');
INSERT INTO `microchip_classify_log` VALUES ('b8f06d07-21b9-d9e6-b9c2-e339379c3efd', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-12-31 07:09:23', 'fecd611d-4f64-c650-8cf2-90bbafa576a5');
INSERT INTO `microchip_classify_log` VALUES ('b919c735-9f37-4425-d42b-0b72bc2211a2', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-01-26 14:23:20', '7cfe7a9b-6aae-d4a5-8398-044a5f149e5e');
INSERT INTO `microchip_classify_log` VALUES ('b9482761-d84b-fbe0-033b-5b0d70e21b78', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-09-04 22:58:38', 'a5a11f1c-9643-8ded-678e-5cc061e844d3');
INSERT INTO `microchip_classify_log` VALUES ('b99dd2ea-3273-cb58-f070-20b767518882', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-02-12 18:48:51', '1bc67b01-f22d-073a-0415-ffe0df003f92');
INSERT INTO `microchip_classify_log` VALUES ('b9a55d13-d317-b733-2d5b-fa48104cbb82', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-12-07 09:32:52', '1db5c911-71bb-8a84-5a8f-8dc496e4199b');
INSERT INTO `microchip_classify_log` VALUES ('b9d83309-5687-4c27-4366-2da27ecc47d4', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-07-18 03:06:21', '94da1c8a-b41a-18a1-f11f-16bd2224e157');
INSERT INTO `microchip_classify_log` VALUES ('ba6e3718-75b2-a66a-a658-b23099a473fb', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-07-11 21:29:57', '5192870c-c621-79a1-65ee-a28faad2038b');
INSERT INTO `microchip_classify_log` VALUES ('ba791ef3-2d44-8c38-9726-608ba8450573', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-04-24 18:53:35', '743c6db4-4adb-6291-62d3-0f1100ac5503');
INSERT INTO `microchip_classify_log` VALUES ('babb5ed8-ec12-6a8c-e3b6-029f9997da97', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2008-04-17 10:14:16', 'de3443cf-7d8e-39e3-2127-3eb69cf3beb1');
INSERT INTO `microchip_classify_log` VALUES ('bac37021-1e07-b7a0-4649-d82c5b6a61a0', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2022-07-11 23:01:21', '7460c7d3-c207-5ad8-ea1d-fc155bd09719');
INSERT INTO `microchip_classify_log` VALUES ('bacfdda3-75c0-05c9-3134-bb5eaf5366e2', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-03-07 17:57:01', '6cdc4c5a-99b4-d5b2-21d3-b44cd8a38022');
INSERT INTO `microchip_classify_log` VALUES ('bada36e2-56b4-7399-9070-b6b7b73ffa57', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2002-04-15 15:14:25', '6cdc4c5a-99b4-d5b2-21d3-b44cd8a38022');
INSERT INTO `microchip_classify_log` VALUES ('bb122eb6-6e41-2512-d9e0-acd8afcf9a04', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-31 01:29:26', 'f2ee3264-4187-46dc-0c4f-cc649011ddb8');
INSERT INTO `microchip_classify_log` VALUES ('bb5d17aa-65c0-e494-9934-717d2a61c968', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-03-13 19:42:25', 'f1009130-1216-396e-25bf-23ee06639be9');
INSERT INTO `microchip_classify_log` VALUES ('bb5d2d2e-0b3e-e5a3-416b-aedf079d4541', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-05-12 13:42:45', '815d2000-c6ce-6998-5763-d5d387ba8bcc');
INSERT INTO `microchip_classify_log` VALUES ('bc5dde06-b709-babc-61b0-fafb4d4e6451', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-08-26 03:05:51', '8e92276b-a210-257f-aeee-374f77aff05f');
INSERT INTO `microchip_classify_log` VALUES ('bc9a04a9-aaef-e68f-bd78-87627f2e718c', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-02-11 04:24:14', '475a66d1-8a42-3388-dd3a-31bbfb6ecc57');
INSERT INTO `microchip_classify_log` VALUES ('bd078ac3-4fb7-988d-4d06-fcfdbea75a80', '0.29', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-01-04 22:33:23', '30ae6430-8920-bd21-e41c-aeea251e434d');
INSERT INTO `microchip_classify_log` VALUES ('bd3eb2a4-7614-acda-1791-0456b5a3901d', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-10-31 10:29:56', 'c0652e8c-da3e-272a-bef3-c9253ed5af6b');
INSERT INTO `microchip_classify_log` VALUES ('bd679d10-ff2d-8ed7-43f9-46794905e5c3', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-15 11:36:00', 'd7a30477-f281-a03e-df46-6969d48611bf');
INSERT INTO `microchip_classify_log` VALUES ('bdc6a32c-dd49-4023-a32b-10f955af276a', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-10-26 04:22:41', 'be032611-3bad-18d5-fd99-37068a1aba62');
INSERT INTO `microchip_classify_log` VALUES ('bde85024-98a2-8cc0-146c-8939a3be6214', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-06-02 12:53:31', '66ed698f-9338-9f7b-9c0a-f781d99ce7ac');
INSERT INTO `microchip_classify_log` VALUES ('be5646f5-0355-7094-4ac6-a66532827d85', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-03-16 20:05:02', 'a79cfe70-d69c-ffc7-669a-82e09c581578');
INSERT INTO `microchip_classify_log` VALUES ('be93b579-fada-791a-62dd-337953891aa2', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-08-30 10:26:18', 'fb5258a5-2000-7e7d-239e-284fe4450aa1');
INSERT INTO `microchip_classify_log` VALUES ('bec2d4d7-cb0f-fff5-7e0c-9d6f9a11a9fd', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-03-30 03:58:38', '673abc7d-697d-c041-bb04-2c73c8ef0040');
INSERT INTO `microchip_classify_log` VALUES ('bf26da16-1798-d649-08b6-88b80fc1610b', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-11-12 15:41:28', 'd1af995f-4435-dbc2-bd29-07a273087f5a');
INSERT INTO `microchip_classify_log` VALUES ('bfba5bbc-31f8-b9f6-4b95-931be8465615', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-07-09 12:13:02', 'd02d5a83-fa7d-b90a-327d-18d89a7ef468');
INSERT INTO `microchip_classify_log` VALUES ('bfc122a1-229a-a96c-fa22-c3ab9341697c', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2013-08-17 04:30:15', '15669c01-25cc-8786-1202-dafe51a334b3');
INSERT INTO `microchip_classify_log` VALUES ('bfe9fbd7-3e64-9c03-22bc-98e8211c82df', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-12-30 07:01:18', '85e230e8-5c2f-7778-979f-bb203e1516df');
INSERT INTO `microchip_classify_log` VALUES ('c01a0b0a-d1db-02c8-9fba-733f90436c46', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-03-28 06:39:57', '56e349b6-9e20-374e-f25d-6bee93b8eb80');
INSERT INTO `microchip_classify_log` VALUES ('c02e83e4-0ab7-ee78-fdde-a07c34b9ebc5', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-05-14 01:53:58', 'c90f93e5-0fd0-0b6b-b430-f1721f96ac21');
INSERT INTO `microchip_classify_log` VALUES ('c074771b-952e-47c3-59f4-e919755d99d7', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-08-18 06:41:32', '3f636d0e-fc69-1399-30fe-fe74b4e78284');
INSERT INTO `microchip_classify_log` VALUES ('c09c62f6-a742-e8a2-d52f-fd4d0ebb551b', '0.98', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2001-11-13 07:07:09', 'bf06196c-d6f2-b438-5c8b-388ddb50366c');
INSERT INTO `microchip_classify_log` VALUES ('c0d23d7c-4ff9-410e-3833-4b7e9ea9f9f3', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-29 17:00:46', '90c61d09-9187-cd9b-f3d9-c83f8b015e5f');
INSERT INTO `microchip_classify_log` VALUES ('c0daec02-585a-7302-ac7a-b9be70f0d00b', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-06-20 06:34:26', '673f1a05-3aa7-09c6-2f29-b2cfbe91f215');
INSERT INTO `microchip_classify_log` VALUES ('c1245141-3cd1-ac61-164a-3196a5adbc42', '0.59', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2016-02-29 04:16:37', '03a429da-09a9-d9cd-b79d-91005a78743d');
INSERT INTO `microchip_classify_log` VALUES ('c18a3bfb-98e6-f9c0-9ebd-a392f856f942', '0.12', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-11 06:40:10', '37392245-c492-7823-7cca-92219066e0a3');
INSERT INTO `microchip_classify_log` VALUES ('c21c9d90-eb76-f21c-5c60-76b7e0c9e279', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2000-02-13 07:55:26', 'ea6507eb-86ba-64b7-e679-904be4543bd0');
INSERT INTO `microchip_classify_log` VALUES ('c2219090-0768-87c4-0f8f-3add661fae17', '0.56', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-11-22 08:51:42', 'acb64a9e-bd26-eb16-1482-2c00b9e4137b');
INSERT INTO `microchip_classify_log` VALUES ('c271b663-6d72-f147-9eff-23d433153746', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-03-05 00:44:19', '8186582f-f85a-eae1-10b8-36b479b75329');
INSERT INTO `microchip_classify_log` VALUES ('c27a760c-005f-3a6d-7de4-0296d1670cf9', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-07-13 00:34:23', 'edc5c31d-4804-6068-3d21-44b5291d3581');
INSERT INTO `microchip_classify_log` VALUES ('c294f128-a662-4bac-24bf-2ea901957950', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-08-26 19:25:06', '539b5ea0-ca1c-73c5-e653-3a6e86c24851');
INSERT INTO `microchip_classify_log` VALUES ('c2f3bae6-6312-e4aa-650b-9f1631711f4d', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-12-08 09:37:28', 'cd27f13c-19e3-2dde-f336-abb8f3e60c0a');
INSERT INTO `microchip_classify_log` VALUES ('c35ef759-404b-9c4d-d415-e1e6fa637ba2', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-11-18 23:13:54', 'a5a11f1c-9643-8ded-678e-5cc061e844d3');
INSERT INTO `microchip_classify_log` VALUES ('c3611c39-2d22-b2d4-93ca-8b7566be55e3', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2008-03-12 21:18:01', '04838318-bcfa-1d99-55eb-1af0a5f2b444');
INSERT INTO `microchip_classify_log` VALUES ('c371ba13-fd3c-4ed5-5f9b-bd2104cf5b47', '0.93', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-06-03 05:35:16', 'ad9e74e3-0ce1-c608-ce70-17d2c8ff7909');
INSERT INTO `microchip_classify_log` VALUES ('c3939b22-ce9a-53a5-e880-915cdadda47a', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-11 06:16:48', '80392d8a-32a6-3f0a-2cdc-c9816430c90a');
INSERT INTO `microchip_classify_log` VALUES ('c3a793e9-1572-c43d-33b9-740643cab107', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-12-10 10:46:06', 'e8d56b28-115f-3962-0c61-ac798aa5562e');
INSERT INTO `microchip_classify_log` VALUES ('c3bd4fac-d922-987f-ff95-149da4dec3b4', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-03-15 10:05:50', '387e7397-37e7-a3bb-ceca-c20cb6536644');
INSERT INTO `microchip_classify_log` VALUES ('c3c5193c-1b61-79c9-0532-d682a2f82b21', '0.82', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-03-20 12:12:35', '3d3f4341-48e7-b05a-fe91-a25d72068f4e');
INSERT INTO `microchip_classify_log` VALUES ('c40994ac-69ab-20e8-759e-a87ef62637be', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-07-03 18:03:14', '92ffb707-f1d4-7128-7e8d-8a529e47f010');
INSERT INTO `microchip_classify_log` VALUES ('c461f205-6a84-f8ec-e360-97340fafb413', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-05-06 05:04:57', 'fe7ece18-ae66-3a81-3282-1282c572e85a');
INSERT INTO `microchip_classify_log` VALUES ('c46dc016-529f-43fb-9427-5be7c401041c', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-06-05 08:52:40', '7f751432-26a1-12db-a739-f7cb90f54d02');
INSERT INTO `microchip_classify_log` VALUES ('c4c08d9d-5909-4a03-6104-c228a17a69dc', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-10-31 10:45:23', 'ce82f1ce-2302-20d3-8d05-ca234a75a360');
INSERT INTO `microchip_classify_log` VALUES ('c4e086d4-86fb-f362-5f42-083b91bf6e16', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-06-12 12:58:15', 'ef3689cc-8a9b-79c4-2614-bdb28c11a6a6');
INSERT INTO `microchip_classify_log` VALUES ('c4e4b0c8-029f-62ce-026e-bd1afae01d22', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-05-04 19:09:57', '2a0bf1c3-626f-b8d2-ccf5-8e82fbaca471');
INSERT INTO `microchip_classify_log` VALUES ('c538522f-1f20-61e9-bd80-4780366b8a78', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-12-12 17:46:49', '2e5ee76e-c798-f5e9-bf4b-54bb26653220');
INSERT INTO `microchip_classify_log` VALUES ('c5b51df3-f974-8882-4fa9-a3981d8f99c4', '0.97', '0.96', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2022-01-23 06:15:47', 'f900934f-d58b-0ef4-cad3-7684f79b4575');
INSERT INTO `microchip_classify_log` VALUES ('c5e4ab0c-7980-6819-983a-870efdb0f00b', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-05-05 05:18:23', 'c0f60580-3d6d-ade5-4b45-70e06e9012ab');
INSERT INTO `microchip_classify_log` VALUES ('c5fcaf28-9c0b-ab0b-9e83-ae80811be48d', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-10-06 23:30:30', 'e60ee74a-bcb6-2b9b-477a-9e386beacd1f');
INSERT INTO `microchip_classify_log` VALUES ('c62c9529-5787-d4e2-09c3-79a89d132ca6', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-04-05 20:26:34', '45e95ffa-3f65-5a76-5ff0-01b3c4dd41c7');
INSERT INTO `microchip_classify_log` VALUES ('c6c68de3-84ad-df34-345a-6a662e13fc71', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-02-11 02:40:08', '54a91834-4a86-0348-6b84-9af3e164943e');
INSERT INTO `microchip_classify_log` VALUES ('c706f10a-7c64-b262-3e8b-99578a46a40a', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-05-11 15:59:34', 'a5a11f1c-9643-8ded-678e-5cc061e844d3');
INSERT INTO `microchip_classify_log` VALUES ('c74153da-c542-93fe-dc22-94000c8e57e8', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-08-17 20:01:26', '3a55f851-8ff2-ddec-b742-b145c51006a9');
INSERT INTO `microchip_classify_log` VALUES ('c7d1fe03-315f-faba-06ee-4890f04b60f5', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-05-31 04:52:17', '2604fe89-eaf2-2cc7-d02e-503937306f18');
INSERT INTO `microchip_classify_log` VALUES ('c7dd7cc0-3638-7c75-b414-c1286fa8d285', '0.59', '0.91', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2013-10-26 14:00:33', 'a6fe856f-f9e4-37b1-bc80-193f26248034');
INSERT INTO `microchip_classify_log` VALUES ('c83e476e-6aa3-3a52-d713-2e8138c3cb51', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-08-25 13:35:06', 'd598dfe7-b43c-4593-922e-3ed09aaa6c9e');
INSERT INTO `microchip_classify_log` VALUES ('c8be0c2a-2cd1-1034-e116-823ae44a75c3', '0.28', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2003-10-21 03:21:02', '56ddfc68-a95b-4159-3dd3-0095a9b20f86');
INSERT INTO `microchip_classify_log` VALUES ('c929f583-de87-938a-40fd-da195af3967f', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-06-22 20:38:13', 'b51a2a50-795d-8b76-e77d-6e17223f7130');
INSERT INTO `microchip_classify_log` VALUES ('c94216e9-30f0-cd09-f15f-c4d8c64c3a2e', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-26 11:17:03', '71af0c9e-9442-0a4f-4f10-f22b4ec25d3c');
INSERT INTO `microchip_classify_log` VALUES ('c9593129-25d6-6273-c185-76b1934cea07', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-02-09 13:25:58', 'ddceb93b-10a3-4264-e4eb-5aa45c336342');
INSERT INTO `microchip_classify_log` VALUES ('c98672ab-af4e-ffcd-1bb7-d76466f92df4', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-04-25 23:35:46', '7cfe7a9b-6aae-d4a5-8398-044a5f149e5e');
INSERT INTO `microchip_classify_log` VALUES ('ca2a7621-560f-05d5-818d-93408fc37227', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-04-17 14:17:05', '767c8af9-f8d4-d598-9ef1-11bacd4b25f6');
INSERT INTO `microchip_classify_log` VALUES ('ca490eea-bea1-7074-cb3f-e203e6255892', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-05-10 00:14:03', '4dfadfa7-1590-a8de-323a-00aa9ea3b618');
INSERT INTO `microchip_classify_log` VALUES ('ca523de7-1514-c09c-6574-126f877e208f', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-11-14 19:29:24', 'e10fd97e-3441-0ade-61fb-94b6c9cb57de');
INSERT INTO `microchip_classify_log` VALUES ('caf720e0-9722-f452-b1de-b68a3743e4ec', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-07-26 09:57:53', '6230aea4-0f8f-34df-4792-08f46543aa5f');
INSERT INTO `microchip_classify_log` VALUES ('cb22cf61-9de4-8216-ae02-49d44939694b', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-04-30 00:04:37', '5ae2dfae-93f2-2316-0e9a-674c83403e18');
INSERT INTO `microchip_classify_log` VALUES ('cba43669-d743-1360-6025-f41130d6d4b1', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-08-16 06:31:35', '80392d8a-32a6-3f0a-2cdc-c9816430c90a');
INSERT INTO `microchip_classify_log` VALUES ('cbda5f78-a2cc-95f4-3a8c-d5b8c1b4848d', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-06-13 09:06:58', '7096d424-9946-f523-6156-bc03a7ccfa28');
INSERT INTO `microchip_classify_log` VALUES ('cc74b282-f211-70b2-8397-8dbd279c5ac4', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2021-03-15 03:36:27', '68625f6a-f7a0-a75d-cfaa-c89ab6d3df82');
INSERT INTO `microchip_classify_log` VALUES ('cc8eb273-1b78-e30f-8d4d-e3c5a0613b3e', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-09-14 08:32:18', '72481af2-e843-f040-5bdd-716186a0bb8c');
INSERT INTO `microchip_classify_log` VALUES ('cc9c0d5c-3804-0857-3c46-c1fbbd727619', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-08-03 00:09:46', 'cc28697e-f698-b29a-381e-00a55df68f4f');
INSERT INTO `microchip_classify_log` VALUES ('ccdbbed9-182e-e330-6b2e-607f43261eb8', '0.73', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-07-03 21:18:47', '9e952f59-d730-36ae-e7df-39e197ab46f7');
INSERT INTO `microchip_classify_log` VALUES ('cce1e939-0388-8199-47df-880cce0f5048', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-01-27 09:53:42', '4b9e1acd-a399-ae31-e592-eb35f8c0211c');
INSERT INTO `microchip_classify_log` VALUES ('cdef3313-264f-096c-36ec-eb542bbd7a8d', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-09-30 21:02:32', '922734a7-3075-a9e3-4f03-c7203d38d2c1');
INSERT INTO `microchip_classify_log` VALUES ('ce18ca4d-d645-90ec-0e41-00ca7152a06f', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-04-02 18:44:30', 'c7379393-760f-a102-a8d8-d491de4568f5');
INSERT INTO `microchip_classify_log` VALUES ('ce8b4c4a-77dd-c5c8-5834-f030783f2fcb', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-02-24 20:39:44', 'fa37a54c-511b-9403-c9af-93c98fe7354a');
INSERT INTO `microchip_classify_log` VALUES ('ce96f759-b3b0-7a80-bb66-f0038ff09f83', '0.04', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-01-27 16:47:03', '176dbfdc-d54b-3977-edc3-1bbec8d9127c');
INSERT INTO `microchip_classify_log` VALUES ('cec441bd-6def-8909-68f6-e399f45e22d3', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-06-18 06:17:59', '95a77475-0aa0-8cb2-fd1a-d0be6d656672');
INSERT INTO `microchip_classify_log` VALUES ('cf0f221b-4e1d-bd05-4638-187ceb9ea5b9', '0.20', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-07-12 19:50:34', '5ae2dfae-93f2-2316-0e9a-674c83403e18');
INSERT INTO `microchip_classify_log` VALUES ('cf23bc93-f826-0488-2562-c7f800355d4a', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-05-17 09:45:58', 'ebe90c92-7d86-e0ba-ef33-c17dd2b3e2a0');
INSERT INTO `microchip_classify_log` VALUES ('cf51bcc9-c669-9a7c-3571-eef3408f463c', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-12-10 07:37:09', '558b5dcb-68b9-202f-d3e7-1f3a74d87fa8');
INSERT INTO `microchip_classify_log` VALUES ('cff5685d-949d-56df-e2f2-63f4d51fdab4', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-05-08 07:57:43', '4b9e1acd-a399-ae31-e592-eb35f8c0211c');
INSERT INTO `microchip_classify_log` VALUES ('d03b2d2e-7f21-9a21-e9c5-293cddc6ef32', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-03-15 20:23:52', '38ff1beb-5bdf-ae2b-c9ff-32d04618e4e4');
INSERT INTO `microchip_classify_log` VALUES ('d04b6035-7429-f9ff-14de-e57ad4ba5889', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2010-12-30 06:32:16', '2150a653-9dcb-a1ad-1a44-e4625d3dd591');
INSERT INTO `microchip_classify_log` VALUES ('d0968cd3-ee47-6ad8-1a43-69aaa12d0a28', '0.99', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-08-07 21:28:38', '072848d9-f169-8c22-2a43-ec04ab6194c3');
INSERT INTO `microchip_classify_log` VALUES ('d0dd70c9-6f39-c089-b5c1-23246c754b1e', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-07-09 08:42:22', '231797a8-deff-e045-ad6a-9eb72a278194');
INSERT INTO `microchip_classify_log` VALUES ('d123b72a-825e-9c78-169b-766ef7731efa', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-06-02 13:34:21', 'afae4fbe-5b1f-43cb-ec6c-853f002dc6d4');
INSERT INTO `microchip_classify_log` VALUES ('d1255871-7eca-6684-61e7-d26186048ead', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-03-09 04:29:56', '83c9e5c1-ed63-79be-6fef-ac7bf379528c');
INSERT INTO `microchip_classify_log` VALUES ('d1689a18-bdc7-8596-83b4-2d919d4f958b', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-02-21 07:53:22', 'f615b6ef-dcfe-b8d5-284e-484d6f11c03e');
INSERT INTO `microchip_classify_log` VALUES ('d1b6fd7e-090a-3bef-76ca-8566e82d5057', '0.97', '0.95', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2001-06-30 09:06:10', '4897bf24-0a26-41cc-8c27-c906c2ca2ebf');
INSERT INTO `microchip_classify_log` VALUES ('d231b2c5-0454-a74c-a374-885840af52fe', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-03-27 00:45:01', '9d95b751-5d07-ae96-8bd6-4a078df6d3fb');
INSERT INTO `microchip_classify_log` VALUES ('d24f3ef7-7da7-2d7e-d9da-61bdd093571a', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-11-30 23:04:05', '6efcfa47-a1a1-0347-673d-7459fc683ee9');
INSERT INTO `microchip_classify_log` VALUES ('d283ed52-cf16-83c1-580b-050d5f27798a', '0.97', '0.99', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2020-08-27 23:59:56', '5fdd13fb-7308-ceb7-d3d6-6d98fd9ff86d');
INSERT INTO `microchip_classify_log` VALUES ('d2ef6dfa-901a-648c-295b-694dc2e71714', '0.04', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-12-09 12:53:08', 'f4bae76c-2074-17d2-b97c-f9346269b8ad');
INSERT INTO `microchip_classify_log` VALUES ('d333e302-278a-e40a-8da2-b22c7db1e0f1', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-04-28 11:23:51', 'ec724613-1b10-c3fc-f0c7-4f777762412d');
INSERT INTO `microchip_classify_log` VALUES ('d3c6ddc4-cec9-50d8-80e1-5f258fa4de46', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-04-14 21:07:25', '4833609b-cfb0-807b-6d66-f471ac4cff05');
INSERT INTO `microchip_classify_log` VALUES ('d41521ff-dbd8-c596-6fce-955381b76320', '0.97', '0.95', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2003-09-17 05:52:15', '7140bec3-aae5-1cca-4ac8-b1c5c507815c');
INSERT INTO `microchip_classify_log` VALUES ('d4813a7f-039a-de7e-58de-c877810b37e5', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-01-27 12:33:14', '69c167d1-7879-a581-7a95-fc173ceb05ec');
INSERT INTO `microchip_classify_log` VALUES ('d485d16a-f349-afec-eecb-308720d9115c', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-10-03 23:24:35', '546e076d-025d-c3b3-03db-eb6a12b00a02');
INSERT INTO `microchip_classify_log` VALUES ('d48a4305-e094-07b3-9673-dce500f42899', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-04-22 14:57:12', '4e21d426-6a54-21a0-de86-067683a38e9b');
INSERT INTO `microchip_classify_log` VALUES ('d4a283fc-a105-f02b-01b1-03dbea11ca24', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-11-20 11:47:47', 'a76460e5-dd83-ff9c-3ea2-1ffa9bb80b4e');
INSERT INTO `microchip_classify_log` VALUES ('d4ac661e-6927-4842-ce92-fc218a7a81a8', '0.94', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-10-17 22:17:41', 'd5f21b6b-68c2-b5c0-e61d-4e71fa009f70');
INSERT INTO `microchip_classify_log` VALUES ('d4b4e132-4df5-13fb-1bf2-a494afea2eea', '0.97', '0.99', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2010-12-27 03:04:05', '95e1edcc-776f-f4a9-e9aa-77bbcc765e8f');
INSERT INTO `microchip_classify_log` VALUES ('d4f3e364-6fdd-51a9-dde4-742b4d3b4eb4', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-04-05 10:04:13', '283daf27-d09b-47ff-0e00-77893662ccab');
INSERT INTO `microchip_classify_log` VALUES ('d51327f9-4ca8-0fce-e25b-4e039574c41b', '0.48', '0.95', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2004-11-14 08:31:38', 'c7d301b3-ba04-2982-ef38-45fceae7092f');
INSERT INTO `microchip_classify_log` VALUES ('d53d2f8a-1e2f-7e30-31ef-634d8e149353', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-04 05:44:50', '2bb377dc-c6af-51c6-1ac0-09053b2c898e');
INSERT INTO `microchip_classify_log` VALUES ('d5648f0f-b6d2-b052-4486-beb693dc4f81', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-06-27 12:30:05', '905ae2aa-56f7-a810-8497-7b7e25721943');
INSERT INTO `microchip_classify_log` VALUES ('d588a34b-4808-759e-3c65-6bc561856527', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-02-09 12:56:51', '66445f32-2957-b488-7225-905492675340');
INSERT INTO `microchip_classify_log` VALUES ('d5b55f7c-265f-a55c-5dfc-5fa35f4e7d17', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-18 04:11:56', 'bd7894bf-e088-c85b-50f8-c58a510d98fa');
INSERT INTO `microchip_classify_log` VALUES ('d5bcc399-969c-0864-ad61-7c46bd4d2fc6', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-07-29 00:34:21', '50052cb6-9f20-ddbc-0af3-04495b4608ae');
INSERT INTO `microchip_classify_log` VALUES ('d5d2d7dc-3f94-3db3-f7af-b0861fda8697', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-02-27 04:06:17', 'fbd6ebd4-d4d5-b4d1-e0c4-53bbea2a2e44');
INSERT INTO `microchip_classify_log` VALUES ('d6ce7bc1-0958-77d2-12a9-9b74feca0a40', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-04-30 00:06:41', 'c99d3684-70ec-d353-76e4-0ad85198557f');
INSERT INTO `microchip_classify_log` VALUES ('d6f6cc0c-b75f-2094-7264-46cff6c1d159', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-07-26 10:30:49', 'fe2a439e-c23c-d575-3b7e-18c3ad53f54d');
INSERT INTO `microchip_classify_log` VALUES ('d701fc2a-5b71-50c9-3805-00a54caefe68', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-22 02:33:31', 'd598dfe7-b43c-4593-922e-3ed09aaa6c9e');
INSERT INTO `microchip_classify_log` VALUES ('d7087972-fd69-e55a-f754-7b936df68139', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-06-07 03:32:35', '3993be71-0d48-f616-d35f-edec45c7c2b9');
INSERT INTO `microchip_classify_log` VALUES ('d7e1023e-497e-e322-36a6-a5d8285d7cac', '0.62', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-01-20 01:24:21', '3480304d-7000-33be-0821-a0f9c69e5e3b');
INSERT INTO `microchip_classify_log` VALUES ('d8055c4a-57f9-e264-fc99-b5285bf4ec28', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-04-15 15:56:02', '92038a15-3ff1-1ce6-4d78-6a904438cd46');
INSERT INTO `microchip_classify_log` VALUES ('d82c81ba-4e9c-bb16-478c-cc8461d8d5ec', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-07-25 00:04:09', '3ac32d0c-4fa3-4276-6258-ba39c6e13c4a');
INSERT INTO `microchip_classify_log` VALUES ('d82e88a3-26e8-ab47-3293-26c6a8bb3e13', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-05-29 11:51:24', 'c42eb726-0188-1764-c93e-a269d0cb1d44');
INSERT INTO `microchip_classify_log` VALUES ('d8944a90-a55f-2c4d-c819-a6ccbdda5206', '0.97', '0.94', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2019-06-23 05:08:32', '9794c064-8955-5763-f9f6-54049bc969f0');
INSERT INTO `microchip_classify_log` VALUES ('d8a3245a-4e35-4f90-1075-7b0b248e69e7', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-07-14 03:18:03', 'd598dfe7-b43c-4593-922e-3ed09aaa6c9e');
INSERT INTO `microchip_classify_log` VALUES ('d94f6496-27c2-872d-6bdc-e2b4066c62a7', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-10-27 07:16:46', 'b819df67-29ee-4faf-950a-0fc398b0f1f4');
INSERT INTO `microchip_classify_log` VALUES ('d9713a0b-276e-f3cc-52ff-13432c9bc731', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-10-02 03:43:09', '24c03553-a123-d1c3-3f50-75d50d6dbe5f');
INSERT INTO `microchip_classify_log` VALUES ('d9910882-f05b-765b-0d6e-40579b389f3f', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-06-06 13:53:52', '922734a7-3075-a9e3-4f03-c7203d38d2c1');
INSERT INTO `microchip_classify_log` VALUES ('d9b57a75-a7eb-1176-3d4f-26e72861ec8d', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-08-07 05:13:49', '5dc51344-0e41-3395-ebfa-62405941c533');
INSERT INTO `microchip_classify_log` VALUES ('da1d9a27-8cc9-6c34-fc9c-702bd961f941', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-07-26 11:48:32', '9ff0bb35-3acb-3506-9aee-4f6e21118ecb');
INSERT INTO `microchip_classify_log` VALUES ('da21097d-3018-b440-fdf8-d52185167983', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-07-12 10:43:53', '92517d96-fc10-de85-5dd5-caa000acee43');
INSERT INTO `microchip_classify_log` VALUES ('da75ecc2-8ff7-e26a-edfb-a6c99b76c460', '0.91', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-05-18 00:47:44', '2106002c-1ee3-8589-7e0e-f541b1c6ecf5');
INSERT INTO `microchip_classify_log` VALUES ('da8458cd-e546-70df-61d9-433b99bd2469', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-06-15 21:10:22', '54d6db16-23ad-7910-4926-e1845df958a8');
INSERT INTO `microchip_classify_log` VALUES ('da975277-37ed-b1c9-37fd-dd9c1bd175a8', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-08-06 00:57:35', '295b3ce0-ed54-7085-08bf-d45017d498b3');
INSERT INTO `microchip_classify_log` VALUES ('dad7ff45-8514-a1a4-eaa2-e18e7db29f6d', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-12-04 10:28:33', '673abc7d-697d-c041-bb04-2c73c8ef0040');
INSERT INTO `microchip_classify_log` VALUES ('dafc3258-1ba0-e8fb-86db-72aea1e482a2', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-08-15 06:23:52', 'a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf');
INSERT INTO `microchip_classify_log` VALUES ('db5d248e-adc4-8d9a-aafb-556f47981e22', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-12-01 07:33:14', '0d868ab7-78a7-e856-9ef0-c76da5bf17d2');
INSERT INTO `microchip_classify_log` VALUES ('db983bea-59bf-0c75-80be-be7b05d7e6d6', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-04-21 22:22:31', 'e95b65c7-3b1a-dc1b-23d1-9e8d53cca2f0');
INSERT INTO `microchip_classify_log` VALUES ('dbc816de-5cf0-afd3-40a3-2468eac5bd42', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-08-26 18:31:38', 'e807417c-57c3-1c0d-8b0e-8c6f6b6ec716');
INSERT INTO `microchip_classify_log` VALUES ('dbd127ea-78c5-224e-b3b8-1621696002ef', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2021-01-05 01:40:55', '7bc65970-701f-c585-44c8-fceaaffe72d8');
INSERT INTO `microchip_classify_log` VALUES ('dc35d205-184d-fc67-7377-c37ceaded7fb', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-04-22 16:33:41', '6835fba7-a8b1-e83e-eaba-4e320e50b8f3');
INSERT INTO `microchip_classify_log` VALUES ('dc8d27b5-09f1-d10e-3050-d1f950edb133', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-14 15:31:15', '4f117bc2-2db7-6fa0-cf92-41d465cc0462');
INSERT INTO `microchip_classify_log` VALUES ('dcb761a3-6e27-16a6-7319-b4b35ceff02a', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-03-10 00:58:42', 'b922b735-28f2-89b2-19b6-6f232d45b9a6');
INSERT INTO `microchip_classify_log` VALUES ('dcc076ca-1e9f-3ebe-16eb-b47b201f3cc9', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-10-04 20:53:44', 'f4edc39e-5061-a5b8-490f-403e199f5ec0');
INSERT INTO `microchip_classify_log` VALUES ('dd214dca-38e1-8dcd-1484-33c356e35fb3', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-05-24 10:31:36', '63f9898e-8024-30a3-3882-18d2a3660df3');
INSERT INTO `microchip_classify_log` VALUES ('dd4070f6-f6b0-3295-fc93-53c15d0afa1c', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-NG', '2003-09-30 05:33:12', '0b82ed87-c438-1187-66ec-72aed86cbe22');
INSERT INTO `microchip_classify_log` VALUES ('de660bb0-4a43-bc14-bf2d-4fc4b3f2ca65', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-01-23 00:15:14', '9123e5d1-a2be-3376-e521-28e1dde2387e');
INSERT INTO `microchip_classify_log` VALUES ('deaa8def-388b-fa47-82a1-d551c72b351b', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-03-17 09:41:57', '0aa4ec45-d1c3-7dc9-727b-1a06771cb20a');
INSERT INTO `microchip_classify_log` VALUES ('dec3863e-646c-3772-5e10-0d8bd6795e55', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-11-01 20:40:48', 'b7f204c4-b7d7-4abe-a4a6-3a6dc5a7d5e1');
INSERT INTO `microchip_classify_log` VALUES ('dedc6b7e-cbb2-15ec-64a4-30d44537aa7e', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-10-06 04:11:21', '2d29a20f-3196-7d1d-7eee-3bb79888a0af');
INSERT INTO `microchip_classify_log` VALUES ('df61e76a-9275-74b7-9799-a48707215787', '0.88', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-09-02 10:21:13', 'bb567be3-26e3-0b62-7fe8-015ccdadba04');
INSERT INTO `microchip_classify_log` VALUES ('dfac2276-95d9-fd5a-1d6d-e80bb3db5c99', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-02-08 04:20:55', 'a79680c2-6360-0ceb-d66c-e3fc7b3beb83');
INSERT INTO `microchip_classify_log` VALUES ('dfcc99ac-77f5-ad47-6e6e-55c696d7e361', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-02-24 04:39:56', '4ae1fada-b254-f5b0-3c37-278c7dcd9de3');
INSERT INTO `microchip_classify_log` VALUES ('dfecad29-75f7-fb39-d8bb-ad8ab8505d77', '0.81', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-01-13 19:54:02', '01475b0b-0612-bc32-1f97-3324b2482d96');
INSERT INTO `microchip_classify_log` VALUES ('dffda628-e937-2dff-e935-187affa43944', '0.97', '0.96', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2017-07-22 14:38:59', '6660ed47-37c0-493c-9924-60e89148a27e');
INSERT INTO `microchip_classify_log` VALUES ('e01de5fc-f92f-e885-1eb3-a444db73054d', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-04-13 21:12:04', '34ad57cb-d49e-7cee-e444-35993538e9b8');
INSERT INTO `microchip_classify_log` VALUES ('e060f98d-ab23-cc85-044a-07d557cff83e', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-02-24 21:56:19', '3661739f-c0ee-ec8a-ca5d-701b1bb54875');
INSERT INTO `microchip_classify_log` VALUES ('e067ddcc-f060-8bc7-b2e0-9deef8c721b2', '0.97', '0.98', 1, 'CQI-S-NG', 1, 'CQI-S-NG', '2002-12-08 07:20:55', '9e520339-956b-cc23-adca-e1edbbb21665');
INSERT INTO `microchip_classify_log` VALUES ('e0921ed0-7038-267e-5449-c1c2b75e9093', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-03-12 12:54:28', '4fee072e-10f7-8a3b-5136-1f745010bc31');
INSERT INTO `microchip_classify_log` VALUES ('e092ef1c-19ae-df2d-2020-d3b2efe13297', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-12-04 07:15:15', 'b828dbcb-9238-82a2-19fc-e0e97c80873e');
INSERT INTO `microchip_classify_log` VALUES ('e0acacda-4273-7cd2-b66b-fec9097539d3', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-04-09 16:17:26', '54ac20e7-f4a3-2996-a53a-2f4f389e8058');
INSERT INTO `microchip_classify_log` VALUES ('e0adc96b-9ebf-0190-ea07-ee89a6091c89', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-05-11 18:14:55', '63f9898e-8024-30a3-3882-18d2a3660df3');
INSERT INTO `microchip_classify_log` VALUES ('e104b56b-3364-6364-5257-717bcbaec3d9', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-11-16 13:52:17', '7b6b6197-0ba6-0347-dba1-1b38c110f4c4');
INSERT INTO `microchip_classify_log` VALUES ('e11fc833-0df9-66cb-2dcf-3bfb486e02b2', '0.65', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-01-01 07:00:02', 'b95a2d48-8b46-0984-dda3-409060e9ac3f');
INSERT INTO `microchip_classify_log` VALUES ('e133beb6-02f0-069d-2114-f4dbfaff59af', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-10-25 22:14:24', '9a88dd07-c0c4-7f91-adc2-dc85d8fb2476');
INSERT INTO `microchip_classify_log` VALUES ('e2509499-27d7-34e5-4f8a-50b2c9087523', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-07-19 19:58:25', '15e412ff-46d9-65d2-4f32-e0f784deef64');
INSERT INTO `microchip_classify_log` VALUES ('e26b1a5c-b65a-196f-b559-bf18afd24fdf', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-09-28 20:39:03', 'f4cfac09-c197-0048-3c15-e1f243908b62');
INSERT INTO `microchip_classify_log` VALUES ('e2864338-7111-8a07-8eba-799ed21d4658', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-03-27 06:35:41', '788a518a-d626-37c5-5a24-378c7138ad6a');
INSERT INTO `microchip_classify_log` VALUES ('e2d66e92-38d3-e582-445c-e8b7d37aaa97', '0.67', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-07-28 00:04:22', '54d6db16-23ad-7910-4926-e1845df958a8');
INSERT INTO `microchip_classify_log` VALUES ('e2e2c597-7575-01d7-8579-3d008123e943', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-09-04 22:42:33', 'e84018bb-e494-e522-6fc1-ce74e59d2132');
INSERT INTO `microchip_classify_log` VALUES ('e311da8a-914f-2a81-95fa-333c1fe4908f', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-02-08 04:08:41', '6dd7c484-bae2-f2c8-3607-3bfa94cbd916');
INSERT INTO `microchip_classify_log` VALUES ('e315122f-a1da-9d4a-3638-5ef0e9496409', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-05-16 07:25:08', '5c09a2da-9801-b513-5d52-7a67b16f4143');
INSERT INTO `microchip_classify_log` VALUES ('e321b066-9845-ecaf-1f77-cc35a1863e69', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-01-29 07:20:38', 'fc877179-b038-ed1d-2282-fe7510cf1fcf');
INSERT INTO `microchip_classify_log` VALUES ('e3876cea-b2f4-54ad-f34c-1302e9a851d3', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-04-24 03:52:43', '8af6e78d-a24f-9bdc-4aac-94de23c8fa52');
INSERT INTO `microchip_classify_log` VALUES ('e42e796a-a13e-79f5-1608-cb1bcd1fe59f', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-06-15 17:55:32', '24be7b9a-056a-834d-05b8-1ecef1a3205c');
INSERT INTO `microchip_classify_log` VALUES ('e4446a4b-80f7-d411-2ba9-ee2c634bcdb3', '0.32', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-09-21 07:14:43', '4e21d426-6a54-21a0-de86-067683a38e9b');
INSERT INTO `microchip_classify_log` VALUES ('e44b98df-3e42-4452-9b5a-94108d7c752b', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-03-11 06:49:32', '91bd86aa-20c0-3de5-2e4d-3804ddfa2c56');
INSERT INTO `microchip_classify_log` VALUES ('e5c3962a-3734-07d6-2d17-f8a5d2b83f45', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-06-28 17:49:23', '4465ee39-6d40-650d-a7ba-e41a810e594e');
INSERT INTO `microchip_classify_log` VALUES ('e622d04b-533e-ee27-72f7-4adf54427dad', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-10-13 13:56:23', 'c7379393-760f-a102-a8d8-d491de4568f5');
INSERT INTO `microchip_classify_log` VALUES ('e62576cb-5a76-cab1-ca17-a0fa9efeeee4', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-12-27 19:28:28', '231797a8-deff-e045-ad6a-9eb72a278194');
INSERT INTO `microchip_classify_log` VALUES ('e63c5ae9-22e4-cd16-58af-95abbb284c57', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-05-22 00:02:45', '0ac474cb-6da7-99fc-983d-f68fd6628007');
INSERT INTO `microchip_classify_log` VALUES ('e6453508-6098-1c26-bc23-b9bd842e4c03', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-07-16 06:35:21', '7b3f2719-1f6c-2df7-6fea-f1ba9781b800');
INSERT INTO `microchip_classify_log` VALUES ('e67970e1-3519-685c-6ddc-42efff6ca880', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-11-13 08:22:39', 'a780fee6-a0ec-d953-e2c9-2af0d5f1f020');
INSERT INTO `microchip_classify_log` VALUES ('e6b05fb3-f8cf-6759-ba77-ed39c20f87ad', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-06-15 12:25:04', '93b5976d-9989-ee0b-9f9e-2b626d8d0aa5');
INSERT INTO `microchip_classify_log` VALUES ('e6c7914b-06df-7565-335b-c2a4b9b208b5', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-08-11 14:45:41', '9415cd85-edad-c25a-1f38-51edebd341b9');
INSERT INTO `microchip_classify_log` VALUES ('e6f4fc38-32cd-3318-bfb8-23691014e642', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-03-09 15:19:09', 'fc38397c-4969-902d-a24d-5e6ee6a92b04');
INSERT INTO `microchip_classify_log` VALUES ('e6f680e2-34f3-75f9-1ffd-50c33e442133', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-03-06 09:50:40', '548193df-46ef-7105-3427-18ba9f4dee8f');
INSERT INTO `microchip_classify_log` VALUES ('e6fc2b63-3ab2-5a00-d794-5e5f501f23ab', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-08-07 02:25:04', 'a03e7855-dc60-e5e0-ed5b-c9c64f43e0ca');
INSERT INTO `microchip_classify_log` VALUES ('e70bb610-8c24-8ba4-c7fc-d0a6b5e67208', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-01-22 09:27:16', '1a73a879-401a-dd08-eea6-13829c6f565f');
INSERT INTO `microchip_classify_log` VALUES ('e71d277c-ba73-e1e3-70d2-cd2374b0a20a', '0.97', '0.97', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2015-05-12 08:38:11', 'b354aefa-41f1-accf-da1c-34865b7940dd');
INSERT INTO `microchip_classify_log` VALUES ('e766c02c-0fe3-5ab7-484d-84f79e0a41e4', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-01-16 17:00:03', '72481af2-e843-f040-5bdd-716186a0bb8c');
INSERT INTO `microchip_classify_log` VALUES ('e7769210-0618-dd74-7648-81a4413ddf0e', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-01-16 01:36:01', '8186582f-f85a-eae1-10b8-36b479b75329');
INSERT INTO `microchip_classify_log` VALUES ('e7add350-1dcc-3dd3-ec40-092fd5d14c0f', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2021-11-27 05:27:55', '4f312185-2b96-980c-21fa-5a6eb77a32c5');
INSERT INTO `microchip_classify_log` VALUES ('e7c70c73-9d1a-4b22-1a8d-8d67528e39e1', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-01-02 00:46:59', '475a66d1-8a42-3388-dd3a-31bbfb6ecc57');
INSERT INTO `microchip_classify_log` VALUES ('e7fe89b3-8cb6-f1c7-ada7-ce1745ce4996', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-07-05 18:21:26', 'bd8c3e10-d040-6e71-e272-9127a366eb54');
INSERT INTO `microchip_classify_log` VALUES ('e85d38da-6d6c-e426-6202-bc70d1aa16a9', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-04-22 14:57:57', '2e0a5ff5-6ab8-557f-51fb-6a763e757a96');
INSERT INTO `microchip_classify_log` VALUES ('e8695408-d131-5ffd-192b-5fd6470dac0e', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-10-19 22:20:21', '4f21b631-c644-9d98-43fc-6e0ef9b261a2');
INSERT INTO `microchip_classify_log` VALUES ('e8d662b5-d0e4-c4c8-4b15-a6f414297d09', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-05-07 16:45:18', 'e0bf808e-fc1a-6afb-aaf4-912eb61c9175');
INSERT INTO `microchip_classify_log` VALUES ('e93a9007-015d-f64f-0074-8a8ad1e9aef1', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-07-16 20:11:28', '9024c63d-f9a7-54e8-6f88-0dd3cfd717a0');
INSERT INTO `microchip_classify_log` VALUES ('e9d61208-69ee-4d49-bfe6-16295755419d', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-01-20 10:08:04', '91faf881-17f7-1ebb-92ae-f7305b5f3c27');
INSERT INTO `microchip_classify_log` VALUES ('e9dd7cad-ba0c-04dd-d283-910cf2c1926f', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-03-22 00:16:20', '050b6e0a-82d3-e6ad-0ff4-bf7866d17885');
INSERT INTO `microchip_classify_log` VALUES ('ea3d85d7-f29b-cf05-8150-d36558dd8dce', '0.97', '0.90', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2013-05-06 23:02:18', '95ef8c7c-8b3c-c91e-96f2-ea26ee4730bd');
INSERT INTO `microchip_classify_log` VALUES ('ea99a474-4cc3-83f2-6c58-1d08efe9d1db', '0.77', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-05-31 10:46:09', '4bf4f557-9b19-f2c3-a6e8-241dee226245');
INSERT INTO `microchip_classify_log` VALUES ('eb5eeef7-0ed2-9c34-084a-819463c1447e', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-09-23 22:28:10', 'dc95076f-128c-6818-8425-9120741b1d0c');
INSERT INTO `microchip_classify_log` VALUES ('ec5d1567-f950-eb62-7514-62f6bf18d2f1', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-12-17 05:27:00', 'bd9c4c25-d1e6-18e0-94c8-dfe45529a502');
INSERT INTO `microchip_classify_log` VALUES ('ec9f677c-f02e-a7ee-a25c-ddcfd91cbb41', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-12-19 09:48:31', 'f0c3aeb3-e561-e052-1d2a-cbd18badcb3f');
INSERT INTO `microchip_classify_log` VALUES ('ecbacef5-c274-e1cd-ea67-5b65e64a7c5f', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-08-22 12:29:04', '8bc05d69-0d14-88ea-fd67-0a2f0373fa19');
INSERT INTO `microchip_classify_log` VALUES ('ecd1fc8b-2891-3d8a-f45d-257be5d444ec', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-04-08 14:01:15', '57d9294f-217f-4511-96f8-ad72634abfdf');
INSERT INTO `microchip_classify_log` VALUES ('ecd7a5a7-acca-9e63-19de-1728c5641474', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-02-08 08:02:31', '01475b0b-0612-bc32-1f97-3324b2482d96');
INSERT INTO `microchip_classify_log` VALUES ('ed9df2c1-26b7-7f10-8a89-a7170e32dad9', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-06-03 06:17:28', '8aa11648-f4c1-8be4-b89e-ea75a87cc956');
INSERT INTO `microchip_classify_log` VALUES ('eda8f946-9af7-0f38-7243-1faf8ae2466f', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-12-22 12:38:45', 'cbbe035f-a752-d55c-f482-0c4a3d79d02a');
INSERT INTO `microchip_classify_log` VALUES ('edbe69cd-2ed8-d203-ba4a-4757f1599e9f', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-01-29 19:56:36', '2b53ffe8-eb9a-fd95-4209-56bd538d82e2');
INSERT INTO `microchip_classify_log` VALUES ('edc972ff-53ba-4b25-7815-8983c8648868', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2004-09-29 10:38:56', '1a480b99-9854-e1f0-4429-ebc312b0e9bb');
INSERT INTO `microchip_classify_log` VALUES ('ee28f087-e05b-d1ba-c658-06d2afb79762', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-05-14 14:12:30', '86ae99d6-e274-5a6b-afc0-bb0c19ce183b');
INSERT INTO `microchip_classify_log` VALUES ('ee329b61-4791-9c2d-69af-3d20601ed08b', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2009-01-03 18:50:52', '28fa47cf-df5b-a145-efce-381734432875');
INSERT INTO `microchip_classify_log` VALUES ('ee6a3646-c110-fc47-955f-6cc135003f64', '0.97', '0.96', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-02-23 22:35:09', '3fc55b15-93a1-1d47-034e-50ed3fbdffd0');
INSERT INTO `microchip_classify_log` VALUES ('eeebdfb2-c1ee-e8f8-daa2-9228d5e68748', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-02-04 16:24:34', '9a0039d2-5ed3-3bf2-22f5-9134fa8ce178');
INSERT INTO `microchip_classify_log` VALUES ('ef430d76-3164-280c-9e18-20e6a03fbc89', '0.97', '0.91', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-02-04 05:34:57', 'adb04b8c-c23a-fa9b-b0ee-4119e1d3df76');
INSERT INTO `microchip_classify_log` VALUES ('f0264b18-967e-3b51-18a4-bf7cf209c712', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2020-02-19 17:50:46', '03325039-452c-8be6-5112-b158e3efb6a1');
INSERT INTO `microchip_classify_log` VALUES ('f06b27c0-d8d6-0bf5-f958-e42793951680', '0.40', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-02-19 09:46:39', 'b6432154-b1fe-52c6-b3ae-c581212289e4');
INSERT INTO `microchip_classify_log` VALUES ('f0cc0f4a-201a-e978-406a-ca71c85c13ad', '0.97', '0.90', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2019-11-06 09:24:42', 'f6762eba-9cf6-d9d9-4c52-48c7217db024');
INSERT INTO `microchip_classify_log` VALUES ('f10619ae-a63a-7d59-8ef0-b2d85e617a0b', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-11-25 09:06:06', 'be032611-3bad-18d5-fd99-37068a1aba62');
INSERT INTO `microchip_classify_log` VALUES ('f148c5a2-b39e-80fe-9621-89cc64f86576', '0.10', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-07-13 02:57:35', '30ae6430-8920-bd21-e41c-aeea251e434d');
INSERT INTO `microchip_classify_log` VALUES ('f1506f87-dd3e-14d2-a7e5-409f9e053ea9', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-09-05 22:04:10', 'b5bcb33f-7d85-5126-15d8-026664ba4f1d');
INSERT INTO `microchip_classify_log` VALUES ('f1aebba2-c587-b0db-9160-138a64f652e2', '0.97', '0.97', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-02-11 05:07:01', '09c61de2-b974-f278-5a7e-c9853e1a20b2');
INSERT INTO `microchip_classify_log` VALUES ('f1b42e2b-32f5-1655-fe01-b232ec10c087', '0.97', '0.98', 1, 'CQI-S-NG', 1, 'CQI-S-NG', '2007-06-04 10:37:05', '06bdb058-9378-d2fe-6e97-d9bc24771d41');
INSERT INTO `microchip_classify_log` VALUES ('f1eb1fca-4c07-e133-2ae9-4daa7779fe7e', '0.97', '0.96', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2000-12-14 03:45:31', '1da2ecd5-4273-c969-e008-d01a417d7ed3');
INSERT INTO `microchip_classify_log` VALUES ('f1f304e8-61c3-216f-c44e-1ca5731c4389', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-11-21 02:44:28', '00cf721b-7d17-c086-5ad0-ec77f8354818');
INSERT INTO `microchip_classify_log` VALUES ('f24bc09a-093f-6b24-092d-1f2b90de0348', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-01-21 15:14:33', '94ebeb65-7d34-4097-e6d9-162dc3fc1e32');
INSERT INTO `microchip_classify_log` VALUES ('f272f40a-a3c3-715a-b832-529c9fef362d', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-03-19 05:19:11', '512f3414-21ac-d3d7-38a1-66f773f3f735');
INSERT INTO `microchip_classify_log` VALUES ('f2a3d24d-c4d4-9b01-26d4-79053cabff72', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-NG', '2017-05-02 03:27:35', '4897bf24-0a26-41cc-8c27-c906c2ca2ebf');
INSERT INTO `microchip_classify_log` VALUES ('f2abab10-7f9c-3a28-36ad-d60506a53c2c', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-12-04 06:01:15', '974632cb-85a6-4ad7-b978-6379087d23df');
INSERT INTO `microchip_classify_log` VALUES ('f2e21c8e-9226-8627-19cf-e9a5565f4299', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-05-12 12:00:12', '9794c064-8955-5763-f9f6-54049bc969f0');
INSERT INTO `microchip_classify_log` VALUES ('f3386e28-bb36-cc22-ecba-e9a1ff48271a', '0.97', '0.94', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-10-19 14:01:55', '4b0efee6-0d14-0fa9-6a62-f1b167b2b512');
INSERT INTO `microchip_classify_log` VALUES ('f4cb4226-b2c4-b5e7-2f20-bdd4a522fb07', '0.16', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-03-10 14:56:51', 'd1c1c5c0-9f19-be33-a18b-dae8632930d1');
INSERT INTO `microchip_classify_log` VALUES ('f4d8c950-3f4f-aab4-4573-bb59cf8ee361', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-05-04 14:56:14', '8c979f3a-e65f-e702-3075-99232f13098c');
INSERT INTO `microchip_classify_log` VALUES ('f4ef5a6a-99f0-5765-2946-45d875b13766', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2003-09-15 03:49:20', '34221ebf-488e-6702-9e9e-5d1233eab97a');
INSERT INTO `microchip_classify_log` VALUES ('f4f433c1-dc12-cdf4-087b-57320953955e', '0.97', '0.96', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2017-05-27 13:24:59', '9f07379c-40d0-3194-73b7-60abe307da05');
INSERT INTO `microchip_classify_log` VALUES ('f5124bce-72b4-8e84-5d67-468ae8689a17', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2008-07-24 01:48:42', '8ffcdfba-53a7-0332-030a-d0d35c266073');
INSERT INTO `microchip_classify_log` VALUES ('f5d8aaff-370f-db4c-1a36-7dc14a87baa1', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-06-14 12:35:53', '5c18b65f-184e-8008-f0d8-72f24cc2b836');
INSERT INTO `microchip_classify_log` VALUES ('f60924ca-6057-fd50-4ae5-48dd9e6de430', '0.97', '0.94', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-11-11 14:47:03', '0766809d-a7be-b964-af7b-52af5ca3085c');
INSERT INTO `microchip_classify_log` VALUES ('f6131f6b-7ae6-ef0e-71d4-1ce7efaa9669', '0.97', '0.93', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-07-02 11:57:58', 'f289b9c6-2c0b-8aa0-bdea-9a355c2835b9');
INSERT INTO `microchip_classify_log` VALUES ('f631c380-8fda-4f5f-30ac-cff6f15d472e', '0.97', '0.91', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2011-05-02 06:33:15', 'd1c1c5c0-9f19-be33-a18b-dae8632930d1');
INSERT INTO `microchip_classify_log` VALUES ('f652bab6-57b4-8afb-91f0-0746fc95e583', '0.97', '0.97', 2, 'CQI-S-NG', 1, 'CQI-S-Good', '2012-08-25 22:35:45', '1e92beed-328d-ba9d-8b3d-ea62dee42712');
INSERT INTO `microchip_classify_log` VALUES ('f653a7df-d80d-d656-b4ac-b2ce58f6ad0d', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2019-04-16 04:39:02', 'be8c330c-9beb-57dd-9278-5f46c45cb82b');
INSERT INTO `microchip_classify_log` VALUES ('f686e9a6-8b63-968b-2ee9-197c2814a69a', '0.97', '0.92', 1, 'CQI-S-NG', 1, 'CQI-S-Good', '2016-11-04 00:02:45', '9ba18631-dd71-d073-6d52-45031082a294');
INSERT INTO `microchip_classify_log` VALUES ('f78fbe03-61d9-b033-ad51-d5a014e294af', '0.97', '0.96', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-07-14 09:45:01', 'b68d4ae6-c94c-deab-f0e3-05069d4a55a9');
INSERT INTO `microchip_classify_log` VALUES ('f7f54c4f-fb7a-3ddd-39ba-287792256d5d', '0.97', '0.99', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-10-24 22:39:25', '6d09bd63-780a-13ef-10d1-2e11142b5a7b');
INSERT INTO `microchip_classify_log` VALUES ('f7fac4e9-969e-81bd-1730-ea607966cbb1', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2022-09-13 21:07:28', '34ad57cb-d49e-7cee-e444-35993538e9b8');
INSERT INTO `microchip_classify_log` VALUES ('f80bca61-6441-adda-d6f6-9d1d82c070ea', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2015-02-25 05:55:45', 'e0bf808e-fc1a-6afb-aaf4-912eb61c9175');
INSERT INTO `microchip_classify_log` VALUES ('f8f7a23e-1a08-e8eb-d3ed-b17fc8f39f90', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2014-06-11 17:00:01', '00cf721b-7d17-c086-5ad0-ec77f8354818');
INSERT INTO `microchip_classify_log` VALUES ('f9085dd7-dbe0-671b-7fd6-ecb3c520433c', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2001-04-15 22:34:15', '8c979f3a-e65f-e702-3075-99232f13098c');
INSERT INTO `microchip_classify_log` VALUES ('f9e3c5fa-077d-b2c3-55ae-8dcc2b3ed866', '0.97', '0.92', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-10-08 01:09:04', '4f21b631-c644-9d98-43fc-6e0ef9b261a2');
INSERT INTO `microchip_classify_log` VALUES ('fa416ae6-f540-1cd1-9716-5ee63fd48b37', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2006-07-10 17:58:42', '7d74280b-98c8-3e3b-b8b7-a0aefde10549');
INSERT INTO `microchip_classify_log` VALUES ('fb9ef933-1145-63ac-be2d-ad93248178fa', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2005-01-31 07:44:26', '3c532a9b-e920-a09e-dfc2-4cc5b7087e31');
INSERT INTO `microchip_classify_log` VALUES ('fc0d0e48-d218-fff0-0884-a3cd5afe8e43', '0.97', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2007-06-14 09:12:43', '75d4d163-31e2-e423-e5ec-889f21830b6d');
INSERT INTO `microchip_classify_log` VALUES ('fc41b643-bf05-5167-5a3a-99ff86d7f27b', '0.97', '0.90', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2010-04-26 05:13:22', 'b0cc7db6-7bab-e7eb-844b-829261e7cef2');
INSERT INTO `microchip_classify_log` VALUES ('fd032a89-4863-b882-862c-3822880f6bd9', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-09-25 06:03:10', '952d3e63-83c8-4247-cb91-ce48611ca8cc');
INSERT INTO `microchip_classify_log` VALUES ('fd0556ea-e79f-89b7-4817-73eec0b465c4', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-07-11 02:42:46', 'df9656c1-97e0-07c7-4aaf-c32f84358e5f');
INSERT INTO `microchip_classify_log` VALUES ('fd5c302a-3603-8372-8908-0b7de54d321c', '0.97', '0.97', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2017-02-26 02:09:12', 'cfcfd771-37b1-f364-2c9b-7e4418cbd5bd');
INSERT INTO `microchip_classify_log` VALUES ('fe33ae3c-c757-78d6-23bb-f8582cd57eb5', '0.97', '0.90', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-01-25 18:01:07', 'ce82f1ce-2302-20d3-8d05-ca234a75a360');
INSERT INTO `microchip_classify_log` VALUES ('fe42bdcc-654b-c42c-a11f-403db3f567c5', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2018-12-19 10:00:22', '57652f70-5bf9-9615-646b-9006c31eb2ff');
INSERT INTO `microchip_classify_log` VALUES ('fe6d329b-d63e-25af-6bc2-cca5b8fe4af1', '0.60', '0.99', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-03-29 00:15:03', 'b3974246-741f-83a9-8a6e-0bb933230d3b');
INSERT INTO `microchip_classify_log` VALUES ('fe782b2e-4939-eef3-f633-a86c66d54f7f', '0.76', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2000-11-22 17:01:16', '0b6a9b52-04a7-0afe-e562-dd3bc23c02fc');
INSERT INTO `microchip_classify_log` VALUES ('fea89127-bb1c-61e9-7694-2a6a3076d07c', '0.97', '0.92', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-06-07 01:18:25', 'e7dc5e44-e09d-fce8-d801-e5cda354c1f0');
INSERT INTO `microchip_classify_log` VALUES ('feab448e-044c-0bd6-6143-829cb1b7bfe5', '0.97', '0.95', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2002-10-07 12:48:04', 'fe7ece18-ae66-3a81-3282-1282c572e85a');
INSERT INTO `microchip_classify_log` VALUES ('fec2b483-0a77-6d41-4035-6697cbc542b8', '0.97', '0.98', 1, 'CQI-S-Good', 1, 'CQI-S-Good', '2013-05-11 22:39:20', '815d2000-c6ce-6998-5763-d5d387ba8bcc');
INSERT INTO `microchip_classify_log` VALUES ('ff10471f-5cfd-2141-9fb7-3186e619cb55', '0.97', '0.95', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-03-11 02:20:53', '92c8d35b-df1a-188a-64b2-85b45d755077');
INSERT INTO `microchip_classify_log` VALUES ('ffa199e5-e91e-7181-7500-ab90b9d91ea4', '0.97', '0.93', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2012-01-01 21:42:07', '3bafe2f8-1f57-e912-058e-011d1d1aac08');
INSERT INTO `microchip_classify_log` VALUES ('ffc9eebd-d12a-51de-6d95-3d57ec5bb450', '0.97', '0.98', 2, 'CQI-S-Good', 1, 'CQI-S-Good', '2016-07-23 14:41:23', '5dc51344-0e41-3395-ebfa-62405941c533');

-- ----------------------------
-- Table structure for microchip_pin_log
-- ----------------------------
DROP TABLE IF EXISTS `microchip_pin_log`;
CREATE TABLE `microchip_pin_log`  (
  `uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `threshold` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调用阈值',
  `result` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `confidence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类或检测的置信度',
  `index` bigint NULL DEFAULT NULL COMMENT '分类或检测的类别',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类或检测的类别',
  `modelKind` bigint NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `location` json NULL,
  `quality_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测id',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of microchip_pin_log
-- ----------------------------
INSERT INTO `microchip_pin_log` VALUES ('0011a32e-4e93-bb8f-32e0-aea28b054897', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2001-03-23 02:01:09', '{\"x\": \"8788\", \"y\": \"5143\"}', '71af0c9e-9442-0a4f-4f10-f22b4ec25d3c');
INSERT INTO `microchip_pin_log` VALUES ('0027745a-e0dc-fc23-8006-cb84530694be', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2004-08-02 06:57:12', '{\"x\": \"5331\", \"y\": \"0962\"}', '0ff4e68a-42b3-4cf9-8b14-1b6292ac3431');
INSERT INTO `microchip_pin_log` VALUES ('014e4c8a-86ee-28bb-b64e-077c39aec0be', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2004-11-17 19:51:56', '{\"x\": \"2515\", \"y\": \"3143\"}', 'a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf');
INSERT INTO `microchip_pin_log` VALUES ('017e1662-8d98-ff25-bd71-1ae71417e5a4', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2015-09-17 04:07:01', '{\"x\": \"0824\", \"y\": \"5266\"}', 'd6d1c400-48c5-1dac-d7aa-f5fb7dd45589');
INSERT INTO `microchip_pin_log` VALUES ('018a3587-32c4-d3d3-b3d4-3c8bdd2510b2', '0.93', '48', '0.92', 1, 'pin', 1, 'pin', '2016-09-11 00:24:52', '{\"x\": \"7935\", \"y\": \"0854\"}', '9794c064-8955-5763-f9f6-54049bc969f0');
INSERT INTO `microchip_pin_log` VALUES ('019fe102-1714-a454-db4d-a493f96dda63', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2004-04-05 17:37:36', '{\"x\": \"1257\", \"y\": \"4380\"}', '9b49b423-fff8-8b54-905c-f139d6a4f64a');
INSERT INTO `microchip_pin_log` VALUES ('01db81fd-7901-d190-a472-ae7f6e0f7da4', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2020-04-04 04:11:40', '{\"x\": \"1019\", \"y\": \"2542\"}', 'fffcd95a-8d99-e14f-03ce-1083e8f292ba');
INSERT INTO `microchip_pin_log` VALUES ('01de9444-1bea-72d7-8a5a-6fbad3a5424a', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2022-06-10 16:57:32', '{\"x\": \"4685\", \"y\": \"3240\"}', '9b38954a-2ad2-e551-6edf-63e709f81453');
INSERT INTO `microchip_pin_log` VALUES ('01fcab46-0e86-4037-5091-2650568748d3', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2008-05-16 23:19:47', '{\"x\": \"6627\", \"y\": \"9346\"}', 'f198af61-ada8-4cbe-a6c9-c059be6d6a9b');
INSERT INTO `microchip_pin_log` VALUES ('02658eff-1e41-97ee-c397-64b5e7a5d999', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2021-08-31 22:45:18', '{\"x\": \"2561\", \"y\": \"6717\"}', 'be91cdd2-e450-541c-25c8-874923f264ad');
INSERT INTO `microchip_pin_log` VALUES ('02f8ac62-17a2-2e81-360b-a89b291259e7', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2010-01-27 09:29:50', '{\"x\": \"5283\", \"y\": \"0934\"}', '6173af7d-1ff9-6a72-bab0-dd43f2635b35');
INSERT INTO `microchip_pin_log` VALUES ('0319f069-4e9e-2acf-229c-daf4f69f0120', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2022-03-31 10:40:36', '{\"x\": \"2301\", \"y\": \"9863\"}', 'a1a343a5-8dc1-2145-ea43-8ee84576ad9b');
INSERT INTO `microchip_pin_log` VALUES ('03326a65-5551-f8f2-dc12-6a7d5ba8a119', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2015-07-08 21:59:23', '{\"x\": \"0529\", \"y\": \"4871\"}', '11c2ac6a-ad6d-a9d1-694b-db9d2a5ae67f');
INSERT INTO `microchip_pin_log` VALUES ('03de1cbe-bd3b-6a70-fec3-4e096fe1c769', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2019-04-01 06:53:01', '{\"x\": \"1501\", \"y\": \"2662\"}', 'f198af61-ada8-4cbe-a6c9-c059be6d6a9b');
INSERT INTO `microchip_pin_log` VALUES ('04be3c18-994d-bdf8-49d8-b6e8b40a8378', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2010-12-05 01:13:56', '{\"x\": \"3039\", \"y\": \"2594\"}', 'e7592694-c8a2-a15c-ff33-bad920c177f8');
INSERT INTO `microchip_pin_log` VALUES ('051d5db9-4ab1-67b2-8b8b-072feda5caeb', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2007-06-10 09:30:50', '{\"x\": \"8349\", \"y\": \"5776\"}', '2d29a20f-3196-7d1d-7eee-3bb79888a0af');
INSERT INTO `microchip_pin_log` VALUES ('0537bb37-9468-ba78-f1b1-d49d1cd1f73e', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2003-08-12 08:10:38', '{\"x\": \"4324\", \"y\": \"4987\"}', '7460c7d3-c207-5ad8-ea1d-fc155bd09719');
INSERT INTO `microchip_pin_log` VALUES ('05811c4b-ad25-6344-c96f-a52e2b88a9cb', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2014-09-14 12:29:00', '{\"x\": \"0689\", \"y\": \"0203\"}', '9b7712de-0707-d0c6-ae65-48e0e5c42236');
INSERT INTO `microchip_pin_log` VALUES ('0589b9b5-ac5b-7d00-66f3-44bfea04dc24', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2008-10-18 04:39:38', '{\"x\": \"5336\", \"y\": \"1377\"}', '53eb816d-75bf-d0a3-7793-7703f9ad15f0');
INSERT INTO `microchip_pin_log` VALUES ('0591c909-43fe-5cb0-4e23-1a1b5568b14d', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2013-06-24 04:03:09', '{\"x\": \"1911\", \"y\": \"4737\"}', 'acb64a9e-bd26-eb16-1482-2c00b9e4137b');
INSERT INTO `microchip_pin_log` VALUES ('05d225ff-a299-f815-1265-242e16e05d26', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2001-05-04 13:07:59', '{\"x\": \"7402\", \"y\": \"5843\"}', 'b354aefa-41f1-accf-da1c-34865b7940dd');
INSERT INTO `microchip_pin_log` VALUES ('05f6fd15-1750-48ea-9473-e92336cd3c65', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2017-03-29 03:54:59', '{\"x\": \"5741\", \"y\": \"9308\"}', '9c8784b5-cfdc-4a67-742c-5c6816680a87');
INSERT INTO `microchip_pin_log` VALUES ('06105fbe-4f51-672f-3685-11a928d27dd1', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2001-05-22 13:56:52', '{\"x\": \"9012\", \"y\": \"3808\"}', '8186582f-f85a-eae1-10b8-36b479b75329');
INSERT INTO `microchip_pin_log` VALUES ('06887a26-0872-2e62-4039-7311052b296e', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2015-12-25 13:13:27', '{\"x\": \"9606\", \"y\": \"4812\"}', '2d29a20f-3196-7d1d-7eee-3bb79888a0af');
INSERT INTO `microchip_pin_log` VALUES ('070da28c-fbf6-6e67-28f2-57bd19c0e960', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2007-03-06 03:10:54', '{\"x\": \"0661\", \"y\": \"4468\"}', 'd4c2e776-fd0d-dc40-1f91-bc246a0d082b');
INSERT INTO `microchip_pin_log` VALUES ('07ee4fd8-43ba-638d-0fda-88bdd228295d', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2005-04-06 03:26:29', '{\"x\": \"7476\", \"y\": \"3887\"}', '64d692c6-8ec3-ffb3-6f71-d7f40cc989a7');
INSERT INTO `microchip_pin_log` VALUES ('080bc36f-3649-d6d2-2389-83f8f7385c8f', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2013-06-25 14:24:35', '{\"x\": \"8490\", \"y\": \"1096\"}', 'fcb174c2-edf0-21d0-ea73-726b06cb5d7c');
INSERT INTO `microchip_pin_log` VALUES ('081e6841-abfe-3637-6843-c0fda5cfbd9d', '0.97', '37', '0.92', 2, 'pin', 1, 'pin', '2020-03-28 08:59:08', '{\"x\": \"3981\", \"y\": \"8105\"}', 'd4e13fce-bd56-c0c6-4de4-cd915af37fcb');
INSERT INTO `microchip_pin_log` VALUES ('083393b6-006c-46ad-fad4-7fb9e4243a76', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2013-03-15 00:09:59', '{\"x\": \"2711\", \"y\": \"0005\"}', '673f1a05-3aa7-09c6-2f29-b2cfbe91f215');
INSERT INTO `microchip_pin_log` VALUES ('08c3123d-96e2-ee15-00f6-26c6102c73a6', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2007-08-29 12:04:44', '{\"x\": \"7705\", \"y\": \"7129\"}', '9ec590c0-c18b-180c-47df-9396fbb88951');
INSERT INTO `microchip_pin_log` VALUES ('08d1b63f-d64a-1d73-3077-75aed2949402', '0.68', '48', '0.97', 2, 'notpin', 1, 'notpin', '2017-05-19 15:57:41', '{\"x\": \"9018\", \"y\": \"0943\"}', 'bab713b3-f8f3-fa05-d39f-742da9d516ab');
INSERT INTO `microchip_pin_log` VALUES ('09489893-98b9-8088-e716-dee61adf6ac6', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2001-04-29 07:11:51', '{\"x\": \"6845\", \"y\": \"0557\"}', '91f00930-32f0-85ee-d9f3-1a8a01d247ce');
INSERT INTO `microchip_pin_log` VALUES ('09a025e8-a096-0400-0cfc-b079db6c29de', '0.79', '48', '0.92', 2, 'pin', 1, 'pin', '2000-05-23 10:02:11', '{\"x\": \"4686\", \"y\": \"7499\"}', '425a3c02-96ea-89b2-453b-b33f81d84b95');
INSERT INTO `microchip_pin_log` VALUES ('0a02aa80-01e2-78c7-4673-35dc958714df', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2014-05-20 09:53:30', '{\"x\": \"4133\", \"y\": \"4945\"}', '95e1edcc-776f-f4a9-e9aa-77bbcc765e8f');
INSERT INTO `microchip_pin_log` VALUES ('0a5cdfe4-3d6f-0c3c-c419-69aebb574e39', '0.30', '48', '0.94', 1, 'notpin', 1, 'pin', '2005-01-24 00:59:21', '{\"x\": \"5591\", \"y\": \"1209\"}', 'e7dc5e44-e09d-fce8-d801-e5cda354c1f0');
INSERT INTO `microchip_pin_log` VALUES ('0a6b4e95-a355-25ca-fc37-dd6f104e94a2', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2019-10-22 09:09:23', '{\"x\": \"1793\", \"y\": \"8361\"}', 'edad3c50-c605-5016-83c1-839647408787');
INSERT INTO `microchip_pin_log` VALUES ('0a8c487d-b571-57d2-dedf-d4ab94a4d03c', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2014-05-19 07:34:11', '{\"x\": \"5549\", \"y\": \"8571\"}', 'c8df7e92-f87c-7606-c392-98ac70f99ba6');
INSERT INTO `microchip_pin_log` VALUES ('0a9302d3-7bcc-92a6-90cb-4bd8152db963', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2007-09-13 23:07:09', '{\"x\": \"1907\", \"y\": \"5979\"}', 'c81cf2dc-a82e-1ce2-548a-22ef9c343ae0');
INSERT INTO `microchip_pin_log` VALUES ('0ad811ba-b4fc-b53b-1a15-5ba087ceca33', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2006-08-04 09:02:41', '{\"x\": \"3847\", \"y\": \"2340\"}', '57f38b29-d770-233c-cc0c-aae313c25624');
INSERT INTO `microchip_pin_log` VALUES ('0b6ee902-8031-3998-327e-cfd9cae4edc4', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2019-02-17 12:32:23', '{\"x\": \"2064\", \"y\": \"6842\"}', '743c6db4-4adb-6291-62d3-0f1100ac5503');
INSERT INTO `microchip_pin_log` VALUES ('0b899b8d-a2f5-3395-2589-cb63c95ede45', '0.97', '02', '0.94', 1, 'notpin', 1, 'notpin', '2018-08-30 20:02:04', '{\"x\": \"4217\", \"y\": \"2949\"}', '0f782e7f-13ab-9e2e-a1b5-297d48905651');
INSERT INTO `microchip_pin_log` VALUES ('0ba3a8b7-3d29-2c10-de95-033b6ec3ace4', '0.97', '48', '0.90', 2, 'pin', 1, 'pin', '2008-01-06 17:59:22', '{\"x\": \"7897\", \"y\": \"1196\"}', '0f7544fe-d334-ceaa-35dd-0f42ba81c0e8');
INSERT INTO `microchip_pin_log` VALUES ('0ce5a9f1-861a-d2c0-69be-fc9637861cbd', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2010-12-10 10:30:57', '{\"x\": \"2264\", \"y\": \"0107\"}', '48ecbcfe-5178-1d7a-797d-efd9c55a70b8');
INSERT INTO `microchip_pin_log` VALUES ('0cf46937-2a3d-d901-434c-02a7fe657b73', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2003-08-09 05:19:36', '{\"x\": \"7919\", \"y\": \"4716\"}', 'b583dc18-0d22-a555-1a9b-90cb5c30934b');
INSERT INTO `microchip_pin_log` VALUES ('0d051b54-02a4-8909-ef26-2cc0369d3c6d', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2015-01-07 16:48:32', '{\"x\": \"7463\", \"y\": \"4416\"}', '3a8e7930-7148-9d1f-a956-49fa28a3fbce');
INSERT INTO `microchip_pin_log` VALUES ('0d25cf18-b5f8-f2ad-43c1-5b0d8209b055', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2006-07-17 19:18:14', '{\"x\": \"1064\", \"y\": \"2333\"}', '56220e03-88d9-00a4-1b47-61382b8270eb');
INSERT INTO `microchip_pin_log` VALUES ('0d49df83-d0d3-ce77-7d31-6b014429ea16', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2017-08-25 07:22:18', '{\"x\": \"4213\", \"y\": \"7559\"}', 'dc0219aa-ce90-5071-3766-fe6e95fe1368');
INSERT INTO `microchip_pin_log` VALUES ('0d6b7060-cec1-a79f-f157-3acfb3b9deee', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2018-02-06 08:34:55', '{\"x\": \"5461\", \"y\": \"6481\"}', 'd1af995f-4435-dbc2-bd29-07a273087f5a');
INSERT INTO `microchip_pin_log` VALUES ('0d7da8a1-d6be-98c2-3b7f-ffe5901ab23c', '0.60', '48', '0.99', 1, 'pin', 1, 'notpin', '2015-07-16 16:17:13', '{\"x\": \"5368\", \"y\": \"7942\"}', 'f198af61-ada8-4cbe-a6c9-c059be6d6a9b');
INSERT INTO `microchip_pin_log` VALUES ('0d8963bc-15d7-69a9-d163-e336773128a2', '0.58', '48', '0.92', 2, 'notpin', 1, 'notpin', '2012-04-04 06:09:24', '{\"x\": \"0143\", \"y\": \"3718\"}', '1b7ffdac-d3ca-371a-9dbe-4b514a741c2b');
INSERT INTO `microchip_pin_log` VALUES ('0de57e37-d7da-8f0a-580b-534b4b8a634c', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2016-05-11 02:07:33', '{\"x\": \"8189\", \"y\": \"9678\"}', '40e16d91-1f29-b9eb-b835-47894d68e84b');
INSERT INTO `microchip_pin_log` VALUES ('0e67e3bc-d005-ea96-6c27-8237040590c2', '0.97', '31', '0.96', 2, 'pin', 1, 'pin', '2020-08-05 16:11:33', '{\"x\": \"6582\", \"y\": \"7039\"}', '0edbc140-c349-abe0-3872-5472dac3742c');
INSERT INTO `microchip_pin_log` VALUES ('0e75eaa9-ee94-624a-f509-5cf15e45ac43', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2015-06-06 14:23:36', '{\"x\": \"7933\", \"y\": \"1988\"}', 'c97e8a2a-02c0-c3d5-c502-3588debc3e22');
INSERT INTO `microchip_pin_log` VALUES ('0ed0950d-1ceb-9aa2-1a07-3233a0ffacdf', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2016-12-07 19:37:14', '{\"x\": \"8108\", \"y\": \"4451\"}', '3a4aa369-8732-58e3-b3b4-dae4be82f359');
INSERT INTO `microchip_pin_log` VALUES ('0ed6a113-93de-f8cb-7fcd-24912a336c63', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2020-08-30 06:04:07', '{\"x\": \"9964\", \"y\": \"5517\"}', 'a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf');
INSERT INTO `microchip_pin_log` VALUES ('0ee98170-8784-daf6-657f-5bcb54c328f7', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2022-09-19 21:11:21', '{\"x\": \"8931\", \"y\": \"1287\"}', '22eef1f5-e0fc-143a-3ae4-b2b2201fb320');
INSERT INTO `microchip_pin_log` VALUES ('0efca46d-16f7-b2ab-03f8-4fd8a59a8960', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2003-02-25 00:17:46', '{\"x\": \"9214\", \"y\": \"3492\"}', '4fee072e-10f7-8a3b-5136-1f745010bc31');
INSERT INTO `microchip_pin_log` VALUES ('0f6d6ec8-85d1-8bca-082c-c260fd0dfa8c', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2019-01-10 04:40:50', '{\"x\": \"0464\", \"y\": \"7815\"}', '9123e5d1-a2be-3376-e521-28e1dde2387e');
INSERT INTO `microchip_pin_log` VALUES ('0faa2a2f-c5c3-5c98-6416-49c4cead7983', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2006-05-06 15:57:57', '{\"x\": \"9975\", \"y\": \"3595\"}', '9590ff0b-bd32-175e-80e6-8ef1d1cc4ee0');
INSERT INTO `microchip_pin_log` VALUES ('106c5ca3-e2c6-d414-d6da-1f1f1f35f24d', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2020-03-18 06:20:28', '{\"x\": \"5235\", \"y\": \"0035\"}', '6e326e62-acff-3572-8cf7-cf3e91bcc1f2');
INSERT INTO `microchip_pin_log` VALUES ('113678b0-f8f4-a348-6d15-7974a2b09181', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2003-08-14 00:33:58', '{\"x\": \"5095\", \"y\": \"6133\"}', '5d79cfbf-948e-ac6a-2a4c-fa7d93969924');
INSERT INTO `microchip_pin_log` VALUES ('1141f11f-f49e-2dbc-0c27-9d55c15610e0', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2016-04-23 20:03:25', '{\"x\": \"8022\", \"y\": \"0585\"}', '63f9898e-8024-30a3-3882-18d2a3660df3');
INSERT INTO `microchip_pin_log` VALUES ('114f3275-d390-e044-5942-e302d612bfad', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2002-07-27 19:04:02', '{\"x\": \"7304\", \"y\": \"6589\"}', 'c7154887-5cde-5b49-55e3-47c7dcf759c5');
INSERT INTO `microchip_pin_log` VALUES ('11d2328b-5881-dd9a-2926-e6ff9d0a131b', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2020-07-28 18:11:13', '{\"x\": \"5397\", \"y\": \"1733\"}', '9f03b4db-aac0-9869-0944-7560982bb079');
INSERT INTO `microchip_pin_log` VALUES ('11f3d7bd-b0b6-85fb-5312-7ff872568530', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2010-12-07 11:32:55', '{\"x\": \"2322\", \"y\": \"2938\"}', 'c857065d-1906-5eaa-523c-743843125d1c');
INSERT INTO `microchip_pin_log` VALUES ('1216fe4a-885e-82ec-54cc-22ce4b1a8201', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2007-03-01 20:45:09', '{\"x\": \"4919\", \"y\": \"1019\"}', '4b0efee6-0d14-0fa9-6a62-f1b167b2b512');
INSERT INTO `microchip_pin_log` VALUES ('121ebd02-b989-0c76-aa67-9706baafa008', '0.05', '48', '0.96', 2, 'notpin', 1, 'notpin', '2003-03-05 12:47:05', '{\"x\": \"7974\", \"y\": \"0396\"}', 'e807417c-57c3-1c0d-8b0e-8c6f6b6ec716');
INSERT INTO `microchip_pin_log` VALUES ('126487be-8fc9-c704-afbc-0a53592f6782', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2009-06-28 19:18:17', '{\"x\": \"2314\", \"y\": \"7059\"}', 'a97fec89-42d2-f244-0d20-6762695bbab7');
INSERT INTO `microchip_pin_log` VALUES ('13045e17-24a6-7535-2b7d-df194a32c5a6', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2017-10-08 11:07:48', '{\"x\": \"6861\", \"y\": \"2176\"}', '6efcfa47-a1a1-0347-673d-7459fc683ee9');
INSERT INTO `microchip_pin_log` VALUES ('136545fc-fdd1-4412-f1d4-e6ac3087d8dd', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2001-12-16 23:58:38', '{\"x\": \"7730\", \"y\": \"9157\"}', '2e4c24a9-8962-11e3-0ca7-7a8c4506b760');
INSERT INTO `microchip_pin_log` VALUES ('13a51627-b0ac-7bc1-9686-963f094456a1', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2013-04-25 03:53:16', '{\"x\": \"8697\", \"y\": \"6344\"}', 'afc34652-6389-9fa1-43da-cfb8c2022722');
INSERT INTO `microchip_pin_log` VALUES ('1476a89a-8911-9586-a78f-083a7a69f4b5', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2022-11-24 01:54:45', '{\"x\": \"3115\", \"y\": \"3536\"}', 'e3baf096-e922-2b6c-992d-3c44acb890ce');
INSERT INTO `microchip_pin_log` VALUES ('150850b0-4684-375d-1300-64c485f4d036', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2002-01-26 13:28:47', '{\"x\": \"1247\", \"y\": \"7971\"}', 'f289b9c6-2c0b-8aa0-bdea-9a355c2835b9');
INSERT INTO `microchip_pin_log` VALUES ('151769d1-3d2c-b854-d615-66848f8bbf53', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2002-11-21 05:24:19', '{\"x\": \"6846\", \"y\": \"5557\"}', '54232f5b-25fd-6493-118f-357b383248ca');
INSERT INTO `microchip_pin_log` VALUES ('156b0473-6ec2-ae56-885e-99aa0a901a20', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2002-09-22 02:33:02', '{\"x\": \"4400\", \"y\": \"0978\"}', '0b7cc1d5-4fa4-fe59-3a3d-f1bb4fb2d53b');
INSERT INTO `microchip_pin_log` VALUES ('15c467d4-75da-e25f-7965-1f7f0a5fe63a', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2001-08-18 08:53:29', '{\"x\": \"0010\", \"y\": \"0847\"}', '9c47ed48-f8f2-7374-9a4b-fffab69f9ad2');
INSERT INTO `microchip_pin_log` VALUES ('15e685c1-8136-6330-d3e9-c04db40e0581', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2017-07-10 12:13:48', '{\"x\": \"7626\", \"y\": \"8155\"}', 'b3aad300-33a4-f3d8-459e-8acb7b43b45f');
INSERT INTO `microchip_pin_log` VALUES ('16145c4e-927f-1c62-0442-33df62d6e81e', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2004-08-03 00:28:04', '{\"x\": \"4546\", \"y\": \"1859\"}', 'd1232856-6e1a-fc58-6737-cd2f29f1c5e6');
INSERT INTO `microchip_pin_log` VALUES ('164edf80-2755-179f-2dc5-2de8f7377ea6', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2012-03-16 20:29:10', '{\"x\": \"9566\", \"y\": \"3437\"}', '5d79cfbf-948e-ac6a-2a4c-fa7d93969924');
INSERT INTO `microchip_pin_log` VALUES ('1665614e-c609-445b-c2b9-9246c5d4f43a', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2003-08-12 10:24:33', '{\"x\": \"7900\", \"y\": \"1582\"}', 'd567ff59-ac54-ab06-9d58-a8a5901a9811');
INSERT INTO `microchip_pin_log` VALUES ('167ad990-ab0e-c4ba-cd3f-6eb93e4a44bb', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2006-10-19 00:32:36', '{\"x\": \"8653\", \"y\": \"9751\"}', '9dfefae6-f58b-0bcb-7238-ce7556d930da');
INSERT INTO `microchip_pin_log` VALUES ('16c004bc-5fa8-b1e4-a355-e8f0951bac43', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2006-08-05 14:00:16', '{\"x\": \"5908\", \"y\": \"4035\"}', '9ba18631-dd71-d073-6d52-45031082a294');
INSERT INTO `microchip_pin_log` VALUES ('17163a44-a0d9-14cd-093b-4e1b62e62ad0', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2021-05-27 06:00:11', '{\"x\": \"8026\", \"y\": \"3537\"}', '81d4cccd-2e5a-b45c-c1cb-91c788a0720c');
INSERT INTO `microchip_pin_log` VALUES ('17c36a00-8b09-4362-4370-3bc3ba19d1a0', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2000-07-13 11:55:06', '{\"x\": \"6410\", \"y\": \"7013\"}', 'fe9bf912-72b3-9a92-66ce-8b850219fe02');
INSERT INTO `microchip_pin_log` VALUES ('17cc0715-813a-78df-9b0e-dc7edb55e43d', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2003-09-01 20:35:00', '{\"x\": \"9445\", \"y\": \"2373\"}', 'a79cfe70-d69c-ffc7-669a-82e09c581578');
INSERT INTO `microchip_pin_log` VALUES ('17cf79ab-1035-da75-9172-0cd2302d52b5', '0.97', '48', '0.98', 2, 'pin', 1, 'pin', '2020-05-07 22:35:06', '{\"x\": \"0064\", \"y\": \"0602\"}', '1a113334-904d-c484-7469-f193c7d7ae8a');
INSERT INTO `microchip_pin_log` VALUES ('18372dc7-673c-a2fb-9fdc-ca98078c8cac', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2004-02-01 05:08:39', '{\"x\": \"1094\", \"y\": \"5906\"}', 'b0417e59-b048-c18e-a7e7-afa078d1f8d2');
INSERT INTO `microchip_pin_log` VALUES ('184fb776-24f9-d823-dc44-e3984f92a83e', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2010-11-14 23:10:32', '{\"x\": \"6048\", \"y\": \"0644\"}', '96ee2bab-cc90-f018-630f-00d90911841f');
INSERT INTO `microchip_pin_log` VALUES ('189950dc-e042-7186-45f8-518ff28d5412', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2001-11-09 09:29:13', '{\"x\": \"7389\", \"y\": \"1162\"}', '70351f7b-2fec-5cee-2f2d-142ec8b2268e');
INSERT INTO `microchip_pin_log` VALUES ('18ca49dd-2d5a-9d32-f77d-af1d8a113979', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2011-02-23 08:10:34', '{\"x\": \"3409\", \"y\": \"1411\"}', 'c9711341-e60f-e41f-65e7-677d86901b76');
INSERT INTO `microchip_pin_log` VALUES ('194b5de6-52e5-b27b-14fa-172cc6bda0ae', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2007-03-08 14:00:04', '{\"x\": \"8368\", \"y\": \"3960\"}', 'd7a30477-f281-a03e-df46-6969d48611bf');
INSERT INTO `microchip_pin_log` VALUES ('1961a736-02da-e453-b4cb-f9f93903fd26', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2004-10-08 21:44:01', '{\"x\": \"5078\", \"y\": \"4134\"}', 'cfadff5f-6df9-e33d-5071-9f7b247739ee');
INSERT INTO `microchip_pin_log` VALUES ('19bc9c68-6a71-0b0d-8cad-c8ebde3a7bf9', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2013-08-08 23:34:22', '{\"x\": \"8066\", \"y\": \"2520\"}', 'ae5640a2-c9ee-b279-d324-34e2f6352fd0');
INSERT INTO `microchip_pin_log` VALUES ('19d7dac6-8029-e1d6-9732-aea9cb43ea19', '0.97', '48', '0.98', 2, 'pin', 1, 'pin', '2007-09-13 20:42:54', '{\"x\": \"6930\", \"y\": \"4296\"}', 'ce04d496-58e6-2cd4-08c2-f80816b3d365');
INSERT INTO `microchip_pin_log` VALUES ('1a15a682-7486-5640-0ca3-6f17dbd736f7', '0.97', '21', '0.95', 1, 'notpin', 1, 'pin', '2017-02-16 13:21:42', '{\"x\": \"7406\", \"y\": \"1386\"}', '815c57ba-5f8b-77e0-e278-fccf05c23551');
INSERT INTO `microchip_pin_log` VALUES ('1a2e5396-e86f-85b6-3c43-03ae2632ddcf', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2005-08-06 02:33:49', '{\"x\": \"3977\", \"y\": \"8722\"}', '28fa47cf-df5b-a145-efce-381734432875');
INSERT INTO `microchip_pin_log` VALUES ('1a82ddc2-7213-6560-837d-141ed40208ae', '0.57', '48', '0.98', 1, 'notpin', 1, 'notpin', '2008-05-18 03:16:08', '{\"x\": \"8926\", \"y\": \"7161\"}', 'fd9140e9-0b8f-dfa6-2455-234331431de3');
INSERT INTO `microchip_pin_log` VALUES ('1abab048-208a-ae86-743f-e9bfa75a8a54', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2018-02-25 14:02:05', '{\"x\": \"9191\", \"y\": \"2507\"}', 'f8d954ed-7d6f-38ce-27da-876a65b09580');
INSERT INTO `microchip_pin_log` VALUES ('1aeabcee-18cd-3fa6-fc3b-c7e34a5cf188', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2010-05-27 01:02:43', '{\"x\": \"0252\", \"y\": \"7669\"}', 'c7379393-760f-a102-a8d8-d491de4568f5');
INSERT INTO `microchip_pin_log` VALUES ('1aeeb668-1983-383f-d2f8-5a93f8dfec46', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2012-01-10 19:51:25', '{\"x\": \"9770\", \"y\": \"0678\"}', '546e076d-025d-c3b3-03db-eb6a12b00a02');
INSERT INTO `microchip_pin_log` VALUES ('1bf96177-f7dd-65f5-07eb-1846a61490b3', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2017-10-11 20:06:12', '{\"x\": \"3499\", \"y\": \"8551\"}', '72a30e97-7160-d551-f7ef-9680dab2e1b5');
INSERT INTO `microchip_pin_log` VALUES ('1c0b1517-4b4c-2ffb-7081-245cfa690b52', '0.97', '48', '0.98', 1, 'notpin', 1, 'pin', '2007-11-10 19:57:44', '{\"x\": \"4797\", \"y\": \"3711\"}', '3a8e7930-7148-9d1f-a956-49fa28a3fbce');
INSERT INTO `microchip_pin_log` VALUES ('1c15c9fc-9b86-2de5-672c-7e91dce7f2cd', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2009-03-26 05:22:22', '{\"x\": \"1649\", \"y\": \"3611\"}', 'd4c2e776-fd0d-dc40-1f91-bc246a0d082b');
INSERT INTO `microchip_pin_log` VALUES ('1c3c1a39-7a01-1f7e-239f-a58e8cfb92ec', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2012-12-10 13:50:25', '{\"x\": \"3420\", \"y\": \"4910\"}', '66ed698f-9338-9f7b-9c0a-f781d99ce7ac');
INSERT INTO `microchip_pin_log` VALUES ('1cad4754-4736-3f6a-bf60-bff4162a32df', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2011-05-04 03:07:18', '{\"x\": \"5053\", \"y\": \"3596\"}', '9b7712de-0707-d0c6-ae65-48e0e5c42236');
INSERT INTO `microchip_pin_log` VALUES ('1cb9d974-d9de-3f05-8b6c-3ad14ed29bec', '0.97', '48', '0.95', 1, 'notpin', 1, 'pin', '2014-03-31 01:06:43', '{\"x\": \"0555\", \"y\": \"6818\"}', '5eab79fc-67c3-b719-b57e-1d86cfca0179');
INSERT INTO `microchip_pin_log` VALUES ('1ce239f9-5875-3b57-995c-776515b6c6b6', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2019-07-02 17:23:47', '{\"x\": \"5026\", \"y\": \"6812\"}', 'da3bda6d-7a16-b83e-8fea-2459f51afd7e');
INSERT INTO `microchip_pin_log` VALUES ('1d98c943-54a7-4adf-7598-3f0feb5f468c', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2008-06-10 23:23:31', '{\"x\": \"4413\", \"y\": \"0236\"}', '483d0fbe-0a24-80a6-a64c-04ae6a79988f');
INSERT INTO `microchip_pin_log` VALUES ('1dca98cd-fea7-e63d-21dd-61934b5f4658', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2022-05-10 12:25:56', '{\"x\": \"6119\", \"y\": \"0367\"}', 'b324f2c0-8c43-a819-9249-6de663ba2419');
INSERT INTO `microchip_pin_log` VALUES ('1e2552b7-9b1f-18b8-4ae2-008ed91a01bb', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2015-09-27 04:28:40', '{\"x\": \"8415\", \"y\": \"9840\"}', '548193df-46ef-7105-3427-18ba9f4dee8f');
INSERT INTO `microchip_pin_log` VALUES ('1e793506-0a8b-4b3f-44d2-a6dd9e558c0b', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2004-10-14 23:02:51', '{\"x\": \"7842\", \"y\": \"6056\"}', '6835fba7-a8b1-e83e-eaba-4e320e50b8f3');
INSERT INTO `microchip_pin_log` VALUES ('1e7ac810-f4d4-224c-22db-f9abe0946d36', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2017-03-02 14:23:32', '{\"x\": \"2318\", \"y\": \"4125\"}', 'c0652e8c-da3e-272a-bef3-c9253ed5af6b');
INSERT INTO `microchip_pin_log` VALUES ('1eea5c01-ef3d-3e95-745e-72a5bfc81b4f', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2001-08-15 05:52:36', '{\"x\": \"8586\", \"y\": \"7449\"}', '3a07ce53-2fd9-0870-21fe-66316aa550f7');
INSERT INTO `microchip_pin_log` VALUES ('1f04db73-2594-4a78-0533-d6cbf43d6ee3', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2010-11-21 08:46:10', '{\"x\": \"3855\", \"y\": \"5147\"}', '245e442d-15b7-2321-70d4-648f6c8462f5');
INSERT INTO `microchip_pin_log` VALUES ('1f30b231-0317-9b1f-e58e-ba41a54bfe07', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2010-08-16 23:35:12', '{\"x\": \"5066\", \"y\": \"2212\"}', '22922a68-68dc-1b47-52f3-e5b270843fff');
INSERT INTO `microchip_pin_log` VALUES ('1f67ade5-6e62-e8a3-6a59-f00929f4eb25', '0.97', '48', '0.93', 2, 'pin', 1, 'notpin', '2021-01-02 10:49:25', '{\"x\": \"3157\", \"y\": \"9564\"}', '251ee713-6a32-19f0-3018-cb7677b5fa48');
INSERT INTO `microchip_pin_log` VALUES ('1fc8f6fa-4659-1740-3603-d6502c01a168', '0.21', '48', '0.90', 2, 'pin', 1, 'pin', '2003-06-07 03:42:41', '{\"x\": \"5651\", \"y\": \"0377\"}', '0c9e24f7-924b-e1b1-171f-acb8bc704562');
INSERT INTO `microchip_pin_log` VALUES ('1fd2b490-3f6b-5d76-4a4b-8804819ef77c', '0.97', '48', '0.96', 1, 'pin', 1, 'notpin', '2006-02-14 12:36:33', '{\"x\": \"8607\", \"y\": \"6671\"}', 'f4cfac09-c197-0048-3c15-e1f243908b62');
INSERT INTO `microchip_pin_log` VALUES ('20212947-db62-1680-3b6e-c0930c6b0e52', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2020-08-18 03:44:58', '{\"x\": \"6506\", \"y\": \"1796\"}', 'e8d56b28-115f-3962-0c61-ac798aa5562e');
INSERT INTO `microchip_pin_log` VALUES ('20276490-73f3-6606-95e3-5d8a224ad29d', '0.97', '48', '0.95', 1, 'notpin', 1, 'pin', '2007-06-21 11:31:14', '{\"x\": \"1010\", \"y\": \"9758\"}', 'b583dc18-0d22-a555-1a9b-90cb5c30934b');
INSERT INTO `microchip_pin_log` VALUES ('203dd14a-5dda-87ad-ee68-3c270aea8d4b', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2012-05-15 06:07:40', '{\"x\": \"8069\", \"y\": \"6024\"}', '90c61d09-9187-cd9b-f3d9-c83f8b015e5f');
INSERT INTO `microchip_pin_log` VALUES ('2088ba6a-e942-6cb1-f4c4-f2d81bfa6b45', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2004-12-20 13:53:36', '{\"x\": \"3835\", \"y\": \"8431\"}', 'f5b34464-e481-b66d-915b-ade8b3aecd4d');
INSERT INTO `microchip_pin_log` VALUES ('208da5b4-08d4-a5d3-2b65-ab2d628c317d', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2014-03-23 13:09:00', '{\"x\": \"0973\", \"y\": \"3878\"}', 'f198af61-ada8-4cbe-a6c9-c059be6d6a9b');
INSERT INTO `microchip_pin_log` VALUES ('20abe78d-9b49-1799-d27b-894b67fda1a1', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2015-06-13 23:42:29', '{\"x\": \"6578\", \"y\": \"3691\"}', '00cf721b-7d17-c086-5ad0-ec77f8354818');
INSERT INTO `microchip_pin_log` VALUES ('20b0469e-16dc-9545-713a-616f94971a07', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2020-05-16 05:00:13', '{\"x\": \"8677\", \"y\": \"9932\"}', '09b583fc-35a7-15c4-3664-8aae521621b1');
INSERT INTO `microchip_pin_log` VALUES ('2100e51c-77fd-c9c9-bbb9-4086a3aacc8f', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2007-03-17 08:25:22', '{\"x\": \"5586\", \"y\": \"1484\"}', '09ad1622-9dd6-edbd-8c99-c52f0d4ccd93');
INSERT INTO `microchip_pin_log` VALUES ('21e716ca-35b5-98d4-ea85-2d1db4af568d', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2000-10-16 22:14:14', '{\"x\": \"2181\", \"y\": \"0351\"}', 'a349ae09-7a9a-a41d-10ef-193833c46ab3');
INSERT INTO `microchip_pin_log` VALUES ('21f3317e-3a60-e15d-024a-b30ee2ffe212', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2010-11-11 04:54:39', '{\"x\": \"8452\", \"y\": \"7049\"}', 'd5315808-3d80-94ff-83c1-c0888dd269d7');
INSERT INTO `microchip_pin_log` VALUES ('21f75523-df98-bffd-16a0-48fb0b8dfc1b', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2005-06-02 04:00:41', '{\"x\": \"2750\", \"y\": \"8968\"}', '51c589b1-b30e-6b41-6ce2-6f6255afe9ed');
INSERT INTO `microchip_pin_log` VALUES ('2204233f-1ec4-5a27-7567-34538ab8ee18', '0.97', '48', '0.96', 1, 'pin', 1, 'notpin', '2002-01-26 06:53:20', '{\"x\": \"8102\", \"y\": \"0214\"}', 'd4c2e776-fd0d-dc40-1f91-bc246a0d082b');
INSERT INTO `microchip_pin_log` VALUES ('22a5c257-07e4-223a-c67c-e7f58a49dbc4', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2004-12-07 16:26:21', '{\"x\": \"1350\", \"y\": \"7852\"}', '2b53ffe8-eb9a-fd95-4209-56bd538d82e2');
INSERT INTO `microchip_pin_log` VALUES ('22aac1b1-a411-75c4-f9b7-14e24a1bb991', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2000-04-17 22:46:20', '{\"x\": \"5442\", \"y\": \"8151\"}', 'd0098d40-a64e-0b3f-2034-ce4dc7a5e7d4');
INSERT INTO `microchip_pin_log` VALUES ('22afd2d5-5476-d9e7-7810-2dc2c7007978', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2006-12-07 21:03:03', '{\"x\": \"4685\", \"y\": \"8616\"}', '9c8784b5-cfdc-4a67-742c-5c6816680a87');
INSERT INTO `microchip_pin_log` VALUES ('22b60d99-9113-e5e3-5dec-c870c991a987', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2022-08-31 10:34:24', '{\"x\": \"6075\", \"y\": \"1285\"}', 'e1cea5fc-a0e2-e063-9f98-da99737db3f3');
INSERT INTO `microchip_pin_log` VALUES ('232f7f15-f080-ca41-0c99-fa2438b47543', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2012-05-11 04:23:28', '{\"x\": \"9748\", \"y\": \"2671\"}', '58b1ee8c-d432-afec-4678-684d0d7f6ec0');
INSERT INTO `microchip_pin_log` VALUES ('235e82db-1c1b-823c-51c0-c6dde8b7476b', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2022-02-07 16:35:54', '{\"x\": \"3837\", \"y\": \"9367\"}', '019a4d0b-f6a8-bb5d-3eea-0de55b3bc83b');
INSERT INTO `microchip_pin_log` VALUES ('236aa741-919f-c661-2fd4-b1a89f2cf361', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2005-08-30 12:12:02', '{\"x\": \"2945\", \"y\": \"9888\"}', 'afae4fbe-5b1f-43cb-ec6c-853f002dc6d4');
INSERT INTO `microchip_pin_log` VALUES ('24a073e0-9018-f446-714a-52003de7997a', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2020-09-21 05:47:55', '{\"x\": \"5603\", \"y\": \"4161\"}', 'f32ae703-e50e-cd33-a36d-91356e916deb');
INSERT INTO `microchip_pin_log` VALUES ('24a2f82e-791e-ef02-2f1b-9ffbea029114', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2018-04-16 15:55:54', '{\"x\": \"4320\", \"y\": \"4548\"}', 'e96ca64b-0334-0e64-cefd-08ec1cb603fb');
INSERT INTO `microchip_pin_log` VALUES ('252754ff-93ed-dd54-b567-4c12a26efb2f', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2016-03-25 07:48:54', '{\"x\": \"0328\", \"y\": \"0248\"}', '39a090c8-6d01-1560-4bb7-28ccf7df59ab');
INSERT INTO `microchip_pin_log` VALUES ('25714051-e662-da88-06a6-09e59d2498b3', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2003-11-26 07:38:55', '{\"x\": \"4500\", \"y\": \"4907\"}', '44873696-421e-7486-756e-1fedd78634b3');
INSERT INTO `microchip_pin_log` VALUES ('258e7569-9080-c93d-2fad-dc12ed34ee4d', '0.64', '48', '0.99', 2, 'notpin', 1, 'pin', '2017-12-31 02:28:03', '{\"x\": \"4984\", \"y\": \"9687\"}', 'cbbe035f-a752-d55c-f482-0c4a3d79d02a');
INSERT INTO `microchip_pin_log` VALUES ('259c02f1-ca97-bd8e-9a80-1ace233e152d', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2011-10-17 03:06:20', '{\"x\": \"9978\", \"y\": \"6923\"}', 'ee380e4b-7685-0569-ce3e-843efafd8755');
INSERT INTO `microchip_pin_log` VALUES ('25b7f54b-d748-1f49-58ea-d699510abdc1', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2014-12-20 16:46:14', '{\"x\": \"4715\", \"y\": \"9714\"}', 'f82362d0-a7af-e9f8-af9e-41a0ffa6847e');
INSERT INTO `microchip_pin_log` VALUES ('25d90871-f325-daa6-7bd0-0a1825ff7930', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2000-05-27 22:47:06', '{\"x\": \"1704\", \"y\": \"2861\"}', 'f4cfac09-c197-0048-3c15-e1f243908b62');
INSERT INTO `microchip_pin_log` VALUES ('2651cf93-87b3-9aab-333e-65e231b87f4e', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2009-06-10 18:47:23', '{\"x\": \"7670\", \"y\": \"3065\"}', '22eef1f5-e0fc-143a-3ae4-b2b2201fb320');
INSERT INTO `microchip_pin_log` VALUES ('26a0fa58-c6a5-59bb-0252-a9be6ec1eb49', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2020-12-21 07:35:26', '{\"x\": \"4578\", \"y\": \"3332\"}', 'b745edca-d233-754a-c752-ed8da609076c');
INSERT INTO `microchip_pin_log` VALUES ('26b7c6b5-9bf7-8afe-6d39-99cb94cb58c2', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2003-05-12 05:27:34', '{\"x\": \"0875\", \"y\": \"0911\"}', 'dec7e2f9-9864-eca6-25ef-420064fa344f');
INSERT INTO `microchip_pin_log` VALUES ('26f5f2cf-37bf-78bd-3069-8e0d25b914c1', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2019-07-28 09:19:15', '{\"x\": \"8098\", \"y\": \"6980\"}', '3906ac4a-ccb6-9caa-eada-b15c102e609d');
INSERT INTO `microchip_pin_log` VALUES ('27795231-840a-1aed-ef01-07cbd6633af1', '0.91', '48', '0.94', 1, 'pin', 1, 'pin', '2019-10-06 07:29:59', '{\"x\": \"6922\", \"y\": \"3826\"}', 'a22b1e24-28af-e11e-0492-ebc46938474a');
INSERT INTO `microchip_pin_log` VALUES ('27c53530-d85f-d4d2-8e61-a4ecd4cf3127', '0.13', '48', '0.90', 1, 'notpin', 1, 'pin', '2016-03-10 07:58:17', '{\"x\": \"8639\", \"y\": \"6177\"}', 'e464f57e-7882-0f5e-64a6-83f2914f7fe5');
INSERT INTO `microchip_pin_log` VALUES ('27e082cb-6a46-c418-eec5-e5a554e6d82b', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2016-01-24 23:59:22', '{\"x\": \"1681\", \"y\": \"1443\"}', 'ddceb93b-10a3-4264-e4eb-5aa45c336342');
INSERT INTO `microchip_pin_log` VALUES ('28393f9a-829d-aeb9-8453-cb10561dbe39', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2019-06-05 19:50:23', '{\"x\": \"2006\", \"y\": \"2912\"}', 'e0bf808e-fc1a-6afb-aaf4-912eb61c9175');
INSERT INTO `microchip_pin_log` VALUES ('28737ac7-56fd-0abb-6049-a9e744956f86', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2012-05-12 23:34:58', '{\"x\": \"2524\", \"y\": \"1356\"}', 'f5f676d4-f6d6-2b28-24c0-abe6fa668371');
INSERT INTO `microchip_pin_log` VALUES ('29114fac-bf9f-3d1a-51b3-a2376fa0ac24', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2020-02-17 19:00:32', '{\"x\": \"0454\", \"y\": \"9223\"}', '51c589b1-b30e-6b41-6ce2-6f6255afe9ed');
INSERT INTO `microchip_pin_log` VALUES ('29264780-989c-8a67-5ab5-6b845bb921ed', '0.63', '48', '0.99', 2, 'notpin', 1, 'notpin', '2010-05-06 19:51:24', '{\"x\": \"1725\", \"y\": \"5933\"}', 'a39a217d-c43f-ae14-ea41-7537e8f4f442');
INSERT INTO `microchip_pin_log` VALUES ('2955cb53-8ea4-4ceb-84b6-d3dbfc9563c4', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2020-05-27 03:59:26', '{\"x\": \"7942\", \"y\": \"5964\"}', '53eb816d-75bf-d0a3-7793-7703f9ad15f0');
INSERT INTO `microchip_pin_log` VALUES ('295e9a55-3546-a6e9-42fb-b6d00105fc45', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2011-10-11 08:42:27', '{\"x\": \"3812\", \"y\": \"3212\"}', '1e773f18-595c-a468-7767-b8cb45e6d560');
INSERT INTO `microchip_pin_log` VALUES ('295f185e-e0ab-bcb4-86e6-8f3b7f4bc792', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2007-11-25 03:23:57', '{\"x\": \"6546\", \"y\": \"4171\"}', '9ae137b8-2858-eef3-8cbf-7f427facaadf');
INSERT INTO `microchip_pin_log` VALUES ('2995d416-9c67-1d53-cb88-4a05d4e0e22f', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2004-12-19 14:44:26', '{\"x\": \"1904\", \"y\": \"6306\"}', '03a429da-09a9-d9cd-b79d-91005a78743d');
INSERT INTO `microchip_pin_log` VALUES ('29b77057-858a-d685-b61e-c416381184c6', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2013-07-15 05:01:30', '{\"x\": \"8964\", \"y\": \"8912\"}', '6a610514-890a-084e-c82b-8a0bc57f27a9');
INSERT INTO `microchip_pin_log` VALUES ('2a95b411-d836-5cea-0507-347ef1afaf72', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2005-03-19 13:28:52', '{\"x\": \"9327\", \"y\": \"5691\"}', 'ce82f1ce-2302-20d3-8d05-ca234a75a360');
INSERT INTO `microchip_pin_log` VALUES ('2bb3c99c-50ad-7429-bedb-31c7f89301a9', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2021-08-24 12:47:04', '{\"x\": \"4318\", \"y\": \"9998\"}', '648aef44-095e-c7ef-9d80-20a1d8d34dbc');
INSERT INTO `microchip_pin_log` VALUES ('2be5cfbb-f83d-79ed-974c-5412d0d11860', '0.68', '48', '0.98', 1, 'notpin', 1, 'pin', '2015-03-23 15:25:37', '{\"x\": \"0530\", \"y\": \"2777\"}', '16d395c9-ea85-5271-0883-cb0beab92028');
INSERT INTO `microchip_pin_log` VALUES ('2beb918e-6f0f-6403-f1cb-c5c6d6db5d12', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2006-09-21 00:24:22', '{\"x\": \"1060\", \"y\": \"8305\"}', '51cbe3fc-e174-ad31-3145-a54d1e225210');
INSERT INTO `microchip_pin_log` VALUES ('2c42b1ba-28a9-2873-38c7-bef3950c3e39', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2001-03-24 15:38:22', '{\"x\": \"9684\", \"y\": \"0620\"}', '5171aa21-b235-7136-7695-905b7c4c246c');
INSERT INTO `microchip_pin_log` VALUES ('2c7b6d40-5758-5539-e4cb-0f9f4864d659', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2007-09-09 14:13:48', '{\"x\": \"0718\", \"y\": \"1719\"}', '51cbe3fc-e174-ad31-3145-a54d1e225210');
INSERT INTO `microchip_pin_log` VALUES ('2ca938a3-025f-b09c-3d3d-e3642bb3116e', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2016-11-28 09:13:47', '{\"x\": \"4909\", \"y\": \"4272\"}', '6a860cc4-a481-2c28-4c64-1280ba83e1ae');
INSERT INTO `microchip_pin_log` VALUES ('2d66744c-2b09-87a8-fc05-d67a64ae8797', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2022-04-24 15:38:30', '{\"x\": \"6793\", \"y\": \"2683\"}', '15e25614-bc03-95ed-3d5e-c68b49f83d4b');
INSERT INTO `microchip_pin_log` VALUES ('2df8ff57-79b8-70af-f9a5-7beb137e1668', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2017-07-01 10:27:20', '{\"x\": \"0463\", \"y\": \"7076\"}', '5d9e02cd-a7b2-fbc9-ebc2-505595a7adb4');
INSERT INTO `microchip_pin_log` VALUES ('2e157cba-0776-b8b3-0635-e777a3c5f748', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2001-06-10 22:55:27', '{\"x\": \"4879\", \"y\": \"2384\"}', '113ea8d8-776c-f539-24cd-b86bc5433419');
INSERT INTO `microchip_pin_log` VALUES ('2e2d9aff-4fb5-1f3a-a24d-9665bd5abb15', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2019-03-05 12:29:52', '{\"x\": \"2455\", \"y\": \"3486\"}', '5c18b65f-184e-8008-f0d8-72f24cc2b836');
INSERT INTO `microchip_pin_log` VALUES ('2e6bf954-a744-ead3-0649-325a50741f7c', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2003-05-25 09:08:19', '{\"x\": \"7717\", \"y\": \"3701\"}', 'f21e0772-198b-a005-7c15-aca805bd72b0');
INSERT INTO `microchip_pin_log` VALUES ('2e79e2b4-24ba-d6df-d669-2bd612311390', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2013-07-23 21:49:25', '{\"x\": \"4731\", \"y\": \"3244\"}', 'cbbe035f-a752-d55c-f482-0c4a3d79d02a');
INSERT INTO `microchip_pin_log` VALUES ('2ec05922-4fec-3713-45f3-e8cc020ef44f', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2017-11-02 18:13:17', '{\"x\": \"0688\", \"y\": \"8955\"}', 'c0994229-70c3-5d85-7da8-0c5e93e42a85');
INSERT INTO `microchip_pin_log` VALUES ('2ecc2ab7-ea15-485f-66d8-c67db9a76141', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2009-05-28 01:32:03', '{\"x\": \"1656\", \"y\": \"3773\"}', 'b5a530cd-4074-53f4-bc5a-1aca621ed570');
INSERT INTO `microchip_pin_log` VALUES ('2f202d2f-54ef-f74d-2bcb-a69ef49f9245', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2010-12-11 03:07:49', '{\"x\": \"9971\", \"y\": \"2077\"}', '9024c63d-f9a7-54e8-6f88-0dd3cfd717a0');
INSERT INTO `microchip_pin_log` VALUES ('2f5ae90d-953a-1e4a-6d02-3046187ed9f5', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2018-01-12 20:46:56', '{\"x\": \"0522\", \"y\": \"5257\"}', '8ffcdfba-53a7-0332-030a-d0d35c266073');
INSERT INTO `microchip_pin_log` VALUES ('2f91bc3e-dfb1-06f0-0769-7823768d3a1a', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2005-10-17 08:52:34', '{\"x\": \"4421\", \"y\": \"5281\"}', '917288af-869d-654f-419d-449364d2fcfb');
INSERT INTO `microchip_pin_log` VALUES ('2f92ea3c-b1a3-2890-c9ea-b75e576cd619', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2016-08-31 19:46:17', '{\"x\": \"3044\", \"y\": \"4564\"}', '8c6c7853-99f5-0258-3c4a-aec7abe03663');
INSERT INTO `microchip_pin_log` VALUES ('2fb83dce-5372-ae9d-0aa5-b89e6fccf969', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2013-04-28 02:19:45', '{\"x\": \"9408\", \"y\": \"7756\"}', '4558eb1e-f958-7193-79a2-acebb2703014');
INSERT INTO `microchip_pin_log` VALUES ('2fb91c37-28d4-eb53-7de5-ee631ef1ee18', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2017-10-09 10:44:34', '{\"x\": \"3331\", \"y\": \"8952\"}', 'a0c3af1f-bf3f-4de9-f176-d6c4931c2ec1');
INSERT INTO `microchip_pin_log` VALUES ('2fcdcc25-6879-1b68-2e11-cdad46488907', '0.97', '13', '0.91', 2, 'notpin', 1, 'notpin', '2020-03-16 20:13:53', '{\"x\": \"1514\", \"y\": \"9025\"}', '3cf893b0-237e-777a-7dbf-19f79745066d');
INSERT INTO `microchip_pin_log` VALUES ('2fe5c69f-7224-d257-7eb9-d8009f6078ba', '0.51', '48', '0.90', 2, 'notpin', 1, 'pin', '2019-01-12 07:26:20', '{\"x\": \"2799\", \"y\": \"0165\"}', '9c8784b5-cfdc-4a67-742c-5c6816680a87');
INSERT INTO `microchip_pin_log` VALUES ('300e75da-9fd3-efb6-f3f8-4d19b37fa057', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2014-03-28 20:48:27', '{\"x\": \"4234\", \"y\": \"4202\"}', '905ae2aa-56f7-a810-8497-7b7e25721943');
INSERT INTO `microchip_pin_log` VALUES ('301b33a4-e8cf-6250-922e-80efd8c478a0', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2003-05-29 05:28:05', '{\"x\": \"7693\", \"y\": \"9781\"}', 'f31753a6-2bea-686f-a8f0-d78c7c8a0c15');
INSERT INTO `microchip_pin_log` VALUES ('301c063c-213c-106e-67b1-7dea131f6725', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2021-01-08 13:32:55', '{\"x\": \"7631\", \"y\": \"3761\"}', '815c57ba-5f8b-77e0-e278-fccf05c23551');
INSERT INTO `microchip_pin_log` VALUES ('307bb7a3-c1a8-9de8-ed61-bd56701c528c', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2019-08-02 09:47:20', '{\"x\": \"2240\", \"y\": \"9872\"}', 'ad9e74e3-0ce1-c608-ce70-17d2c8ff7909');
INSERT INTO `microchip_pin_log` VALUES ('30a6d315-4a8d-8fea-7797-252f4108a3ae', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2003-12-29 11:42:32', '{\"x\": \"6447\", \"y\": \"7199\"}', '92c8d35b-df1a-188a-64b2-85b45d755077');
INSERT INTO `microchip_pin_log` VALUES ('30cd88f6-baa3-620a-d8c0-971d3c23f1f9', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2021-10-14 02:08:10', '{\"x\": \"9691\", \"y\": \"4326\"}', '34613616-8cd2-e0af-80da-86d5faf1382b');
INSERT INTO `microchip_pin_log` VALUES ('313cda2a-25f4-027c-2e58-e7f3fd40fed7', '0.33', '06', '0.97', 2, 'notpin', 1, 'pin', '2010-09-22 08:13:03', '{\"x\": \"5723\", \"y\": \"9812\"}', '3d3f4341-48e7-b05a-fe91-a25d72068f4e');
INSERT INTO `microchip_pin_log` VALUES ('313ff215-8534-c0fe-6600-8d1fddb064d2', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2008-09-18 18:25:16', '{\"x\": \"5091\", \"y\": \"6401\"}', 'c9a89b55-9ccc-63dd-7acd-67c89eeed49a');
INSERT INTO `microchip_pin_log` VALUES ('315d032e-6e14-43cf-6b82-ee01e720f296', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2014-05-13 05:35:37', '{\"x\": \"7445\", \"y\": \"0318\"}', '2e4c24a9-8962-11e3-0ca7-7a8c4506b760');
INSERT INTO `microchip_pin_log` VALUES ('3181012b-66ef-9176-0cb6-6dc87026fb13', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2006-11-30 09:06:17', '{\"x\": \"2560\", \"y\": \"9249\"}', 'a9e2cbeb-ef14-d9f7-e4c6-7461e98e8cb0');
INSERT INTO `microchip_pin_log` VALUES ('319f54e4-7527-c02c-cc96-be2020d398c4', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2018-04-23 11:15:01', '{\"x\": \"6101\", \"y\": \"0333\"}', '1bc67b01-f22d-073a-0415-ffe0df003f92');
INSERT INTO `microchip_pin_log` VALUES ('31e28e0d-7112-cd25-3564-b813f4ef905d', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2013-04-25 17:24:24', '{\"x\": \"3450\", \"y\": \"8300\"}', '6ad28d60-18e4-fe31-cfb0-b8e072852efd');
INSERT INTO `microchip_pin_log` VALUES ('324424e6-9291-266f-4133-381b977029d3', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2001-01-28 21:03:06', '{\"x\": \"9140\", \"y\": \"1673\"}', '1bf2f69c-fbf0-da8b-131a-abefa05c7766');
INSERT INTO `microchip_pin_log` VALUES ('3271e7aa-33b0-ddd8-2a9b-6f70718562b1', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2002-02-04 00:37:23', '{\"x\": \"4640\", \"y\": \"5233\"}', '672bbf56-a24b-c077-c70e-728f48455d21');
INSERT INTO `microchip_pin_log` VALUES ('32bc85a5-111b-b1d9-703a-af178c440126', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2009-07-21 15:44:51', '{\"x\": \"1874\", \"y\": \"5111\"}', 'f365c36a-a140-d53e-96fb-990ea4caf70d');
INSERT INTO `microchip_pin_log` VALUES ('32fc31d0-7ede-6361-3440-25534196a0fa', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2008-05-31 15:14:37', '{\"x\": \"3593\", \"y\": \"8276\"}', '534118a2-96f5-4f4c-7597-0a172616998f');
INSERT INTO `microchip_pin_log` VALUES ('3397250a-8734-189f-4ef9-640b0fb66b71', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2013-11-30 10:45:38', '{\"x\": \"7194\", \"y\": \"8598\"}', '57652f70-5bf9-9615-646b-9006c31eb2ff');
INSERT INTO `microchip_pin_log` VALUES ('35804c6e-f777-93f4-bffc-18dfa4b06208', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2012-10-10 22:33:39', '{\"x\": \"4904\", \"y\": \"8451\"}', '5efa0187-4a2d-f892-bca1-349378dedc60');
INSERT INTO `microchip_pin_log` VALUES ('35a66a0b-5cb3-0299-a59a-1a0b76bd7682', '0.90', '48', '0.95', 1, 'pin', 1, 'pin', '2010-10-13 06:19:04', '{\"x\": \"1090\", \"y\": \"9933\"}', '3a2193bd-9df3-bb5b-bedd-d4e2fd201099');
INSERT INTO `microchip_pin_log` VALUES ('35ce82b9-0b18-515e-2b6f-ce7b6c38d08e', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2012-12-11 14:58:21', '{\"x\": \"1346\", \"y\": \"7956\"}', '5ddc6f5f-c34f-d535-419e-1366e48c474e');
INSERT INTO `microchip_pin_log` VALUES ('35f19d11-8862-30ab-534f-3b5e0633bb20', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2002-03-18 06:34:20', '{\"x\": \"7204\", \"y\": \"2608\"}', '64a9986c-6e22-a362-cc9d-5b73ba22cf31');
INSERT INTO `microchip_pin_log` VALUES ('363e443e-cd00-b578-bad9-58600017f3cf', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2019-02-18 20:57:44', '{\"x\": \"7884\", \"y\": \"9119\"}', '40e16d91-1f29-b9eb-b835-47894d68e84b');
INSERT INTO `microchip_pin_log` VALUES ('36574b72-087d-12be-7c37-81786187a604', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2002-11-21 01:22:58', '{\"x\": \"4912\", \"y\": \"0649\"}', '51cbe3fc-e174-ad31-3145-a54d1e225210');
INSERT INTO `microchip_pin_log` VALUES ('3662b9d5-c4c2-0f33-7fbb-c9e7ea07de56', '0.39', '48', '0.90', 1, 'notpin', 1, 'pin', '2011-03-03 22:43:31', '{\"x\": \"9532\", \"y\": \"5760\"}', '7d74280b-98c8-3e3b-b8b7-a0aefde10549');
INSERT INTO `microchip_pin_log` VALUES ('3668f00e-5a06-7ec5-b80e-0008e3955a7b', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2006-02-20 09:54:55', '{\"x\": \"0659\", \"y\": \"6599\"}', '6ef62da2-8492-5725-f261-3268239eb80c');
INSERT INTO `microchip_pin_log` VALUES ('3693724d-59bd-c2c5-9e55-248fda7d68d2', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2014-06-30 23:42:14', '{\"x\": \"9730\", \"y\": \"3806\"}', 'f19c5790-8fbb-d20a-20db-883a19ecdd40');
INSERT INTO `microchip_pin_log` VALUES ('36a5926d-379a-5b88-8594-7e3c11ef7721', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2016-01-01 02:38:50', '{\"x\": \"5811\", \"y\": \"1496\"}', 'a6ef07c9-e607-eb07-1ce3-8a5a036605d7');
INSERT INTO `microchip_pin_log` VALUES ('36b7480d-d792-34cb-384b-9a5d015ab46d', '0.97', '48', '0.95', 1, 'notpin', 1, 'notpin', '2014-02-24 09:34:28', '{\"x\": \"0745\", \"y\": \"2665\"}', '5cf3b6ae-be7b-f918-3320-efce0d9bc9ba');
INSERT INTO `microchip_pin_log` VALUES ('36b9ca9e-fe55-d043-0ff5-b26f03cc3d99', '0.67', '48', '0.99', 2, 'pin', 1, 'notpin', '2008-04-19 20:39:27', '{\"x\": \"5032\", \"y\": \"2604\"}', '8ab2e171-c9b3-0cfb-0e48-22e8d12bf2d6');
INSERT INTO `microchip_pin_log` VALUES ('36f69579-de4c-907f-921a-7b5bd58d412a', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2003-08-20 23:46:40', '{\"x\": \"4174\", \"y\": \"6846\"}', '16f3a7c0-ec0b-83b5-b643-d26201a8c619');
INSERT INTO `microchip_pin_log` VALUES ('378e6f23-21a9-0cc4-3f63-aa9301a66d83', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2003-10-20 08:25:17', '{\"x\": \"7565\", \"y\": \"6793\"}', 'c4411074-738c-46d6-91c6-62dbeaadb116');
INSERT INTO `microchip_pin_log` VALUES ('379210b1-6394-2525-c7ea-2e1edfc385eb', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2007-06-10 18:58:02', '{\"x\": \"0618\", \"y\": \"0125\"}', '1575202a-d112-4d09-7548-e92504561492');
INSERT INTO `microchip_pin_log` VALUES ('37ac04c5-2454-2f70-cd71-af82440c868d', '0.97', '47', '0.98', 2, 'notpin', 1, 'notpin', '2014-02-09 05:58:23', '{\"x\": \"1244\", \"y\": \"6657\"}', 'a215cd5a-c241-585e-9d76-22b78196c2f0');
INSERT INTO `microchip_pin_log` VALUES ('37de63c7-4d7e-9ffe-ad38-283fea33bdf2', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2011-07-12 23:57:03', '{\"x\": \"6607\", \"y\": \"2043\"}', 'ad9e74e3-0ce1-c608-ce70-17d2c8ff7909');
INSERT INTO `microchip_pin_log` VALUES ('380e3794-09ea-42c0-5d54-296c936bfe7c', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2021-12-26 17:37:18', '{\"x\": \"8272\", \"y\": \"8640\"}', 'a00485f0-8763-b47b-22d0-7036cf328d1a');
INSERT INTO `microchip_pin_log` VALUES ('381f01f9-e2d8-2441-9e38-d51d76657c60', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2020-10-08 01:18:50', '{\"x\": \"5104\", \"y\": \"6781\"}', '16e5446b-360a-3eff-7260-2b9696e9599e');
INSERT INTO `microchip_pin_log` VALUES ('38366e98-c830-20b4-3c35-abff3f0b46ab', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2017-02-11 02:23:06', '{\"x\": \"9596\", \"y\": \"3893\"}', '4fbe3339-9e63-6892-beb5-08d2d098d23e');
INSERT INTO `microchip_pin_log` VALUES ('3839572e-0365-9794-1d0c-a61f258d43bf', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2018-10-24 15:56:10', '{\"x\": \"8019\", \"y\": \"0090\"}', 'df9656c1-97e0-07c7-4aaf-c32f84358e5f');
INSERT INTO `microchip_pin_log` VALUES ('38f3fd09-998a-3290-d168-ddf20f1ac26a', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2018-06-23 21:21:04', '{\"x\": \"4979\", \"y\": \"9383\"}', '4b272bf1-a7b7-5879-7c24-63a90d0014bd');
INSERT INTO `microchip_pin_log` VALUES ('393cf607-a2fa-60c2-45e3-9391fb7a837f', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2011-07-13 16:18:08', '{\"x\": \"2949\", \"y\": \"1235\"}', '24be7b9a-056a-834d-05b8-1ecef1a3205c');
INSERT INTO `microchip_pin_log` VALUES ('3956329a-7f18-ec03-4871-b879211ef909', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2002-03-29 19:32:03', '{\"x\": \"1020\", \"y\": \"7748\"}', 'a55e1c1b-6c7e-7880-25ac-d81fae3bbde8');
INSERT INTO `microchip_pin_log` VALUES ('3a12c916-05b3-2024-02d0-397821bba9f5', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2021-04-05 02:23:17', '{\"x\": \"7126\", \"y\": \"8280\"}', '6a610514-890a-084e-c82b-8a0bc57f27a9');
INSERT INTO `microchip_pin_log` VALUES ('3a5d7a1a-0e25-2eaf-456a-646df7afe480', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2008-12-27 04:26:51', '{\"x\": \"1575\", \"y\": \"1994\"}', 'b836acc4-1279-20f0-99bc-1fe1efb23e68');
INSERT INTO `microchip_pin_log` VALUES ('3ac36276-0735-1bce-1683-0c86dd1ed047', '0.97', '48', '0.90', 2, 'notpin', 1, 'notpin', '2014-11-30 16:39:28', '{\"x\": \"6752\", \"y\": \"1157\"}', '07345509-dc03-c46e-e4c0-22f8f21a5cbb');
INSERT INTO `microchip_pin_log` VALUES ('3b1d0a7a-5840-22a1-57bc-c22fa57714ad', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2003-12-18 08:00:16', '{\"x\": \"5252\", \"y\": \"1775\"}', 'a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf');
INSERT INTO `microchip_pin_log` VALUES ('3b642d88-a28c-f520-f7ac-34bdce327a05', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2014-01-19 03:32:24', '{\"x\": \"8602\", \"y\": \"4757\"}', '2a0bf1c3-626f-b8d2-ccf5-8e82fbaca471');
INSERT INTO `microchip_pin_log` VALUES ('3bf71e10-35ef-197a-b72a-d13b176b47b0', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2001-03-30 05:25:38', '{\"x\": \"3273\", \"y\": \"7956\"}', 'f5b0146a-0cfc-53bc-cdaa-23399b35c6a3');
INSERT INTO `microchip_pin_log` VALUES ('3c36362f-2eaa-bc87-66ba-f5ba1ba6b191', '0.94', '48', '0.94', 2, 'notpin', 1, 'pin', '2019-12-20 17:08:47', '{\"x\": \"1902\", \"y\": \"4948\"}', '6096c8f1-9803-c371-ed7b-352cd4adf3c0');
INSERT INTO `microchip_pin_log` VALUES ('3da496bc-3cdf-03c1-103d-8c61f90d7a84', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2019-03-07 04:02:46', '{\"x\": \"7518\", \"y\": \"6690\"}', 'a03e7855-dc60-e5e0-ed5b-c9c64f43e0ca');
INSERT INTO `microchip_pin_log` VALUES ('3dcd751f-8fba-1c3d-1eb1-b327f976e009', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2014-01-04 16:14:59', '{\"x\": \"9618\", \"y\": \"7249\"}', '905ae2aa-56f7-a810-8497-7b7e25721943');
INSERT INTO `microchip_pin_log` VALUES ('3dd177e8-1f4e-26b9-6326-c374967a039a', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2010-06-14 00:01:55', '{\"x\": \"6543\", \"y\": \"1024\"}', '385b90fd-66bd-01e0-f205-6e9dc3e3fdd5');
INSERT INTO `microchip_pin_log` VALUES ('3ddfb373-a717-fe77-e7b6-39dbfa8af0ce', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2022-03-02 19:41:37', '{\"x\": \"3827\", \"y\": \"9057\"}', 'fcef231c-4cd8-cdd5-2a88-d2bb502c72e2');
INSERT INTO `microchip_pin_log` VALUES ('3e0ef912-070c-cfd5-19dc-70644e9d51f8', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2020-09-02 11:43:19', '{\"x\": \"2746\", \"y\": \"3511\"}', '0f7544fe-d334-ceaa-35dd-0f42ba81c0e8');
INSERT INTO `microchip_pin_log` VALUES ('3e14987c-74b5-83f0-59da-447013c0a138', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2008-12-22 06:40:57', '{\"x\": \"1766\", \"y\": \"2089\"}', '57d9294f-217f-4511-96f8-ad72634abfdf');
INSERT INTO `microchip_pin_log` VALUES ('3e4f9b35-3a75-8493-76c3-2f915acce1b4', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2000-04-28 22:53:26', '{\"x\": \"0427\", \"y\": \"3577\"}', 'ecaad21f-79c0-fb32-eb3e-84e6e8b94003');
INSERT INTO `microchip_pin_log` VALUES ('3e88e25c-3506-0194-9413-acda24bd5f5f', '0.50', '48', '0.92', 1, 'notpin', 1, 'notpin', '2003-11-17 07:41:05', '{\"x\": \"4048\", \"y\": \"9104\"}', '95a77475-0aa0-8cb2-fd1a-d0be6d656672');
INSERT INTO `microchip_pin_log` VALUES ('3e977d68-1174-e960-1fe5-fc21a0b79595', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2018-08-29 20:46:21', '{\"x\": \"1429\", \"y\": \"8241\"}', 'a806f621-820c-f13b-f8b9-0c37cf946a55');
INSERT INTO `microchip_pin_log` VALUES ('3edfa190-ac4d-afc5-6aac-ef5d82005dab', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2005-02-02 19:19:07', '{\"x\": \"5726\", \"y\": \"6765\"}', '2692f2e9-bf58-933d-b5cc-f063b35d658b');
INSERT INTO `microchip_pin_log` VALUES ('3f3840e0-62c9-4d35-0b21-561ac5f5dec5', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2005-10-19 01:52:41', '{\"x\": \"2946\", \"y\": \"0268\"}', 'f6762eba-9cf6-d9d9-4c52-48c7217db024');
INSERT INTO `microchip_pin_log` VALUES ('3f47b835-00ff-ce0a-aaf8-45b74a55da46', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2018-03-23 16:47:26', '{\"x\": \"1321\", \"y\": \"1838\"}', '8c6c7853-99f5-0258-3c4a-aec7abe03663');
INSERT INTO `microchip_pin_log` VALUES ('3f679caa-e60a-7964-1517-00ed98431b9c', '0.41', '48', '0.99', 2, 'pin', 1, 'pin', '2020-09-24 21:56:38', '{\"x\": \"7888\", \"y\": \"8009\"}', 'c406cb9d-47b3-924e-1996-0fd2e4473ada');
INSERT INTO `microchip_pin_log` VALUES ('3f6cbc4b-61ce-efe8-977b-a109e7ce8748', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2000-01-26 02:31:40', '{\"x\": \"2042\", \"y\": \"6308\"}', '9003c641-8ef8-ea20-6c06-232323b50ccd');
INSERT INTO `microchip_pin_log` VALUES ('3fbe9cc2-793b-1cf6-7471-ef7919a7899b', '0.83', '48', '0.90', 1, 'pin', 1, 'pin', '2005-08-13 17:35:41', '{\"x\": \"6299\", \"y\": \"1686\"}', 'f19c5790-8fbb-d20a-20db-883a19ecdd40');
INSERT INTO `microchip_pin_log` VALUES ('3fd40de4-3bd3-d3d1-eb64-45d2e1986038', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2013-08-28 23:23:15', '{\"x\": \"4822\", \"y\": \"7810\"}', 'c7154887-5cde-5b49-55e3-47c7dcf759c5');
INSERT INTO `microchip_pin_log` VALUES ('41643477-8e33-d8a1-6490-29d94cc6af23', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2016-01-23 08:33:04', '{\"x\": \"1086\", \"y\": \"4297\"}', 'aeaf90eb-ba7a-1e0f-e3ba-2e3db8f417fe');
INSERT INTO `microchip_pin_log` VALUES ('4181caae-d430-25d7-cea5-90083908cc28', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2005-02-01 02:55:25', '{\"x\": \"9009\", \"y\": \"8125\"}', 'af4201d5-c72a-738d-03bf-711bb3f5c2cd');
INSERT INTO `microchip_pin_log` VALUES ('419cd0be-c923-c72f-4d60-185762923956', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2005-10-23 23:14:44', '{\"x\": \"4208\", \"y\": \"8804\"}', '283daf27-d09b-47ff-0e00-77893662ccab');
INSERT INTO `microchip_pin_log` VALUES ('44138469-8cee-6c55-a774-0ea26c4d8160', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2022-07-25 01:49:21', '{\"x\": \"2647\", \"y\": \"6209\"}', '9d526a98-19cc-40e2-ae5b-01161e5a0cdc');
INSERT INTO `microchip_pin_log` VALUES ('444d70d6-df40-48d1-9e40-81491ae686b3', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2021-01-30 23:34:59', '{\"x\": \"4479\", \"y\": \"8404\"}', '0e9c5030-66ed-64a1-f836-3cde31cbcc6c');
INSERT INTO `microchip_pin_log` VALUES ('44be8e42-f751-63d1-9dac-f3c4e5254d87', '0.97', '48', '0.99', 2, 'notpin', 1, 'pin', '2007-09-28 21:40:35', '{\"x\": \"9386\", \"y\": \"9623\"}', '233c587f-692e-9dd1-2025-7414e824724a');
INSERT INTO `microchip_pin_log` VALUES ('45632c3e-23c0-c984-4d79-ce6a001be040', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2019-07-06 21:12:31', '{\"x\": \"8608\", \"y\": \"4295\"}', 'ee9740f3-cdaf-ca5b-8b7f-81013b5a0217');
INSERT INTO `microchip_pin_log` VALUES ('45bb2a31-fa49-7f50-0369-3db4f6315139', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2010-02-07 08:26:49', '{\"x\": \"7624\", \"y\": \"9589\"}', '51cbe3fc-e174-ad31-3145-a54d1e225210');
INSERT INTO `microchip_pin_log` VALUES ('461223fa-c7e1-dd9f-b085-7a20de0e7c9b', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2013-02-16 00:40:47', '{\"x\": \"6339\", \"y\": \"0569\"}', 'a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf');
INSERT INTO `microchip_pin_log` VALUES ('46995984-0786-9d91-3e68-68653a526e1f', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2020-03-21 17:29:50', '{\"x\": \"6444\", \"y\": \"4517\"}', '5495c631-7f85-e72b-ae06-a1f9b230e9d6');
INSERT INTO `microchip_pin_log` VALUES ('46b871e4-0427-bec1-ad0a-cd7d3ff27aaf', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2014-01-10 00:46:07', '{\"x\": \"1928\", \"y\": \"0264\"}', '483d0fbe-0a24-80a6-a64c-04ae6a79988f');
INSERT INTO `microchip_pin_log` VALUES ('46c05471-bd8f-4ae0-1f3d-61bffca9574d', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2006-11-30 07:56:27', '{\"x\": \"5355\", \"y\": \"1261\"}', 'c9a89b55-9ccc-63dd-7acd-67c89eeed49a');
INSERT INTO `microchip_pin_log` VALUES ('476b88f0-09aa-4199-c717-f9f55546923c', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2003-12-01 21:39:59', '{\"x\": \"2300\", \"y\": \"4634\"}', '663f84ba-74c2-4264-49e1-5e9e436296d0');
INSERT INTO `microchip_pin_log` VALUES ('4803d6f6-7de3-ee1a-70e3-17b2f91465ab', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2010-09-08 03:55:34', '{\"x\": \"6565\", \"y\": \"1100\"}', '9f07379c-40d0-3194-73b7-60abe307da05');
INSERT INTO `microchip_pin_log` VALUES ('48499631-0064-304c-4735-b9797cbcaf11', '0.90', '48', '0.93', 2, 'pin', 1, 'notpin', '2010-08-28 18:10:27', '{\"x\": \"8411\", \"y\": \"2476\"}', '7d8169e6-29b6-375c-d203-6fc4c7d955ae');
INSERT INTO `microchip_pin_log` VALUES ('4850ef4b-122d-fcbd-9bbb-f9c10cb0fc79', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2010-04-21 10:28:11', '{\"x\": \"1290\", \"y\": \"9187\"}', 'c9bd89cd-1c22-0183-221f-b53837201712');
INSERT INTO `microchip_pin_log` VALUES ('487b6f54-732c-2613-997e-9b96769afc31', '0.97', '48', '0.98', 2, 'pin', 1, 'pin', '2005-04-15 22:50:44', '{\"x\": \"1475\", \"y\": \"3693\"}', '38e92f1c-62db-5b69-3340-573515ae9a2a');
INSERT INTO `microchip_pin_log` VALUES ('487dab36-0f43-6f15-bf17-b5b26b5aac9b', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2015-11-13 23:15:21', '{\"x\": \"0639\", \"y\": \"8047\"}', 'cbbe035f-a752-d55c-f482-0c4a3d79d02a');
INSERT INTO `microchip_pin_log` VALUES ('488c50e6-16ee-d7c0-56b5-cf58e790c6dd', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2010-05-26 00:41:49', '{\"x\": \"3065\", \"y\": \"0754\"}', '532aaced-a980-782d-8005-ba1613f19472');
INSERT INTO `microchip_pin_log` VALUES ('48921b64-530b-3b8f-fbfb-7b70035c3f59', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2014-01-12 16:33:31', '{\"x\": \"9105\", \"y\": \"8191\"}', 'fe7fdf86-b67f-1431-0813-a814cbc11878');
INSERT INTO `microchip_pin_log` VALUES ('48e0db4e-3694-3272-d50c-7bc147cca4a8', '0.13', '48', '0.92', 1, 'pin', 1, 'notpin', '2020-07-25 07:55:10', '{\"x\": \"0059\", \"y\": \"7901\"}', '28fa47cf-df5b-a145-efce-381734432875');
INSERT INTO `microchip_pin_log` VALUES ('48e13991-5755-7644-b259-845e7b4a4c29', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2007-02-25 19:16:06', '{\"x\": \"5462\", \"y\": \"9184\"}', '788a518a-d626-37c5-5a24-378c7138ad6a');
INSERT INTO `microchip_pin_log` VALUES ('49056d9d-729b-8a6d-8109-9362ceceb8b9', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2022-09-24 07:58:13', '{\"x\": \"5601\", \"y\": \"7974\"}', '2e9ce4ca-4ac2-ca94-bfe7-2fb581dba172');
INSERT INTO `microchip_pin_log` VALUES ('4922d60d-a381-88ed-6c26-fb12b976efdc', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2015-03-29 07:04:04', '{\"x\": \"9077\", \"y\": \"4436\"}', '548193df-46ef-7105-3427-18ba9f4dee8f');
INSERT INTO `microchip_pin_log` VALUES ('49f91272-251f-638f-0e7c-3f960e5c3d10', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2004-01-04 02:21:41', '{\"x\": \"4512\", \"y\": \"4750\"}', 'cc28697e-f698-b29a-381e-00a55df68f4f');
INSERT INTO `microchip_pin_log` VALUES ('4a3f940d-1f6c-61b6-87e0-2b986fe2877b', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2009-03-22 11:31:42', '{\"x\": \"4680\", \"y\": \"4084\"}', '47cb5447-decb-a211-343d-1aaab53fff48');
INSERT INTO `microchip_pin_log` VALUES ('4a529ed9-906f-1a3f-3517-b2270d14ea8f', '0.87', '48', '0.97', 2, 'notpin', 1, 'notpin', '2016-04-01 01:09:18', '{\"x\": \"9305\", \"y\": \"5285\"}', '56176c49-2c55-e933-75f9-9a6fa2fe192c');
INSERT INTO `microchip_pin_log` VALUES ('4a88288e-9da4-023e-e213-91d381946e59', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2008-06-10 09:59:05', '{\"x\": \"9931\", \"y\": \"6864\"}', 'da3bda6d-7a16-b83e-8fea-2459f51afd7e');
INSERT INTO `microchip_pin_log` VALUES ('4ae48c55-d6c0-94c6-672f-f31f39f2b1c4', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2018-06-24 21:05:08', '{\"x\": \"1317\", \"y\": \"6055\"}', 'bf06196c-d6f2-b438-5c8b-388ddb50366c');
INSERT INTO `microchip_pin_log` VALUES ('4b252cf9-1a24-b5ae-3394-1f010f1a56a2', '0.48', '48', '0.91', 1, 'pin', 1, 'pin', '2003-05-19 07:40:55', '{\"x\": \"1068\", \"y\": \"9784\"}', 'e60ee74a-bcb6-2b9b-477a-9e386beacd1f');
INSERT INTO `microchip_pin_log` VALUES ('4b25d6b3-c84a-d755-f175-b314e4a76511', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2003-10-03 01:48:51', '{\"x\": \"8540\", \"y\": \"4866\"}', '5cf3b6ae-be7b-f918-3320-efce0d9bc9ba');
INSERT INTO `microchip_pin_log` VALUES ('4bd988e2-a5f4-e634-6c12-75d1028f0b10', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2012-04-22 01:19:57', '{\"x\": \"5810\", \"y\": \"2281\"}', 'b7f204c4-b7d7-4abe-a4a6-3a6dc5a7d5e1');
INSERT INTO `microchip_pin_log` VALUES ('4be69b6b-5252-20ef-3ad9-1bd3cb8f720b', '0.97', '48', '0.95', 1, 'notpin', 1, 'pin', '2002-03-24 02:08:34', '{\"x\": \"5132\", \"y\": \"8390\"}', '4ae1fada-b254-f5b0-3c37-278c7dcd9de3');
INSERT INTO `microchip_pin_log` VALUES ('4c126622-42e9-af1d-29da-7f8006a15278', '0.62', '48', '0.96', 2, 'pin', 1, 'notpin', '2016-03-22 06:20:45', '{\"x\": \"7835\", \"y\": \"3983\"}', '673f1a05-3aa7-09c6-2f29-b2cfbe91f215');
INSERT INTO `microchip_pin_log` VALUES ('4c42bbb0-c732-b601-a7e9-d9728f4ac37e', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2008-09-25 05:08:41', '{\"x\": \"5578\", \"y\": \"0415\"}', '506e9b0a-0326-ff26-4b21-4d7b0f459ed2');
INSERT INTO `microchip_pin_log` VALUES ('4ccb765c-9ecc-1cc1-70cc-2df02c49ea20', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2013-03-10 10:56:16', '{\"x\": \"7661\", \"y\": \"9436\"}', 'e7545353-5034-7dd8-ae17-8ee58b19454a');
INSERT INTO `microchip_pin_log` VALUES ('4d09bf89-8e40-77ef-b602-024ed69508b2', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2000-08-21 21:18:24', '{\"x\": \"4472\", \"y\": \"8373\"}', '03325039-452c-8be6-5112-b158e3efb6a1');
INSERT INTO `microchip_pin_log` VALUES ('4d19c287-51f5-fbcd-395f-837bc4034cd2', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2002-10-19 00:21:50', '{\"x\": \"4664\", \"y\": \"1272\"}', 'c8419ec4-ddfb-8940-fde6-b6e432c497b8');
INSERT INTO `microchip_pin_log` VALUES ('4d2d92a0-1ca5-a77b-487c-4de5971b806e', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2007-02-27 00:20:00', '{\"x\": \"3561\", \"y\": \"2486\"}', '6e490b06-a7ca-689b-2c03-d2fd3ccc5e64');
INSERT INTO `microchip_pin_log` VALUES ('4d5ca557-29b0-f940-63d8-f737e417b525', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2011-07-13 14:07:55', '{\"x\": \"1910\", \"y\": \"9261\"}', 'a780fee6-a0ec-d953-e2c9-2af0d5f1f020');
INSERT INTO `microchip_pin_log` VALUES ('4d8761b6-3600-8f28-cbe5-7a182682a9d8', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2007-11-01 21:04:21', '{\"x\": \"6378\", \"y\": \"7772\"}', 'f4bae76c-2074-17d2-b97c-f9346269b8ad');
INSERT INTO `microchip_pin_log` VALUES ('4d9ce641-d963-49ec-42bd-173ea5c51ee5', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2009-03-01 14:36:42', '{\"x\": \"4100\", \"y\": \"6332\"}', 'e256f913-121c-9cc7-7a4c-c1ce584e53a2');
INSERT INTO `microchip_pin_log` VALUES ('4df69b9b-179d-f4f5-5c6b-fe8321dc58b8', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2010-04-22 01:20:49', '{\"x\": \"7395\", \"y\": \"6420\"}', 'fcef231c-4cd8-cdd5-2a88-d2bb502c72e2');
INSERT INTO `microchip_pin_log` VALUES ('4e34dd8e-83f7-e261-d335-27af93b3640f', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2017-09-29 23:12:25', '{\"x\": \"6861\", \"y\": \"9376\"}', '2dba4c86-3b4c-3c47-3c9a-245154e8ee5f');
INSERT INTO `microchip_pin_log` VALUES ('4e495af5-6897-494e-28d2-3fae5ef90d51', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2000-07-14 17:55:03', '{\"x\": \"5177\", \"y\": \"3028\"}', '95444be7-df47-956f-43eb-dcd5242dfe59');
INSERT INTO `microchip_pin_log` VALUES ('4ee773d0-2d7a-5ba2-65cd-4d0d6bfd5756', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2005-07-18 15:15:34', '{\"x\": \"6275\", \"y\": \"1919\"}', '48926f09-20bc-100a-c77d-d83e50865f2e');
INSERT INTO `microchip_pin_log` VALUES ('4f12ff88-c66f-6584-c5f0-17ce8147892e', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2013-07-21 03:47:47', '{\"x\": \"3324\", \"y\": \"7872\"}', '70d6279a-67b8-6a01-fa3b-0e5c1e8007d3');
INSERT INTO `microchip_pin_log` VALUES ('4f6f5fdd-58e3-aef9-f41d-a8baeb8b6988', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2015-06-06 15:53:30', '{\"x\": \"4003\", \"y\": \"9005\"}', 'e8a4a425-de9a-d085-5f41-2e7c08130620');
INSERT INTO `microchip_pin_log` VALUES ('4fb33b72-8fbf-b88c-f5bd-bc9b94176ae1', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2016-11-07 09:34:55', '{\"x\": \"3885\", \"y\": \"8015\"}', '531b4110-fcaa-2206-d2c2-4d8e18d50731');
INSERT INTO `microchip_pin_log` VALUES ('5047e525-044d-5d6a-21e6-0e2dc2155097', '0.97', '48', '0.95', 1, 'notpin', 1, 'pin', '2001-09-01 21:35:58', '{\"x\": \"8647\", \"y\": \"3276\"}', '50aca712-7012-a962-7c36-11e7ce148784');
INSERT INTO `microchip_pin_log` VALUES ('5086b2a4-2cfc-e3c9-c5c4-775d0d4dfd5f', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2011-09-21 03:49:55', '{\"x\": \"7392\", \"y\": \"7317\"}', '48926f09-20bc-100a-c77d-d83e50865f2e');
INSERT INTO `microchip_pin_log` VALUES ('50b0b7d4-e451-bc09-9cb2-c43121bfd867', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2014-05-30 21:37:12', '{\"x\": \"1380\", \"y\": \"8498\"}', '9ec590c0-c18b-180c-47df-9396fbb88951');
INSERT INTO `microchip_pin_log` VALUES ('50e53156-5a47-cb15-c959-6ecb8a5ff1aa', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2021-09-21 22:00:11', '{\"x\": \"3240\", \"y\": \"3096\"}', 'd5d3da1e-e61a-39d1-375c-16db7b19f012');
INSERT INTO `microchip_pin_log` VALUES ('514db128-8d44-8b90-8038-e97d3daab808', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2005-10-22 08:18:04', '{\"x\": \"6060\", \"y\": \"4547\"}', 'fe9bf912-72b3-9a92-66ce-8b850219fe02');
INSERT INTO `microchip_pin_log` VALUES ('51792d30-a369-b849-42d8-ccb2a4d24f90', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2009-08-07 18:11:36', '{\"x\": \"2263\", \"y\": \"6027\"}', '92517d96-fc10-de85-5dd5-caa000acee43');
INSERT INTO `microchip_pin_log` VALUES ('518e89df-3317-76a3-794c-b89ef9d7d5b4', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2019-03-11 05:32:33', '{\"x\": \"8743\", \"y\": \"1170\"}', '04838318-bcfa-1d99-55eb-1af0a5f2b444');
INSERT INTO `microchip_pin_log` VALUES ('51944c14-fab7-9823-5c19-f085b7d1a91c', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2002-05-04 10:03:49', '{\"x\": \"7319\", \"y\": \"7501\"}', '4b272bf1-a7b7-5879-7c24-63a90d0014bd');
INSERT INTO `microchip_pin_log` VALUES ('5197e5ab-b992-01dd-db3e-8bef8ef9b85c', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2020-07-17 00:15:43', '{\"x\": \"9117\", \"y\": \"0101\"}', 'b324f2c0-8c43-a819-9249-6de663ba2419');
INSERT INTO `microchip_pin_log` VALUES ('51c62c4f-85de-e7ab-c096-3923fa563848', '0.71', '48', '0.97', 1, 'notpin', 1, 'pin', '2009-05-19 07:08:20', '{\"x\": \"6007\", \"y\": \"1031\"}', 'e95b65c7-3b1a-dc1b-23d1-9e8d53cca2f0');
INSERT INTO `microchip_pin_log` VALUES ('52021eb9-c71d-bcfc-cb26-a7972db282e7', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2014-04-18 02:04:37', '{\"x\": \"7710\", \"y\": \"5029\"}', '5acdaeb7-689e-7e6b-0dc9-3c8da09cc398');
INSERT INTO `microchip_pin_log` VALUES ('5202b6a5-b53c-91f4-b57c-ba4ab7c584fe', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2014-01-15 09:30:15', '{\"x\": \"9712\", \"y\": \"7228\"}', '7cfe7a9b-6aae-d4a5-8398-044a5f149e5e');
INSERT INTO `microchip_pin_log` VALUES ('5218f91b-38fd-5067-860f-16197e1555d4', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2000-09-03 06:15:13', '{\"x\": \"3596\", \"y\": \"2616\"}', '69d5e4f3-b203-0ceb-e11b-fd28b4249686');
INSERT INTO `microchip_pin_log` VALUES ('523ae481-55f3-5753-e543-58157f544f9a', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2013-09-04 04:27:08', '{\"x\": \"0047\", \"y\": \"4411\"}', 'df3aa329-f38c-77f8-1183-76ce86e00771');
INSERT INTO `microchip_pin_log` VALUES ('5298854d-d58b-2a2f-c00a-36d4c1085758', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2021-01-21 04:25:22', '{\"x\": \"2745\", \"y\": \"9627\"}', 'e17775a7-05f4-f4c6-f898-aa9c1373a21e');
INSERT INTO `microchip_pin_log` VALUES ('52b780b9-c95b-5d2b-ff6a-6e757841e49d', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2022-01-26 18:23:37', '{\"x\": \"9312\", \"y\": \"9697\"}', '26090eb3-691d-5112-5283-c9e43d2c7260');
INSERT INTO `microchip_pin_log` VALUES ('52e7b82f-bf8e-cf28-7457-c22ca8751b64', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2011-10-04 15:14:37', '{\"x\": \"9010\", \"y\": \"8670\"}', 'b0f36095-e4aa-6807-4e99-976470bca52b');
INSERT INTO `microchip_pin_log` VALUES ('535744fc-a9cd-6bfb-97b9-5e7aa307d6d7', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2000-06-07 00:22:22', '{\"x\": \"9817\", \"y\": \"2891\"}', 'c08cd669-a759-ee2d-461f-0412346eeb6e');
INSERT INTO `microchip_pin_log` VALUES ('53746f51-98af-197e-9290-3a51ba9366bb', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2003-07-25 09:00:19', '{\"x\": \"9695\", \"y\": \"4594\"}', '5d79cfbf-948e-ac6a-2a4c-fa7d93969924');
INSERT INTO `microchip_pin_log` VALUES ('537627a1-9f2a-733f-d89c-54b0119895b8', '0.06', '48', '0.94', 1, 'pin', 1, 'pin', '2006-09-09 12:47:53', '{\"x\": \"8562\", \"y\": \"1521\"}', '5b614e78-c88c-b5a1-99e2-9a2594b38f2c');
INSERT INTO `microchip_pin_log` VALUES ('5486b3b6-6833-a06b-77a1-1934618b9e3c', '0.28', '48', '0.91', 2, 'notpin', 1, 'notpin', '2018-05-21 22:43:46', '{\"x\": \"7430\", \"y\": \"4792\"}', 'e9c9e459-9724-7e6a-f083-563d12b40462');
INSERT INTO `microchip_pin_log` VALUES ('548e6add-7038-7eb4-9e45-b60a444c6df9', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2015-10-13 02:31:12', '{\"x\": \"0390\", \"y\": \"8656\"}', '4535a198-671a-4849-b671-c92334c973bb');
INSERT INTO `microchip_pin_log` VALUES ('5513b3ed-0516-dff4-130a-0c9c4d180ecb', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2021-08-09 11:04:56', '{\"x\": \"4056\", \"y\": \"6846\"}', 'a4136c76-28a1-396a-1f73-a66e1c795c68');
INSERT INTO `microchip_pin_log` VALUES ('5573542a-2ed6-232c-fdd8-d130f38a96b3', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2012-07-31 07:24:47', '{\"x\": \"0410\", \"y\": \"7852\"}', '0edbc140-c349-abe0-3872-5472dac3742c');
INSERT INTO `microchip_pin_log` VALUES ('5598fe84-0325-9d58-6bb1-05f267956727', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2022-05-10 03:47:02', '{\"x\": \"5075\", \"y\": \"8386\"}', '03c1f278-1bed-0070-c617-86ad00ce633f');
INSERT INTO `microchip_pin_log` VALUES ('55eedb58-f9d2-27ce-ae60-e79bd798e362', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2008-04-03 18:08:29', '{\"x\": \"1400\", \"y\": \"5528\"}', '6230aea4-0f8f-34df-4792-08f46543aa5f');
INSERT INTO `microchip_pin_log` VALUES ('55f71bfb-8bef-64eb-d351-8464cd86e285', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2006-02-06 09:18:39', '{\"x\": \"9690\", \"y\": \"7076\"}', '5ae2dfae-93f2-2316-0e9a-674c83403e18');
INSERT INTO `microchip_pin_log` VALUES ('563a6fe3-a378-21d7-6a5b-f903fe049802', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2022-01-29 00:46:19', '{\"x\": \"2053\", \"y\": \"8573\"}', '8e92276b-a210-257f-aeee-374f77aff05f');
INSERT INTO `microchip_pin_log` VALUES ('564c8c1d-3917-6c69-1b01-85af616bb7a2', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2017-11-15 20:13:17', '{\"x\": \"4304\", \"y\": \"0771\"}', '85e230e8-5c2f-7778-979f-bb203e1516df');
INSERT INTO `microchip_pin_log` VALUES ('57aeb8f2-8056-c780-41a0-082b8f75db8e', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2003-06-08 11:00:25', '{\"x\": \"9579\", \"y\": \"0879\"}', '86c51202-afae-e9c0-c9d2-663a3f944be9');
INSERT INTO `microchip_pin_log` VALUES ('57e7d9d1-560d-0375-5214-1ac226db2331', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2008-09-14 16:59:38', '{\"x\": \"5276\", \"y\": \"9857\"}', '2f0f6668-607a-99fd-b24e-2a582297a49a');
INSERT INTO `microchip_pin_log` VALUES ('5864984f-d0df-3508-5c1f-f148c8601cc5', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2006-06-27 01:15:26', '{\"x\": \"5736\", \"y\": \"3798\"}', 'f41d28e5-35c2-fce8-e402-bbe36ed489a6');
INSERT INTO `microchip_pin_log` VALUES ('58afb94d-5dca-6cd4-f748-44d178d4f8e4', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2009-12-30 04:28:00', '{\"x\": \"2450\", \"y\": \"3959\"}', 'd7726b44-b1c9-d4c9-061f-2153b0f78977');
INSERT INTO `microchip_pin_log` VALUES ('58ddb891-4767-33f3-c88e-2220b1bcfdbe', '0.33', '48', '0.92', 1, 'notpin', 1, 'pin', '2013-08-31 07:48:28', '{\"x\": \"1954\", \"y\": \"0020\"}', '3dba0cc2-6f0d-217c-a898-f4993ebaf282');
INSERT INTO `microchip_pin_log` VALUES ('58e12132-acaf-4e5d-a5af-79c0a012a4a5', '0.96', '48', '0.98', 2, 'notpin', 1, 'notpin', '2000-02-01 11:34:05', '{\"x\": \"2958\", \"y\": \"5093\"}', '62bab34c-ae35-2ed6-612d-f8fdd3b86e32');
INSERT INTO `microchip_pin_log` VALUES ('59151d60-ef20-77f7-06a5-209bd16a2e8e', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2012-07-23 17:03:16', '{\"x\": \"0850\", \"y\": \"2026\"}', '5f54c3ab-d438-de0e-5ff7-6edd3e355ac4');
INSERT INTO `microchip_pin_log` VALUES ('593e5b4c-3357-c1ff-4fd2-faa09e2ed592', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2004-08-14 06:39:24', '{\"x\": \"0567\", \"y\": \"6973\"}', '06205d73-0501-0768-c9d6-06a8e2c3c372');
INSERT INTO `microchip_pin_log` VALUES ('5991c8db-69e1-bbc6-a898-bbb6f6baa7fa', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2000-05-10 19:35:35', '{\"x\": \"6500\", \"y\": \"7811\"}', '40a355bc-97d6-eb82-b3c8-970fcf98ef42');
INSERT INTO `microchip_pin_log` VALUES ('5a079b41-9f08-532d-69f5-a991ed7e0ab3', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2010-07-24 15:53:12', '{\"x\": \"6499\", \"y\": \"4345\"}', '3e849af7-c7f4-d556-b3c1-9ed61e89f492');
INSERT INTO `microchip_pin_log` VALUES ('5a0e773c-e192-269f-7285-6e6c5d11ea44', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2012-08-24 06:34:39', '{\"x\": \"9852\", \"y\": \"7173\"}', 'f4edc39e-5061-a5b8-490f-403e199f5ec0');
INSERT INTO `microchip_pin_log` VALUES ('5a18c588-360b-2475-fbac-c6aaa916ecb4', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2016-10-26 17:34:20', '{\"x\": \"3260\", \"y\": \"2398\"}', 'e0be0b7a-cbc5-5490-715f-88f0d56913e5');
INSERT INTO `microchip_pin_log` VALUES ('5a24f4ed-2392-1f26-94b6-bb7a579cf6df', '0.47', '48', '0.92', 1, 'notpin', 1, 'pin', '2012-05-25 06:39:39', '{\"x\": \"9449\", \"y\": \"3215\"}', '531b4110-fcaa-2206-d2c2-4d8e18d50731');
INSERT INTO `microchip_pin_log` VALUES ('5a95b3de-0733-31b3-c4b8-6c2827ab9e20', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2001-04-09 12:44:47', '{\"x\": \"8757\", \"y\": \"9122\"}', '0f1118ac-65e2-9cec-7211-3bd27371dc1f');
INSERT INTO `microchip_pin_log` VALUES ('5b138fa5-8458-d5ec-8207-ac04410c26d7', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2020-03-18 19:31:43', '{\"x\": \"4168\", \"y\": \"4935\"}', '96ee2bab-cc90-f018-630f-00d90911841f');
INSERT INTO `microchip_pin_log` VALUES ('5b255f1e-a552-4931-2115-75e5a5c1e82e', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2015-03-05 19:37:02', '{\"x\": \"2709\", \"y\": \"9876\"}', '8c6c7853-99f5-0258-3c4a-aec7abe03663');
INSERT INTO `microchip_pin_log` VALUES ('5bc9df0d-04b0-78ec-b687-35a00e5323b1', '0.42', '48', '0.93', 1, 'pin', 1, 'notpin', '2005-09-18 16:51:23', '{\"x\": \"4955\", \"y\": \"1839\"}', '06bdb058-9378-d2fe-6e97-d9bc24771d41');
INSERT INTO `microchip_pin_log` VALUES ('5c1d647e-a7d8-37eb-ba27-2325c604cff6', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2009-03-08 04:19:06', '{\"x\": \"3804\", \"y\": \"9946\"}', 'a9ebb6d6-0e35-2123-72f7-5aac6aa45c96');
INSERT INTO `microchip_pin_log` VALUES ('5c7398a7-7a5c-007f-81b3-ff98e963777a', '0.97', '32', '0.95', 2, 'notpin', 1, 'pin', '2008-04-08 04:09:49', '{\"x\": \"7832\", \"y\": \"8593\"}', '9a4ac44b-a150-3c37-a94f-787dffdf5c26');
INSERT INTO `microchip_pin_log` VALUES ('5ca5fdc8-c6b3-b72a-1e2d-e2a3b96fd066', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2004-04-25 15:28:23', '{\"x\": \"5427\", \"y\": \"5678\"}', 'fcef231c-4cd8-cdd5-2a88-d2bb502c72e2');
INSERT INTO `microchip_pin_log` VALUES ('5cbfe340-1a17-f891-fd30-e163a98ef60b', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2015-12-17 00:37:27', '{\"x\": \"9369\", \"y\": \"2093\"}', 'ee9740f3-cdaf-ca5b-8b7f-81013b5a0217');
INSERT INTO `microchip_pin_log` VALUES ('5ce27938-2ccf-3d01-e5bd-b03ac2144a4a', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2006-02-10 08:11:42', '{\"x\": \"2682\", \"y\": \"4549\"}', '6d09bd63-780a-13ef-10d1-2e11142b5a7b');
INSERT INTO `microchip_pin_log` VALUES ('5d3e3e2e-e20a-fd78-8a94-bc4815629d1d', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2016-10-22 08:50:12', '{\"x\": \"3393\", \"y\": \"7715\"}', '6c7b2c5e-d48c-d149-e855-ba8083d69c18');
INSERT INTO `microchip_pin_log` VALUES ('5debf5f7-37af-8adc-3c56-9220a81669ad', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2007-10-29 09:18:50', '{\"x\": \"5416\", \"y\": \"2698\"}', '371864e3-8457-5339-891b-5f03633ff6de');
INSERT INTO `microchip_pin_log` VALUES ('5e0f8523-29b2-d9e4-ee61-872930dbc59b', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2020-01-03 10:01:26', '{\"x\": \"1576\", \"y\": \"4302\"}', 'ccf643ad-631b-ead5-26e5-2d5a8859987e');
INSERT INTO `microchip_pin_log` VALUES ('5e858b12-4621-6aa7-6332-a1c30b8b339e', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2006-01-18 18:40:01', '{\"x\": \"3046\", \"y\": \"0404\"}', '0d8c1d74-6713-654e-7ec0-3ef25c7b45d4');
INSERT INTO `microchip_pin_log` VALUES ('5ed686c3-aba6-50c1-78f2-7a3fde3d40f7', '0.97', '48', '0.93', 2, 'pin', 1, 'notpin', '2007-12-25 02:31:25', '{\"x\": \"8811\", \"y\": \"9497\"}', 'dbba4b27-99ea-28a8-3ca4-0c0fba502d2f');
INSERT INTO `microchip_pin_log` VALUES ('5f0834b7-e2bc-26e2-0fca-915e8561f01b', '0.34', '48', '0.94', 1, 'notpin', 1, 'pin', '2006-03-19 09:56:53', '{\"x\": \"9381\", \"y\": \"2736\"}', 'c4411074-738c-46d6-91c6-62dbeaadb116');
INSERT INTO `microchip_pin_log` VALUES ('5f1343ab-af13-ea05-8dab-e966013d7862', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2008-01-11 06:51:31', '{\"x\": \"0652\", \"y\": \"6311\"}', '6230aea4-0f8f-34df-4792-08f46543aa5f');
INSERT INTO `microchip_pin_log` VALUES ('5f4c4e67-22cb-e532-e302-21e704d93212', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2019-05-07 19:15:18', '{\"x\": \"3221\", \"y\": \"4293\"}', 'a7207613-c501-6e21-2519-61a184020212');
INSERT INTO `microchip_pin_log` VALUES ('5fadae0e-437f-451a-f358-d566e3e4af38', '0.97', '48', '0.90', 1, 'notpin', 1, 'pin', '2007-01-21 22:43:59', '{\"x\": \"9628\", \"y\": \"6677\"}', '50600eb7-b162-7825-3424-c0d8010e57be');
INSERT INTO `microchip_pin_log` VALUES ('5fca1313-e6ff-82fa-d7a0-2231d9ff1b7d', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2011-02-18 02:18:28', '{\"x\": \"4184\", \"y\": \"2543\"}', '2150a653-9dcb-a1ad-1a44-e4625d3dd591');
INSERT INTO `microchip_pin_log` VALUES ('5fecda08-88c7-8fd2-ece3-165ff5d5d4a3', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2006-05-17 21:30:14', '{\"x\": \"3417\", \"y\": \"0760\"}', '7542b1d3-df9c-a03f-892e-01d5c7839a9b');
INSERT INTO `microchip_pin_log` VALUES ('60029dac-c54a-6ca0-fe03-9670f5af15a9', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2013-03-06 05:28:25', '{\"x\": \"8195\", \"y\": \"4857\"}', 'f014677a-6fc1-7424-7a00-c6a9681720d6');
INSERT INTO `microchip_pin_log` VALUES ('6004d896-a382-ae28-300c-aa8ae1480ee7', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2012-11-26 18:00:24', '{\"x\": \"0012\", \"y\": \"5195\"}', 'bf06196c-d6f2-b438-5c8b-388ddb50366c');
INSERT INTO `microchip_pin_log` VALUES ('6024e63c-bd02-6736-e7bd-1ee5f862709f', '0.80', '48', '0.92', 1, 'pin', 1, 'notpin', '2022-05-03 18:17:29', '{\"x\": \"0601\", \"y\": \"2314\"}', '71af0c9e-9442-0a4f-4f10-f22b4ec25d3c');
INSERT INTO `microchip_pin_log` VALUES ('60365127-332d-3943-fd7b-fcedb4364a61', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2012-01-01 09:46:53', '{\"x\": \"8567\", \"y\": \"0353\"}', '3bbd938e-a49b-36c5-0618-db948cf3cae2');
INSERT INTO `microchip_pin_log` VALUES ('604ff82c-e633-37ad-50a7-0ceb882a2173', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2021-12-02 22:56:30', '{\"x\": \"7157\", \"y\": \"1157\"}', '3a8e7930-7148-9d1f-a956-49fa28a3fbce');
INSERT INTO `microchip_pin_log` VALUES ('60fc4f7c-b81a-0b69-18d8-eedee953a4d6', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2018-05-04 22:47:41', '{\"x\": \"6744\", \"y\": \"6462\"}', 'd85d4cd8-33c3-90f5-90c8-99f71889a000');
INSERT INTO `microchip_pin_log` VALUES ('61611023-1dfb-bc89-5781-26dfbd82e197', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2016-10-27 08:43:46', '{\"x\": \"6366\", \"y\": \"2446\"}', '6835fba7-a8b1-e83e-eaba-4e320e50b8f3');
INSERT INTO `microchip_pin_log` VALUES ('61775b33-ddf0-378f-76c1-54e611b1a3cf', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2006-12-17 02:51:38', '{\"x\": \"5905\", \"y\": \"6080\"}', '0470ba1e-4855-2fa1-ccfa-0466fc191cbf');
INSERT INTO `microchip_pin_log` VALUES ('6190272a-358c-f163-430e-1b2965fce07b', '0.43', '48', '0.93', 2, 'notpin', 1, 'notpin', '2001-12-10 06:55:47', '{\"x\": \"8013\", \"y\": \"4613\"}', 'd567ff59-ac54-ab06-9d58-a8a5901a9811');
INSERT INTO `microchip_pin_log` VALUES ('6196d1a2-9321-3ee1-e87d-36bb8ed9447f', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2006-04-27 14:18:02', '{\"x\": \"7292\", \"y\": \"0430\"}', 'f4bae76c-2074-17d2-b97c-f9346269b8ad');
INSERT INTO `microchip_pin_log` VALUES ('61d4770d-1693-80ec-9b16-ca8b35545fd9', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2015-10-13 17:02:59', '{\"x\": \"4487\", \"y\": \"9117\"}', '251ee713-6a32-19f0-3018-cb7677b5fa48');
INSERT INTO `microchip_pin_log` VALUES ('62413688-36a5-fb14-4073-f8e58dc6fbe6', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2006-07-26 11:43:22', '{\"x\": \"4710\", \"y\": \"2668\"}', '7b1b3c18-1b8d-e229-e9ea-5dce5ae7fed5');
INSERT INTO `microchip_pin_log` VALUES ('62b9fd96-dd4d-583b-4e7b-c32f826bae6e', '0.97', '20', '0.93', 2, 'pin', 1, 'notpin', '2017-07-24 17:07:05', '{\"x\": \"7748\", \"y\": \"7683\"}', '62bab34c-ae35-2ed6-612d-f8fdd3b86e32');
INSERT INTO `microchip_pin_log` VALUES ('62ebfbb2-4dbc-1339-352c-5d322eed26a4', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2005-08-06 06:29:03', '{\"x\": \"9998\", \"y\": \"2036\"}', '8e8a1cbd-156f-64e3-b7a2-c282537d203a');
INSERT INTO `microchip_pin_log` VALUES ('63210bf5-58e0-5cb8-0832-03bac56fc5c4', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2021-11-12 12:10:51', '{\"x\": \"5670\", \"y\": \"2199\"}', '2ccb6b14-9e0b-ffee-2a7f-0abee483bbbc');
INSERT INTO `microchip_pin_log` VALUES ('634fca9a-7060-f9e7-0121-8d185074f936', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2015-04-17 02:25:00', '{\"x\": \"7886\", \"y\": \"9107\"}', '8186582f-f85a-eae1-10b8-36b479b75329');
INSERT INTO `microchip_pin_log` VALUES ('63c2ec8e-05a2-2745-a380-60393ae996a5', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2021-04-11 15:50:49', '{\"x\": \"4548\", \"y\": \"1255\"}', '9e5ca11e-f187-91ed-0ad9-bf77e223157a');
INSERT INTO `microchip_pin_log` VALUES ('63f8203a-7459-ef49-35a6-ebbd45589c3a', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2004-07-26 11:55:25', '{\"x\": \"0365\", \"y\": \"9847\"}', 'a9e2cbeb-ef14-d9f7-e4c6-7461e98e8cb0');
INSERT INTO `microchip_pin_log` VALUES ('64248bbc-850f-a9e0-5a86-6c39cc5c9804', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2021-05-03 13:21:10', '{\"x\": \"7711\", \"y\": \"7532\"}', 'b60e9aed-09c7-7d0a-946c-a0a0f952033a');
INSERT INTO `microchip_pin_log` VALUES ('650f7654-dd81-87f3-a6ef-900796662fb8', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2017-02-19 04:23:22', '{\"x\": \"4583\", \"y\": \"7388\"}', 'c20e4615-ec97-4de0-5e33-846c145c8c43');
INSERT INTO `microchip_pin_log` VALUES ('6589c13b-f669-eda2-e6b6-145352ec6d64', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2022-04-30 10:29:56', '{\"x\": \"9405\", \"y\": \"1222\"}', '4fbafc75-66f3-f06f-d161-bf44526d4fb4');
INSERT INTO `microchip_pin_log` VALUES ('6619fef7-ecf8-a642-6f80-9b69f284b782', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2021-12-03 19:00:16', '{\"x\": \"5821\", \"y\": \"9114\"}', '3dd82449-5e07-199e-d13f-a6eb17f7ec75');
INSERT INTO `microchip_pin_log` VALUES ('6638d9d3-4c95-3563-b14f-bc6757d84086', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2019-04-15 04:17:38', '{\"x\": \"7241\", \"y\": \"4824\"}', '39dfc467-879d-ce12-2346-f84341b765d5');
INSERT INTO `microchip_pin_log` VALUES ('66858d79-6326-0808-4cf2-e09a23fa4111', '0.65', '48', '0.96', 1, 'notpin', 1, 'pin', '2020-11-14 03:09:52', '{\"x\": \"6721\", \"y\": \"8429\"}', '81e537b3-f835-1952-290d-e0092d1d64a4');
INSERT INTO `microchip_pin_log` VALUES ('66876ab5-4531-15b9-c97f-6efb7a07cd8e', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2010-10-14 22:13:16', '{\"x\": \"4669\", \"y\": \"5066\"}', 'c4411074-738c-46d6-91c6-62dbeaadb116');
INSERT INTO `microchip_pin_log` VALUES ('66d0a950-50aa-b1c5-1ae7-4747153d9116', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2010-07-07 13:06:07', '{\"x\": \"6504\", \"y\": \"8462\"}', '24ddc0df-cd7e-a1f3-488a-4a0e0850160e');
INSERT INTO `microchip_pin_log` VALUES ('66ef5e33-2a65-8daf-1539-101ea658f2c2', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2002-12-01 20:14:44', '{\"x\": \"8577\", \"y\": \"0395\"}', '475a66d1-8a42-3388-dd3a-31bbfb6ecc57');
INSERT INTO `microchip_pin_log` VALUES ('67024196-1680-5f3d-37eb-f4246cee9122', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2021-03-31 16:24:07', '{\"x\": \"4769\", \"y\": \"0381\"}', 'c7154887-5cde-5b49-55e3-47c7dcf759c5');
INSERT INTO `microchip_pin_log` VALUES ('6720f0d5-e0f6-a42f-54fc-adf29a023678', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2020-01-03 15:19:21', '{\"x\": \"2018\", \"y\": \"1472\"}', 'd029eb24-82c4-c8cc-ac5c-db003b755380');
INSERT INTO `microchip_pin_log` VALUES ('67552981-c161-d521-1047-a813cdd9ff71', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2001-10-02 12:43:00', '{\"x\": \"1412\", \"y\": \"9686\"}', 'efaaa20e-2a7b-16f6-b99d-398985c71467');
INSERT INTO `microchip_pin_log` VALUES ('688f0517-94c2-be4c-e4e1-6b1f190af5ee', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2017-10-28 11:16:09', '{\"x\": \"1524\", \"y\": \"2722\"}', '9b5ae60a-1dd4-5845-1415-3dc56cb0cf3a');
INSERT INTO `microchip_pin_log` VALUES ('689f8177-e373-2b33-baa5-d9a47f353e93', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2001-10-21 18:58:22', '{\"x\": \"1611\", \"y\": \"1550\"}', 'b7436037-3b8d-3c5e-e5a9-801b2891e9ef');
INSERT INTO `microchip_pin_log` VALUES ('68a351ac-a09b-36af-e77a-3fff644a751a', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2007-06-10 07:34:40', '{\"x\": \"6909\", \"y\": \"4289\"}', '25010fe8-4e0e-06f2-789d-b32cf65ef24e');
INSERT INTO `microchip_pin_log` VALUES ('68c2d160-9450-640a-b1d2-a7ef8c5c61c3', '0.37', '48', '0.98', 2, 'pin', 1, 'pin', '2014-08-31 14:59:00', '{\"x\": \"9315\", \"y\": \"9646\"}', '24be7b9a-056a-834d-05b8-1ecef1a3205c');
INSERT INTO `microchip_pin_log` VALUES ('691b37a5-7c28-0676-2b3b-6185c57c1fa0', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2012-07-31 21:42:44', '{\"x\": \"8009\", \"y\": \"0124\"}', '0766809d-a7be-b964-af7b-52af5ca3085c');
INSERT INTO `microchip_pin_log` VALUES ('694d093b-cb1d-50d5-5c8c-9b6aa1eb356d', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2006-10-29 20:03:33', '{\"x\": \"3000\", \"y\": \"1517\"}', 'd4c2e776-fd0d-dc40-1f91-bc246a0d082b');
INSERT INTO `microchip_pin_log` VALUES ('6993603c-513a-f28e-5dac-d5a13e5d472e', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2013-08-07 10:24:51', '{\"x\": \"1078\", \"y\": \"5931\"}', '050b6e0a-82d3-e6ad-0ff4-bf7866d17885');
INSERT INTO `microchip_pin_log` VALUES ('69f81ca9-6d41-d73a-0714-36077b605ab7', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2013-01-31 23:13:41', '{\"x\": \"0711\", \"y\": \"2253\"}', 'f5fdc683-0d24-1ae0-3237-b5cf32ea6bfe');
INSERT INTO `microchip_pin_log` VALUES ('69fc0168-d725-bcd5-7e15-26b3265e9587', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2008-07-15 23:48:29', '{\"x\": \"6777\", \"y\": \"3301\"}', '4eb89a7a-7ced-1e55-8941-3739c3efe358');
INSERT INTO `microchip_pin_log` VALUES ('6a187b43-f7f7-02a8-38be-5406cc55034c', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2010-01-08 23:42:09', '{\"x\": \"5910\", \"y\": \"1866\"}', '9da2a55d-5bbe-7337-1711-bd06dfa15359');
INSERT INTO `microchip_pin_log` VALUES ('6a19e205-baaa-5b59-6e79-07d2250134ca', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2007-03-30 08:49:04', '{\"x\": \"0246\", \"y\": \"8469\"}', '8e8dd5a7-7e2e-a5ae-ebc3-ef0d533563bd');
INSERT INTO `microchip_pin_log` VALUES ('6a59ab41-adbf-32c9-c068-a3e2c42ba43e', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2017-07-02 12:48:05', '{\"x\": \"7473\", \"y\": \"6059\"}', '86ae99d6-e274-5a6b-afc0-bb0c19ce183b');
INSERT INTO `microchip_pin_log` VALUES ('6add8e95-12db-ae33-fd7b-e1ad8a113c44', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2007-10-01 08:56:28', '{\"x\": \"8213\", \"y\": \"5385\"}', 'fb4e130a-93e7-0353-5b9d-c167e90d2c7e');
INSERT INTO `microchip_pin_log` VALUES ('6af824ec-ca6d-a34e-bb87-a73bc8dac97e', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2015-04-02 09:50:58', '{\"x\": \"6652\", \"y\": \"4847\"}', 'b95a2d48-8b46-0984-dda3-409060e9ac3f');
INSERT INTO `microchip_pin_log` VALUES ('6b18fa12-b84c-bb24-e2ec-81064ffbcf56', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2012-10-06 08:45:50', '{\"x\": \"1374\", \"y\": \"5395\"}', 'f45eebd8-ec01-18ef-112c-258fa9c4f832');
INSERT INTO `microchip_pin_log` VALUES ('6b3cd861-9fe7-5390-9ee1-7c69be8a7a85', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2015-04-28 23:44:21', '{\"x\": \"2660\", \"y\": \"8139\"}', '233c587f-692e-9dd1-2025-7414e824724a');
INSERT INTO `microchip_pin_log` VALUES ('6b4af6e9-7799-f854-7426-31302f306694', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2014-12-10 23:41:26', '{\"x\": \"8741\", \"y\": \"2599\"}', '40c27836-14d3-69b7-713e-6d13814a63c7');
INSERT INTO `microchip_pin_log` VALUES ('6ba1d9dd-0ef8-0b4e-fbb3-87de1730abae', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2002-03-19 06:11:48', '{\"x\": \"1622\", \"y\": \"5600\"}', '24be7b9a-056a-834d-05b8-1ecef1a3205c');
INSERT INTO `microchip_pin_log` VALUES ('6ba7661f-54cb-af55-8b1d-8c2b16dfa9dc', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2013-07-16 05:46:27', '{\"x\": \"2941\", \"y\": \"8482\"}', 'd489a94d-9102-b526-1d31-871a0a747805');
INSERT INTO `microchip_pin_log` VALUES ('6bb65ce6-4061-f984-5c08-0b09a5ca768e', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2019-04-14 15:26:03', '{\"x\": \"2078\", \"y\": \"1406\"}', '82195fb9-dae9-96b7-7534-9e2c3d0164b1');
INSERT INTO `microchip_pin_log` VALUES ('6c2c19eb-8df1-bee3-7561-5c8be76fcdae', '0.97', '48', '0.90', 1, 'notpin', 1, 'pin', '2003-12-16 00:17:26', '{\"x\": \"8869\", \"y\": \"3332\"}', '92c8d35b-df1a-188a-64b2-85b45d755077');
INSERT INTO `microchip_pin_log` VALUES ('6c72bbc6-b8b1-c269-0e43-ec52c8c64b82', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2017-03-13 01:29:21', '{\"x\": \"2425\", \"y\": \"1528\"}', '0d868ab7-78a7-e856-9ef0-c76da5bf17d2');
INSERT INTO `microchip_pin_log` VALUES ('6c9f531b-7d17-1da3-709c-367416af39ac', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2020-06-29 19:22:19', '{\"x\": \"5281\", \"y\": \"1977\"}', 'b65e83c6-85ed-f0ea-11bc-26cfd431e50b');
INSERT INTO `microchip_pin_log` VALUES ('6ccfad60-fba0-25ab-737c-a5b69308d06d', '0.97', '48', '0.90', 2, 'notpin', 1, 'notpin', '2015-06-02 06:37:30', '{\"x\": \"1970\", \"y\": \"8687\"}', 'dc0219aa-ce90-5071-3766-fe6e95fe1368');
INSERT INTO `microchip_pin_log` VALUES ('6cf3cf64-fea5-6724-9fb8-0989212437a5', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2022-11-20 16:52:05', '{\"x\": \"9428\", \"y\": \"3956\"}', 'e79bdab7-322b-04b6-4181-857e34c2cd72');
INSERT INTO `microchip_pin_log` VALUES ('6d127148-131a-70ae-ff78-d5206cbad958', '0.97', '48', '0.90', 2, 'pin', 1, 'pin', '2013-06-24 13:07:26', '{\"x\": \"2451\", \"y\": \"4915\"}', '0d868ab7-78a7-e856-9ef0-c76da5bf17d2');
INSERT INTO `microchip_pin_log` VALUES ('6d1b6d8d-21ab-33f7-1468-4e55a7b70a02', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2014-06-12 04:54:57', '{\"x\": \"1029\", \"y\": \"4578\"}', '5760aa3e-2d09-a52f-14e7-fd80f2630efa');
INSERT INTO `microchip_pin_log` VALUES ('6d5ebf06-a42d-9b93-6944-4cfb65e6d0ef', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2017-10-24 07:18:11', '{\"x\": \"3009\", \"y\": \"0281\"}', '94da1c8a-b41a-18a1-f11f-16bd2224e157');
INSERT INTO `microchip_pin_log` VALUES ('6d671c39-40f3-fc74-b258-92318416e364', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2012-10-20 14:07:51', '{\"x\": \"2099\", \"y\": \"2826\"}', '9e5ca11e-f187-91ed-0ad9-bf77e223157a');
INSERT INTO `microchip_pin_log` VALUES ('6d9c9664-871a-f88d-b8fa-5ca6ce946890', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2017-03-02 21:44:05', '{\"x\": \"9629\", \"y\": \"5502\"}', '6565932e-3e00-c58f-e686-3c231055b89a');
INSERT INTO `microchip_pin_log` VALUES ('6df7a310-1dfe-21bd-4a9a-541410349f80', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2010-09-13 00:20:40', '{\"x\": \"1813\", \"y\": \"5676\"}', 'f4cfac09-c197-0048-3c15-e1f243908b62');
INSERT INTO `microchip_pin_log` VALUES ('6e3c3365-afdc-c1e3-9c36-ff54d0bd6534', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2008-08-14 13:11:36', '{\"x\": \"1827\", \"y\": \"5540\"}', 'c13a6785-f4ce-6164-3013-31f6f95dd921');
INSERT INTO `microchip_pin_log` VALUES ('6e5bf655-110a-8b3d-d36e-8d709d0e51cc', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2010-05-21 07:58:40', '{\"x\": \"7652\", \"y\": \"2873\"}', '3ac32d0c-4fa3-4276-6258-ba39c6e13c4a');
INSERT INTO `microchip_pin_log` VALUES ('6ec7922e-5dc3-9d7e-128e-37d381fe5902', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2012-07-14 17:50:28', '{\"x\": \"8745\", \"y\": \"5286\"}', '631cb430-00cf-05bc-2052-2121cbbacfe5');
INSERT INTO `microchip_pin_log` VALUES ('6efacb9f-ac3c-74f8-b1ec-6368c1bc8221', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2004-05-26 01:38:04', '{\"x\": \"4859\", \"y\": \"6913\"}', 'edad3c50-c605-5016-83c1-839647408787');
INSERT INTO `microchip_pin_log` VALUES ('6f6ec874-01ae-84bf-f3c4-f62489659d66', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2013-12-27 12:31:14', '{\"x\": \"0168\", \"y\": \"8831\"}', 'd42ed663-78fa-6ffc-82ff-8f4ad0a2f775');
INSERT INTO `microchip_pin_log` VALUES ('6fdcd651-27a0-7e8f-b39e-9091bb207b12', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2016-06-28 04:32:16', '{\"x\": \"2033\", \"y\": \"5524\"}', '8aefe583-380f-22cc-601c-10b9e4fb09f6');
INSERT INTO `microchip_pin_log` VALUES ('6fde1995-9c92-3022-5512-13425458a7dc', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2010-07-09 09:06:09', '{\"x\": \"0369\", \"y\": \"6728\"}', 'efaaa20e-2a7b-16f6-b99d-398985c71467');
INSERT INTO `microchip_pin_log` VALUES ('7081dcd6-c027-f65b-8c0f-ee79ac2e11b6', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2011-09-25 14:23:41', '{\"x\": \"2260\", \"y\": \"6336\"}', '0372f546-9712-cf45-4156-0ecd7278aa29');
INSERT INTO `microchip_pin_log` VALUES ('711b2fd4-0555-31e9-9195-e990dfa64d14', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2022-06-14 20:08:16', '{\"x\": \"6148\", \"y\": \"1651\"}', '54d6db16-23ad-7910-4926-e1845df958a8');
INSERT INTO `microchip_pin_log` VALUES ('71232e3a-7232-1a9f-aa0e-3f2caac56d5c', '0.97', '48', '0.95', 1, 'notpin', 1, 'notpin', '2013-04-20 16:57:44', '{\"x\": \"1636\", \"y\": \"8597\"}', '753bdab0-6326-f7f8-6994-9d7b7a6b3db0');
INSERT INTO `microchip_pin_log` VALUES ('714fba22-40b0-3819-4a16-b2bbc9017d41', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2001-04-21 06:17:02', '{\"x\": \"9006\", \"y\": \"6145\"}', '5f54c3ab-d438-de0e-5ff7-6edd3e355ac4');
INSERT INTO `microchip_pin_log` VALUES ('7172f343-5d82-6f1a-5364-49ae17b7eb38', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2020-04-29 20:05:21', '{\"x\": \"0027\", \"y\": \"4244\"}', '1c5f8cf1-8d5a-4d0f-a393-f5fbc53d3b0c');
INSERT INTO `microchip_pin_log` VALUES ('71e75d48-60ad-9c3f-5ba8-86bf09926c8e', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2018-09-14 22:46:43', '{\"x\": \"7911\", \"y\": \"0042\"}', '754f0562-5725-bb2b-b7bb-e05e2e947aef');
INSERT INTO `microchip_pin_log` VALUES ('727c84be-0bfe-f0a5-62a4-24548bc582f2', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2005-02-18 22:52:57', '{\"x\": \"0905\", \"y\": \"3372\"}', 'c9a89b55-9ccc-63dd-7acd-67c89eeed49a');
INSERT INTO `microchip_pin_log` VALUES ('72b55841-7def-c8b4-196e-66f166dce4f2', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2003-05-01 07:52:51', '{\"x\": \"0954\", \"y\": \"2668\"}', 'e256f913-121c-9cc7-7a4c-c1ce584e53a2');
INSERT INTO `microchip_pin_log` VALUES ('72ffedf1-ecba-0779-a376-5cdf26498f6b', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2015-06-16 16:22:15', '{\"x\": \"3905\", \"y\": \"7500\"}', 'b819df67-29ee-4faf-950a-0fc398b0f1f4');
INSERT INTO `microchip_pin_log` VALUES ('73bb164e-1694-42d4-7319-edecc9324e79', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2020-05-26 05:40:54', '{\"x\": \"5981\", \"y\": \"5145\"}', 'ab7e31fb-cc71-4df0-008f-26d019bb6f7e');
INSERT INTO `microchip_pin_log` VALUES ('73bd6a4d-f3ef-7d96-0ede-55ff302adfa1', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2022-09-12 19:34:45', '{\"x\": \"6858\", \"y\": \"7125\"}', '9f07379c-40d0-3194-73b7-60abe307da05');
INSERT INTO `microchip_pin_log` VALUES ('73c7d54b-48c3-bd64-42a3-360396aa8f36', '0.97', '48', '0.90', 2, 'pin', 1, 'pin', '2009-09-22 21:06:00', '{\"x\": \"9011\", \"y\": \"1704\"}', '33de3554-61ae-86db-ce1e-0b7b4d15ba66');
INSERT INTO `microchip_pin_log` VALUES ('74e2a8f1-175c-cacc-4a13-8ffca13a375d', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2016-04-02 00:51:36', '{\"x\": \"1348\", \"y\": \"6263\"}', 'c406cb9d-47b3-924e-1996-0fd2e4473ada');
INSERT INTO `microchip_pin_log` VALUES ('74fc45da-6788-84bd-8354-9d86664654ba', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2021-01-23 15:56:37', '{\"x\": \"6151\", \"y\": \"3482\"}', 'cfcfd771-37b1-f364-2c9b-7e4418cbd5bd');
INSERT INTO `microchip_pin_log` VALUES ('7523075e-2ed6-d167-a9ea-230dd0420867', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2013-02-17 08:54:24', '{\"x\": \"4944\", \"y\": \"0676\"}', '31f392a2-d36c-04d0-5583-a79bdab272c8');
INSERT INTO `microchip_pin_log` VALUES ('753c792d-b7d0-ffba-5760-ba0757812541', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2014-01-14 23:50:25', '{\"x\": \"9026\", \"y\": \"9840\"}', '90330f20-288f-13fa-c920-1df3c0f2f357');
INSERT INTO `microchip_pin_log` VALUES ('75bed004-7a9a-d4be-a0c9-76109dcb62a4', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2019-08-05 07:14:43', '{\"x\": \"5423\", \"y\": \"2336\"}', 'b745edca-d233-754a-c752-ed8da609076c');
INSERT INTO `microchip_pin_log` VALUES ('76077cd6-739d-e23c-70bb-2c4b8fb1d5e6', '0.35', '48', '0.93', 1, 'pin', 1, 'pin', '2011-04-20 22:47:10', '{\"x\": \"6803\", \"y\": \"1466\"}', '7f751432-26a1-12db-a739-f7cb90f54d02');
INSERT INTO `microchip_pin_log` VALUES ('76d09a13-d2b3-da32-7a03-7a83df7e2346', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2010-01-25 00:18:16', '{\"x\": \"6770\", \"y\": \"1201\"}', 'b65e83c6-85ed-f0ea-11bc-26cfd431e50b');
INSERT INTO `microchip_pin_log` VALUES ('76e2ecd1-67f1-9650-900c-50dd8addd020', '0.56', '48', '0.97', 1, 'pin', 1, 'pin', '2002-01-30 04:12:38', '{\"x\": \"0997\", \"y\": \"6119\"}', 'fd53f775-2296-98ba-b9dd-d9b929116cc5');
INSERT INTO `microchip_pin_log` VALUES ('770f57a6-1f9d-e74a-6c70-1972909d977c', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2000-05-28 16:14:23', '{\"x\": \"4563\", \"y\": \"7013\"}', '4b87b71d-7608-537f-bdb4-28942ff9b8bb');
INSERT INTO `microchip_pin_log` VALUES ('773e7eb2-20cf-2a11-ef1b-4eaf9575f3b9', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2009-09-14 20:58:19', '{\"x\": \"4338\", \"y\": \"6048\"}', '5192870c-c621-79a1-65ee-a28faad2038b');
INSERT INTO `microchip_pin_log` VALUES ('77503ad8-811d-d39a-bd15-9a0d8c934f85', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2020-06-26 17:16:28', '{\"x\": \"0455\", \"y\": \"8281\"}', '5dc51344-0e41-3395-ebfa-62405941c533');
INSERT INTO `microchip_pin_log` VALUES ('777ae7b6-b0bb-26f2-14ea-1d8f92e579ed', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2002-03-26 21:33:27', '{\"x\": \"1575\", \"y\": \"5303\"}', '0e026f1f-73bd-0507-63c3-d9818b43d01f');
INSERT INTO `microchip_pin_log` VALUES ('77d0c029-b76c-34e7-2ecd-55bebea7f8a0', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2014-10-01 07:27:21', '{\"x\": \"1443\", \"y\": \"3882\"}', '0f06ab9e-d36d-fab0-8dd0-2521375a04aa');
INSERT INTO `microchip_pin_log` VALUES ('78d13733-257a-81d4-0b74-56ae6354d806', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2014-06-26 14:15:03', '{\"x\": \"5274\", \"y\": \"3757\"}', 'f7ff1dd2-12e9-6c0f-c68a-d1e796031850');
INSERT INTO `microchip_pin_log` VALUES ('79af95a4-e767-9183-4ed1-f8fa688be7fc', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2020-06-13 06:01:39', '{\"x\": \"4497\", \"y\": \"4214\"}', '48ea0941-378c-b900-713c-109d623c5baa');
INSERT INTO `microchip_pin_log` VALUES ('79cedda2-02b9-0cc2-b742-ff1ca909a08f', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2019-09-23 01:36:03', '{\"x\": \"6878\", \"y\": \"6357\"}', '34ad57cb-d49e-7cee-e444-35993538e9b8');
INSERT INTO `microchip_pin_log` VALUES ('7a05f930-3204-a44b-91bb-c8fb726c1d00', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2002-06-14 22:33:06', '{\"x\": \"3161\", \"y\": \"3117\"}', 'c406cb9d-47b3-924e-1996-0fd2e4473ada');
INSERT INTO `microchip_pin_log` VALUES ('7a91c828-18db-fec5-a4cb-0b28a0b9d0bf', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2002-07-24 12:09:17', '{\"x\": \"2134\", \"y\": \"1034\"}', '63dcc516-9ff9-0075-cd5d-01c117749d0c');
INSERT INTO `microchip_pin_log` VALUES ('7ac00cd2-c99e-529a-ed4a-f70facfd6026', '0.79', '48', '0.97', 1, 'pin', 1, 'notpin', '2002-01-21 15:44:17', '{\"x\": \"5986\", \"y\": \"2425\"}', 'b1c22139-84a7-4f8b-626f-a7d9f4b0df8e');
INSERT INTO `microchip_pin_log` VALUES ('7b2b8f47-7a13-ffab-060a-14d053b5f98d', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2007-04-11 06:38:27', '{\"x\": \"9440\", \"y\": \"5277\"}', 'e30a128b-0458-e2e5-3a8c-80e5281f6464');
INSERT INTO `microchip_pin_log` VALUES ('7c1f8b34-5f9c-f334-999c-dbac2d435dfc', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2022-07-14 23:21:31', '{\"x\": \"3258\", \"y\": \"3068\"}', 'a72ee54b-b18b-a464-1ace-aa836f8b4a3e');
INSERT INTO `microchip_pin_log` VALUES ('7c531375-6af9-0b18-7e81-9bcd220b3e36', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2001-09-13 01:53:50', '{\"x\": \"7977\", \"y\": \"5045\"}', 'bab713b3-f8f3-fa05-d39f-742da9d516ab');
INSERT INTO `microchip_pin_log` VALUES ('7c7616e3-bea8-45ae-65c8-4c783afde7a6', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2020-12-22 06:02:10', '{\"x\": \"3046\", \"y\": \"7619\"}', '72481af2-e843-f040-5bdd-716186a0bb8c');
INSERT INTO `microchip_pin_log` VALUES ('7c87407a-9a6f-9332-0094-dc9f6f9124a4', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2004-04-20 09:27:08', '{\"x\": \"5997\", \"y\": \"1665\"}', '8e4f7e09-456f-303d-7aa0-e4e2f3c98608');
INSERT INTO `microchip_pin_log` VALUES ('7c89d75a-5279-5a3b-22f1-325fc6d78e72', '0.97', '48', '0.96', 2, 'pin', 1, 'notpin', '2005-01-15 03:47:49', '{\"x\": \"0996\", \"y\": \"2031\"}', 'dbba4b27-99ea-28a8-3ca4-0c0fba502d2f');
INSERT INTO `microchip_pin_log` VALUES ('7ca9e5a4-4618-5290-5369-1cf72c78ab33', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2009-01-25 07:48:31', '{\"x\": \"8851\", \"y\": \"2735\"}', '25010fe8-4e0e-06f2-789d-b32cf65ef24e');
INSERT INTO `microchip_pin_log` VALUES ('7cb32ce7-052f-a1d1-2153-2a4639b647f7', '0.97', '48', '0.90', 2, 'pin', 1, 'pin', '2008-07-09 04:44:11', '{\"x\": \"0734\", \"y\": \"0699\"}', '3bbd938e-a49b-36c5-0618-db948cf3cae2');
INSERT INTO `microchip_pin_log` VALUES ('7cb6c7c5-f30d-9dc8-ecd5-234c7800c873', '0.93', '48', '0.96', 2, 'notpin', 1, 'notpin', '2008-04-14 11:54:21', '{\"x\": \"2995\", \"y\": \"1206\"}', '54ac20e7-f4a3-2996-a53a-2f4f389e8058');
INSERT INTO `microchip_pin_log` VALUES ('7ceb2b51-2721-fb1d-ceb1-4397b7ad7218', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2000-09-07 23:47:48', '{\"x\": \"4439\", \"y\": \"4508\"}', '31090a4b-0631-f7b9-1305-ad4d9c3962b7');
INSERT INTO `microchip_pin_log` VALUES ('7d0cfaea-f72f-40ce-b15f-722e3a664ef9', '0.97', '48', '0.96', 2, 'pin', 1, 'notpin', '2005-05-04 12:45:26', '{\"x\": \"7346\", \"y\": \"1979\"}', '630101c1-16b5-0792-dd69-8236ae983b0a');
INSERT INTO `microchip_pin_log` VALUES ('7d3eb364-d1a6-cd94-0b11-361924058562', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2000-04-21 21:37:53', '{\"x\": \"2002\", \"y\": \"8584\"}', 'f014677a-6fc1-7424-7a00-c6a9681720d6');
INSERT INTO `microchip_pin_log` VALUES ('7df69e0b-e762-6622-40ea-262591bc003d', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2020-01-02 18:33:20', '{\"x\": \"8658\", \"y\": \"2500\"}', '4833609b-cfb0-807b-6d66-f471ac4cff05');
INSERT INTO `microchip_pin_log` VALUES ('7e403303-507b-8d1a-a339-ce107051838c', '0.97', '48', '0.95', 1, 'notpin', 1, 'pin', '2012-07-26 20:56:21', '{\"x\": \"7467\", \"y\": \"7290\"}', '05af7354-a004-9ba7-be62-7df1d525b07a');
INSERT INTO `microchip_pin_log` VALUES ('7ed859b3-d1f0-7eee-ed08-e73e3c18c17a', '0.97', '48', '0.98', 1, 'notpin', 1, 'pin', '2014-01-15 19:38:16', '{\"x\": \"1449\", \"y\": \"8833\"}', 'f014677a-6fc1-7424-7a00-c6a9681720d6');
INSERT INTO `microchip_pin_log` VALUES ('7f8a87f6-b93a-860e-421d-455c8b938985', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2019-01-23 18:11:22', '{\"x\": \"6238\", \"y\": \"4535\"}', '1a480b99-9854-e1f0-4429-ebc312b0e9bb');
INSERT INTO `microchip_pin_log` VALUES ('7fe41118-2e34-25ac-5b24-63c9e70a8043', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2016-08-17 14:13:50', '{\"x\": \"9304\", \"y\": \"8963\"}', '2f0f6668-607a-99fd-b24e-2a582297a49a');
INSERT INTO `microchip_pin_log` VALUES ('7fedc3ce-8005-7aae-b643-b94ac285ec82', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2015-12-13 04:36:56', '{\"x\": \"4241\", \"y\": \"4271\"}', 'bf06196c-d6f2-b438-5c8b-388ddb50366c');
INSERT INTO `microchip_pin_log` VALUES ('7ff5799d-a91a-8ba2-4a08-9782271a2f3f', '0.72', '48', '0.91', 2, 'pin', 1, 'pin', '2015-02-20 10:12:10', '{\"x\": \"0563\", \"y\": \"0366\"}', 'f8d954ed-7d6f-38ce-27da-876a65b09580');
INSERT INTO `microchip_pin_log` VALUES ('80487bec-1ba5-29f0-2a6b-c0d53c6eb329', '0.50', '48', '0.99', 2, 'notpin', 1, 'pin', '2022-01-04 22:04:03', '{\"x\": \"6301\", \"y\": \"2577\"}', '1a113334-904d-c484-7469-f193c7d7ae8a');
INSERT INTO `microchip_pin_log` VALUES ('805d46fb-35f8-9419-152f-62c1829d6ac4', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2017-03-10 19:37:56', '{\"x\": \"7567\", \"y\": \"7869\"}', 'cc28697e-f698-b29a-381e-00a55df68f4f');
INSERT INTO `microchip_pin_log` VALUES ('809e5c1c-381a-00e1-175f-fdec880d15b1', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2012-05-03 12:51:41', '{\"x\": \"8418\", \"y\": \"4633\"}', '94ebeb65-7d34-4097-e6d9-162dc3fc1e32');
INSERT INTO `microchip_pin_log` VALUES ('80a9c453-88f0-ffd6-20d0-2a7e68444f0e', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2019-07-27 15:26:35', '{\"x\": \"8668\", \"y\": \"4729\"}', 'be8c330c-9beb-57dd-9278-5f46c45cb82b');
INSERT INTO `microchip_pin_log` VALUES ('80ab87b9-9f5f-ee03-05f6-6da8df19e8ec', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2010-07-12 13:47:48', '{\"x\": \"7925\", \"y\": \"7139\"}', '2604fe89-eaf2-2cc7-d02e-503937306f18');
INSERT INTO `microchip_pin_log` VALUES ('80dde640-0536-a0c5-bbaf-a13ce1e60899', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2012-04-07 19:30:08', '{\"x\": \"7562\", \"y\": \"1639\"}', '63ff88d9-b00b-2821-02e0-8f672f0b00b4');
INSERT INTO `microchip_pin_log` VALUES ('812d1081-164d-b3d9-61eb-ce8cfe5e7a83', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2021-12-06 20:29:30', '{\"x\": \"5502\", \"y\": \"7558\"}', '51d65137-de54-8c03-bbd2-4a1ec6ad05be');
INSERT INTO `microchip_pin_log` VALUES ('8182a6e6-1be6-813c-3b66-d02e0ce507dc', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2013-10-01 11:04:45', '{\"x\": \"5416\", \"y\": \"8356\"}', 'edad3c50-c605-5016-83c1-839647408787');
INSERT INTO `microchip_pin_log` VALUES ('81b65e9f-e84d-e111-5682-9264ef5d7d1a', '0.97', '48', '0.95', 1, 'notpin', 1, 'pin', '2004-12-23 02:04:59', '{\"x\": \"7449\", \"y\": \"5296\"}', 'a4136c76-28a1-396a-1f73-a66e1c795c68');
INSERT INTO `microchip_pin_log` VALUES ('821e15a1-f5b1-5291-70e9-d8a6cca76206', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2007-01-23 05:45:37', '{\"x\": \"7271\", \"y\": \"5220\"}', 'edc5c31d-4804-6068-3d21-44b5291d3581');
INSERT INTO `microchip_pin_log` VALUES ('829e95f0-f109-f2bf-c9a4-af075a1c0fcf', '0.00', '48', '0.93', 1, 'pin', 1, 'notpin', '2001-04-26 04:00:49', '{\"x\": \"8483\", \"y\": \"1359\"}', '4b9e1acd-a399-ae31-e592-eb35f8c0211c');
INSERT INTO `microchip_pin_log` VALUES ('82cb2c81-3378-34e9-454b-e2e639fe0b6c', '0.66', '48', '0.99', 1, 'notpin', 1, 'notpin', '2021-03-12 13:42:37', '{\"x\": \"6142\", \"y\": \"8819\"}', '7096d424-9946-f523-6156-bc03a7ccfa28');
INSERT INTO `microchip_pin_log` VALUES ('82ddc430-9180-d46f-fe99-ad36c85810be', '0.97', '11', '0.96', 2, 'pin', 1, 'notpin', '2013-12-06 22:58:36', '{\"x\": \"0315\", \"y\": \"4418\"}', 'a5a11f1c-9643-8ded-678e-5cc061e844d3');
INSERT INTO `microchip_pin_log` VALUES ('830d094b-b434-282b-ec99-b88905706e13', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2002-03-03 19:35:59', '{\"x\": \"9311\", \"y\": \"8567\"}', '754f0562-5725-bb2b-b7bb-e05e2e947aef');
INSERT INTO `microchip_pin_log` VALUES ('833c99db-3827-af2c-6ad1-63e5b1a8983e', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2015-01-02 05:18:38', '{\"x\": \"7868\", \"y\": \"6052\"}', '2e9ce4ca-4ac2-ca94-bfe7-2fb581dba172');
INSERT INTO `microchip_pin_log` VALUES ('83920be8-7100-55b9-f663-9a52b6b816cf', '0.97', '48', '0.90', 2, 'notpin', 1, 'notpin', '2021-01-21 06:51:42', '{\"x\": \"6647\", \"y\": \"0046\"}', '13ea0878-e7f5-8daf-671e-75a7b38c8039');
INSERT INTO `microchip_pin_log` VALUES ('83d60ea1-a1e9-92da-5dfa-626744d161d8', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2009-07-13 17:52:53', '{\"x\": \"5275\", \"y\": \"2365\"}', 'f014677a-6fc1-7424-7a00-c6a9681720d6');
INSERT INTO `microchip_pin_log` VALUES ('84190835-8069-480c-b3f7-a4ae6f60a2ec', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2003-08-04 00:46:35', '{\"x\": \"5406\", \"y\": \"4461\"}', 'ebc83891-ff14-280b-bb4e-43ea0e020cdd');
INSERT INTO `microchip_pin_log` VALUES ('843ae32f-77f3-2409-d94e-67049b465ef8', '0.10', '48', '0.96', 1, 'pin', 1, 'pin', '2011-11-24 11:37:15', '{\"x\": \"3468\", \"y\": \"7063\"}', '6565932e-3e00-c58f-e686-3c231055b89a');
INSERT INTO `microchip_pin_log` VALUES ('845f4953-6279-8c05-ce6a-be7782ce18fb', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2001-12-28 14:49:08', '{\"x\": \"5931\", \"y\": \"3487\"}', 'a873c899-2bdf-c091-04f2-bf894b0b8b5d');
INSERT INTO `microchip_pin_log` VALUES ('84900ff4-8afe-03cc-e0c8-96cbb42d22f4', '0.97', '48', '0.96', 2, 'pin', 1, 'notpin', '2022-08-28 14:47:02', '{\"x\": \"9360\", \"y\": \"4207\"}', '113ea8d8-776c-f539-24cd-b86bc5433419');
INSERT INTO `microchip_pin_log` VALUES ('84a1060a-3fa1-bea5-0410-e9b586143b63', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2004-01-03 16:43:00', '{\"x\": \"0822\", \"y\": \"4646\"}', 'f615b6ef-dcfe-b8d5-284e-484d6f11c03e');
INSERT INTO `microchip_pin_log` VALUES ('84c27d96-347f-febb-c85e-2a2442c07ef3', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2001-10-06 19:00:41', '{\"x\": \"2379\", \"y\": \"2696\"}', '393f0815-87cf-1a02-eb94-fcdec3cdee42');
INSERT INTO `microchip_pin_log` VALUES ('84e75acd-67d6-5775-9a67-15936979d5d9', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2005-11-20 03:00:26', '{\"x\": \"3853\", \"y\": \"5575\"}', '93b5976d-9989-ee0b-9f9e-2b626d8d0aa5');
INSERT INTO `microchip_pin_log` VALUES ('8516e412-0344-aab0-cd1a-50e4970c0890', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2009-12-14 03:09:51', '{\"x\": \"0646\", \"y\": \"8735\"}', '03a429da-09a9-d9cd-b79d-91005a78743d');
INSERT INTO `microchip_pin_log` VALUES ('8541695f-f6b5-eadd-3ec3-b0f0de42f24f', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2002-05-26 11:52:50', '{\"x\": \"2345\", \"y\": \"7645\"}', 'f10e6777-129c-2dbf-0c47-2ab030aeee54');
INSERT INTO `microchip_pin_log` VALUES ('8558172c-9467-b25b-4294-1e74b9aba688', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2012-12-16 06:39:24', '{\"x\": \"9017\", \"y\": \"2387\"}', '4b87b71d-7608-537f-bdb4-28942ff9b8bb');
INSERT INTO `microchip_pin_log` VALUES ('86209025-ddbb-13d1-5fb7-47b80da05c1d', '0.70', '48', '0.92', 1, 'notpin', 1, 'notpin', '2018-11-09 02:23:28', '{\"x\": \"0359\", \"y\": \"2678\"}', '54486484-7aed-321d-afa4-4d93aeaef3b0');
INSERT INTO `microchip_pin_log` VALUES ('86a2182b-918b-ac40-6d03-48227a0b8dbf', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2021-09-03 08:20:51', '{\"x\": \"8124\", \"y\": \"0922\"}', '23dc7717-d5db-0684-9dab-b6c5c396bee6');
INSERT INTO `microchip_pin_log` VALUES ('8734afa1-2638-f731-ec69-68da525bb667', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2002-06-12 18:46:14', '{\"x\": \"9783\", \"y\": \"6897\"}', 'c08cd669-a759-ee2d-461f-0412346eeb6e');
INSERT INTO `microchip_pin_log` VALUES ('877162c6-06dc-f4f5-b4e7-34354f4a6dd7', '0.16', '48', '0.94', 1, 'pin', 1, 'notpin', '2016-05-16 11:15:20', '{\"x\": \"1979\", \"y\": \"3730\"}', '788a518a-d626-37c5-5a24-378c7138ad6a');
INSERT INTO `microchip_pin_log` VALUES ('8775b48b-ee42-4fb1-6bb5-1077b080e4a7', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2014-07-14 11:03:29', '{\"x\": \"9825\", \"y\": \"2107\"}', 'ab265f6a-0a1b-2dc6-6dc0-bb00bdb0f92e');
INSERT INTO `microchip_pin_log` VALUES ('87822487-b5e0-8634-5f66-9ddd2b5d78b6', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2016-01-19 11:56:07', '{\"x\": \"9810\", \"y\": \"5769\"}', '7c30f3a2-5471-7e38-6ac5-ecb60d556ded');
INSERT INTO `microchip_pin_log` VALUES ('879d0d7c-e120-fbf2-5231-3be85296c10b', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2011-11-13 02:20:11', '{\"x\": \"2249\", \"y\": \"5267\"}', '48ea0941-378c-b900-713c-109d623c5baa');
INSERT INTO `microchip_pin_log` VALUES ('87a0db1d-8930-7949-f4d7-cc1904140776', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2019-05-04 07:29:40', '{\"x\": \"7817\", \"y\": \"7897\"}', '55dade37-0353-9704-38e2-427918ec11f4');
INSERT INTO `microchip_pin_log` VALUES ('87b38cbd-1e11-9991-fa5b-4496b87246d5', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2008-09-30 20:53:46', '{\"x\": \"8236\", \"y\": \"9339\"}', '03a429da-09a9-d9cd-b79d-91005a78743d');
INSERT INTO `microchip_pin_log` VALUES ('88236abb-46e9-233b-881a-744a0e413486', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2021-11-13 10:14:27', '{\"x\": \"2117\", \"y\": \"2048\"}', '51c589b1-b30e-6b41-6ce2-6f6255afe9ed');
INSERT INTO `microchip_pin_log` VALUES ('88747235-70e5-5499-fbb0-5a24f2a474fe', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2001-07-12 20:00:46', '{\"x\": \"8608\", \"y\": \"5575\"}', 'deef736d-7d6e-dfc8-73aa-50a6b476143f');
INSERT INTO `microchip_pin_log` VALUES ('888886dc-7d33-b423-3ba6-b1a9ae582dac', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2008-05-14 21:29:42', '{\"x\": \"4654\", \"y\": \"5937\"}', '6dd7c484-bae2-f2c8-3607-3bfa94cbd916');
INSERT INTO `microchip_pin_log` VALUES ('88cc3eca-c4e1-d269-62a8-362fe9d8a2dc', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2017-10-13 00:11:15', '{\"x\": \"6599\", \"y\": \"1313\"}', 'be8c330c-9beb-57dd-9278-5f46c45cb82b');
INSERT INTO `microchip_pin_log` VALUES ('88cd0a68-37bf-0456-fbdd-f976f0a99974', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2006-03-16 11:34:20', '{\"x\": \"8313\", \"y\": \"8229\"}', 'c9193ea4-29de-cfcd-8fb5-a93da7aaf565');
INSERT INTO `microchip_pin_log` VALUES ('8984db84-508b-d6ce-fcab-b5d440e99426', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2001-07-26 02:26:00', '{\"x\": \"0363\", \"y\": \"4374\"}', '9b7712de-0707-d0c6-ae65-48e0e5c42236');
INSERT INTO `microchip_pin_log` VALUES ('89963118-40cb-fa99-09ad-a67744f01677', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2004-07-19 19:18:21', '{\"x\": \"0930\", \"y\": \"0836\"}', 'b836acc4-1279-20f0-99bc-1fe1efb23e68');
INSERT INTO `microchip_pin_log` VALUES ('89f8fcc0-0f4f-0ea5-b89d-91a026aa5058', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2007-09-17 05:16:17', '{\"x\": \"9731\", \"y\": \"4842\"}', '94ebeb65-7d34-4097-e6d9-162dc3fc1e32');
INSERT INTO `microchip_pin_log` VALUES ('8aea5caa-337e-e205-3a1d-cdd9c401f51d', '0.27', '48', '0.91', 2, 'notpin', 1, 'notpin', '2007-09-02 11:30:16', '{\"x\": \"1604\", \"y\": \"5289\"}', '02336556-b86b-71b9-3dae-7fe567c1492f');
INSERT INTO `microchip_pin_log` VALUES ('8b0661c8-4131-bc8a-4f29-b1ca930d03b1', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2006-03-11 14:04:10', '{\"x\": \"0105\", \"y\": \"0740\"}', 'c7379393-760f-a102-a8d8-d491de4568f5');
INSERT INTO `microchip_pin_log` VALUES ('8b702261-5a3a-836d-1944-2efa122808f9', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2022-09-13 21:23:57', '{\"x\": \"2585\", \"y\": \"2661\"}', 'e9deb631-61d4-bd34-bff5-e87546c9d044');
INSERT INTO `microchip_pin_log` VALUES ('8ba2816f-c522-7dda-2916-62c87f80ea25', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2013-06-01 06:09:18', '{\"x\": \"0032\", \"y\": \"0663\"}', '5dd736f7-64aa-3348-8c46-86a18d09d38a');
INSERT INTO `microchip_pin_log` VALUES ('8c0e51d4-994a-3ebf-c31d-797d65639b5d', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2020-06-06 06:19:14', '{\"x\": \"6388\", \"y\": \"2852\"}', '9b5ae60a-1dd4-5845-1415-3dc56cb0cf3a');
INSERT INTO `microchip_pin_log` VALUES ('8c808950-5508-15cd-3e3e-af2a998e5a8c', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2004-11-28 23:31:31', '{\"x\": \"2515\", \"y\": \"6147\"}', 'acb64a9e-bd26-eb16-1482-2c00b9e4137b');
INSERT INTO `microchip_pin_log` VALUES ('8ce74a38-d3f9-6a9c-73df-df672a47eac2', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2009-01-02 20:16:49', '{\"x\": \"0822\", \"y\": \"9774\"}', '4465ee39-6d40-650d-a7ba-e41a810e594e');
INSERT INTO `microchip_pin_log` VALUES ('8d3900f2-41a2-8036-58f3-d4c22036e4bc', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2005-10-02 12:04:33', '{\"x\": \"5606\", \"y\": \"0627\"}', '19238e1d-9e1d-ffc2-2c31-950e3a3302ea');
INSERT INTO `microchip_pin_log` VALUES ('8dc37dfc-cdbb-6512-f1f6-b7eba4615264', '0.52', '13', '0.94', 2, 'notpin', 1, 'notpin', '2005-08-24 03:32:31', '{\"x\": \"5029\", \"y\": \"1475\"}', '6c7b2c5e-d48c-d149-e855-ba8083d69c18');
INSERT INTO `microchip_pin_log` VALUES ('8deffe1e-7f44-32f6-1460-204847106a70', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2019-07-31 15:16:34', '{\"x\": \"8693\", \"y\": \"5474\"}', '8d51182d-82bf-3c5c-d57d-44bd6da1a89c');
INSERT INTO `microchip_pin_log` VALUES ('8e028087-b5f1-3978-3b4d-21a38cbe6ef4', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2022-02-12 04:47:25', '{\"x\": \"8139\", \"y\": \"0079\"}', 'bd9c4c25-d1e6-18e0-94c8-dfe45529a502');
INSERT INTO `microchip_pin_log` VALUES ('8e294578-f887-7526-eebc-8f01b7633118', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2005-06-28 12:59:16', '{\"x\": \"2597\", \"y\": \"8138\"}', '15e25614-bc03-95ed-3d5e-c68b49f83d4b');
INSERT INTO `microchip_pin_log` VALUES ('8e55cd2f-12c1-c4c0-9d81-14dcdbf4ac98', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2012-07-16 18:37:51', '{\"x\": \"2261\", \"y\": \"0614\"}', '21717544-9b58-ee1a-403f-e673f2b8d602');
INSERT INTO `microchip_pin_log` VALUES ('8e5e5e78-441c-16c1-82c7-b8ddac01a639', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2011-02-19 23:21:24', '{\"x\": \"1775\", \"y\": \"9510\"}', '7cfe7a9b-6aae-d4a5-8398-044a5f149e5e');
INSERT INTO `microchip_pin_log` VALUES ('8e6c431c-14f4-f57e-de1b-e9a0aeb666e9', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2010-03-11 23:22:02', '{\"x\": \"4946\", \"y\": \"2179\"}', '9bb34087-4782-b896-5217-7f50b5e8f003');
INSERT INTO `microchip_pin_log` VALUES ('8e93b9e3-f43f-5a91-ac97-1e81f80b0f37', '0.97', '48', '0.96', 2, 'pin', 1, 'notpin', '2001-02-17 20:55:48', '{\"x\": \"7150\", \"y\": \"9896\"}', 'de30a9e0-47fc-cf74-04c4-fdb770963d10');
INSERT INTO `microchip_pin_log` VALUES ('8ea72696-caec-f1f2-8c92-617cf33d41ff', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2003-03-12 10:13:45', '{\"x\": \"9514\", \"y\": \"9304\"}', '04838318-bcfa-1d99-55eb-1af0a5f2b444');
INSERT INTO `microchip_pin_log` VALUES ('8f0bb6a1-670e-9a1b-6a20-3205e3b72884', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2007-09-19 18:51:32', '{\"x\": \"0227\", \"y\": \"3856\"}', '28fa47cf-df5b-a145-efce-381734432875');
INSERT INTO `microchip_pin_log` VALUES ('8f2e98e5-1962-dcc0-25b9-269942cd3826', '0.65', '48', '0.92', 2, 'pin', 1, 'pin', '2019-02-11 16:55:25', '{\"x\": \"0691\", \"y\": \"7099\"}', 'f289b9c6-2c0b-8aa0-bdea-9a355c2835b9');
INSERT INTO `microchip_pin_log` VALUES ('8f67d2f4-5d6c-24cb-a46c-2076df059377', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2013-01-08 17:05:02', '{\"x\": \"4191\", \"y\": \"9041\"}', '2e5ee76e-c798-f5e9-bf4b-54bb26653220');
INSERT INTO `microchip_pin_log` VALUES ('8f7f775b-7c2b-7bfd-8a54-4e4595f69321', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2019-08-16 05:36:41', '{\"x\": \"2912\", \"y\": \"2219\"}', 'dc95076f-128c-6818-8425-9120741b1d0c');
INSERT INTO `microchip_pin_log` VALUES ('8faee850-0a99-5687-1934-b49414f9feb5', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2020-11-12 09:50:50', '{\"x\": \"3450\", \"y\": \"8741\"}', '89b4cc22-bed7-6706-37a9-d826de67dfcc');
INSERT INTO `microchip_pin_log` VALUES ('8fc5fd94-477f-c6e7-ca5e-3520bd1b904a', '0.52', '48', '0.92', 2, 'pin', 1, 'notpin', '2011-12-01 20:43:54', '{\"x\": \"5337\", \"y\": \"1167\"}', 'e7545353-5034-7dd8-ae17-8ee58b19454a');
INSERT INTO `microchip_pin_log` VALUES ('90019e82-49b1-073a-2bf4-0a033cee634f', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2014-08-02 23:48:36', '{\"x\": \"4687\", \"y\": \"8820\"}', '952d3e63-83c8-4247-cb91-ce48611ca8cc');
INSERT INTO `microchip_pin_log` VALUES ('902b8acc-87bb-332e-7fa7-acf48bdd4b4e', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2019-10-25 04:40:46', '{\"x\": \"5400\", \"y\": \"7452\"}', '8edb09c7-3485-7491-cd75-b1d9aba0f459');
INSERT INTO `microchip_pin_log` VALUES ('90d54b14-805b-effa-d727-d307eb827c56', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2016-09-22 07:14:33', '{\"x\": \"9893\", \"y\": \"7859\"}', '4b644862-59fa-d6bc-7cbb-247244ef0cbd');
INSERT INTO `microchip_pin_log` VALUES ('9155c6ee-23ff-2d70-9f3b-1e9d368d335f', '0.46', '48', '0.97', 2, 'notpin', 1, 'pin', '2017-03-12 01:54:20', '{\"x\": \"6289\", \"y\": \"2143\"}', '6173af7d-1ff9-6a72-bab0-dd43f2635b35');
INSERT INTO `microchip_pin_log` VALUES ('91bb3729-1e8d-8516-6ea3-480175a0e9fd', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2001-12-06 11:47:44', '{\"x\": \"8975\", \"y\": \"1871\"}', 'e122e6a1-a42c-3cd1-ad53-c40d8270874a');
INSERT INTO `microchip_pin_log` VALUES ('91bef9df-fcfc-e09c-40d0-82230f26d10c', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2016-08-20 22:50:20', '{\"x\": \"6720\", \"y\": \"8069\"}', '41fb4069-7005-b95d-9f6a-22ada27016b8');
INSERT INTO `microchip_pin_log` VALUES ('92113d34-70dd-7f97-e002-0ef6b159c2e2', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2001-07-17 12:46:20', '{\"x\": \"5951\", \"y\": \"8131\"}', '86ae99d6-e274-5a6b-afc0-bb0c19ce183b');
INSERT INTO `microchip_pin_log` VALUES ('9233cd53-803f-0e40-0394-2eea49cc301f', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2017-11-24 16:52:54', '{\"x\": \"4249\", \"y\": \"5529\"}', 'b67eb11c-7ea2-ff9f-fd82-80f866d31b21');
INSERT INTO `microchip_pin_log` VALUES ('925cf5aa-096a-3140-8e4a-a8df34777b30', '0.97', '23', '0.95', 2, 'notpin', 1, 'pin', '2021-03-04 14:15:12', '{\"x\": \"0038\", \"y\": \"2533\"}', 'f084d597-2865-4629-d5ea-850ffc89ec8d');
INSERT INTO `microchip_pin_log` VALUES ('926129f7-8166-34df-b742-9ce465e3dae5', '0.60', '35', '0.98', 1, 'notpin', 1, 'notpin', '2002-06-13 16:05:49', '{\"x\": \"2958\", \"y\": \"8651\"}', 'f186d06f-4dd8-95d5-27a8-cfe8486aff88');
INSERT INTO `microchip_pin_log` VALUES ('92704dd3-64be-daed-19a1-7cfd5d286252', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2016-04-23 08:10:40', '{\"x\": \"4884\", \"y\": \"4001\"}', 'fffcd95a-8d99-e14f-03ce-1083e8f292ba');
INSERT INTO `microchip_pin_log` VALUES ('927f9b44-ba2e-2f94-dbd0-7da9633f60d8', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2010-10-16 02:43:09', '{\"x\": \"7496\", \"y\": \"2065\"}', '41fb4069-7005-b95d-9f6a-22ada27016b8');
INSERT INTO `microchip_pin_log` VALUES ('92867702-7c95-c93f-bea0-5b4bd6152908', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2018-09-28 09:19:26', '{\"x\": \"8360\", \"y\": \"3214\"}', 'cbbe035f-a752-d55c-f482-0c4a3d79d02a');
INSERT INTO `microchip_pin_log` VALUES ('92e14b49-a0aa-cd54-1c85-f3b98cbfc64c', '0.97', '48', '0.95', 1, 'notpin', 1, 'notpin', '2014-08-15 17:41:39', '{\"x\": \"4689\", \"y\": \"3220\"}', 'b95a2d48-8b46-0984-dda3-409060e9ac3f');
INSERT INTO `microchip_pin_log` VALUES ('9347a69d-a2f0-a4cb-8e9e-4360a2869b27', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2014-12-10 17:56:37', '{\"x\": \"3833\", \"y\": \"3283\"}', 'c97e8a2a-02c0-c3d5-c502-3588debc3e22');
INSERT INTO `microchip_pin_log` VALUES ('93e479e3-d5e9-0209-be24-d44573420647', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2022-02-05 21:51:13', '{\"x\": \"6095\", \"y\": \"0117\"}', '8e4f7e09-456f-303d-7aa0-e4e2f3c98608');
INSERT INTO `microchip_pin_log` VALUES ('940b3920-c249-c589-9b0f-8637dafd7c21', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2017-12-18 09:31:58', '{\"x\": \"5550\", \"y\": \"3651\"}', 'fe7ece18-ae66-3a81-3282-1282c572e85a');
INSERT INTO `microchip_pin_log` VALUES ('945cbd4c-7340-5d10-f2dd-db0d58b9c80a', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2006-04-10 14:18:01', '{\"x\": \"0256\", \"y\": \"6359\"}', '94da1c8a-b41a-18a1-f11f-16bd2224e157');
INSERT INTO `microchip_pin_log` VALUES ('94892d84-ac63-5f2b-7eb6-1feacc5c7fce', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2004-05-29 18:56:31', '{\"x\": \"2255\", \"y\": \"3863\"}', 'eb378b86-eba0-01ff-f023-9c9932ccf22e');
INSERT INTO `microchip_pin_log` VALUES ('94e55cba-e9ca-f58a-622a-bab0f455dcb4', '0.01', '48', '0.96', 1, 'pin', 1, 'notpin', '2005-08-31 00:43:20', '{\"x\": \"3463\", \"y\": \"5381\"}', 'f2464487-d89b-4f1e-befa-c73261bf2cc9');
INSERT INTO `microchip_pin_log` VALUES ('9522fd12-4af0-723b-706d-757887ca20ff', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2009-05-30 11:16:13', '{\"x\": \"4970\", \"y\": \"7745\"}', '6039b856-5742-4d7a-8586-a801d0ff91d0');
INSERT INTO `microchip_pin_log` VALUES ('958dd030-45da-df59-c791-3a7a25c9e491', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2002-10-29 09:02:40', '{\"x\": \"4958\", \"y\": \"3312\"}', '9da2a55d-5bbe-7337-1711-bd06dfa15359');
INSERT INTO `microchip_pin_log` VALUES ('95953276-ea16-fb51-0b0a-db0ac5917963', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2010-04-10 16:41:31', '{\"x\": \"1079\", \"y\": \"9969\"}', '56e349b6-9e20-374e-f25d-6bee93b8eb80');
INSERT INTO `microchip_pin_log` VALUES ('96aac3a9-03c6-307e-872d-7a2ac3cf8f1c', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2017-07-13 14:46:33', '{\"x\": \"7516\", \"y\": \"4775\"}', 'be91cdd2-e450-541c-25c8-874923f264ad');
INSERT INTO `microchip_pin_log` VALUES ('96e4a187-eae8-402e-2505-86961c1253b7', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2013-05-05 22:44:00', '{\"x\": \"2849\", \"y\": \"9717\"}', '048ea521-5bef-5caa-dffb-7c8ba28a4927');
INSERT INTO `microchip_pin_log` VALUES ('97396492-cd07-0543-2ad2-3e5cf2601f03', '0.90', '48', '0.91', 1, 'notpin', 1, 'notpin', '2016-12-15 22:05:02', '{\"x\": \"4178\", \"y\": \"8515\"}', 'de3443cf-7d8e-39e3-2127-3eb69cf3beb1');
INSERT INTO `microchip_pin_log` VALUES ('973b8e33-0c37-b4ab-1c87-fa41313846f3', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2020-06-12 17:08:08', '{\"x\": \"2495\", \"y\": \"9290\"}', '2e4c24a9-8962-11e3-0ca7-7a8c4506b760');
INSERT INTO `microchip_pin_log` VALUES ('98555248-4af4-32f2-3517-062df306dcc7', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2005-04-30 21:27:03', '{\"x\": \"6787\", \"y\": \"2888\"}', 'e95b65c7-3b1a-dc1b-23d1-9e8d53cca2f0');
INSERT INTO `microchip_pin_log` VALUES ('985a30ce-44cb-1240-85f9-5b5ddf149057', '0.37', '48', '0.92', 2, 'pin', 1, 'notpin', '2000-05-21 22:42:28', '{\"x\": \"3928\", \"y\": \"6584\"}', '7a45ee38-91a5-0feb-89bd-8dec514f65d3');
INSERT INTO `microchip_pin_log` VALUES ('986c5a88-3ce2-006a-a06f-24f233382fe9', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2012-10-27 12:40:48', '{\"x\": \"1482\", \"y\": \"3972\"}', 'fc877179-b038-ed1d-2282-fe7510cf1fcf');
INSERT INTO `microchip_pin_log` VALUES ('988e6007-1f0c-42a2-eea1-e5e423d2b2e6', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2015-10-16 11:18:06', '{\"x\": \"4733\", \"y\": \"9155\"}', 'd02d5a83-fa7d-b90a-327d-18d89a7ef468');
INSERT INTO `microchip_pin_log` VALUES ('98bbcaef-c75e-53df-740d-aa9071817890', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2018-03-11 02:46:38', '{\"x\": \"5871\", \"y\": \"1945\"}', '95a77475-0aa0-8cb2-fd1a-d0be6d656672');
INSERT INTO `microchip_pin_log` VALUES ('98e0b3ff-963b-468a-2c0f-cb2adf2338b0', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2008-12-10 20:16:00', '{\"x\": \"6491\", \"y\": \"2238\"}', '8ffcdfba-53a7-0332-030a-d0d35c266073');
INSERT INTO `microchip_pin_log` VALUES ('98ec5959-9178-f501-0c9d-ea9972f659ed', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2005-03-08 04:32:35', '{\"x\": \"2440\", \"y\": \"6293\"}', 'd4c2e776-fd0d-dc40-1f91-bc246a0d082b');
INSERT INTO `microchip_pin_log` VALUES ('9a005891-1e02-ba0e-6a0d-54393f1b7b71', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2003-01-18 10:34:51', '{\"x\": \"9285\", \"y\": \"3724\"}', '2376868c-8e2b-2916-cd0a-ef8f95a2b91b');
INSERT INTO `microchip_pin_log` VALUES ('9a17331d-08c7-ae8c-b255-9d3d6235030d', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2005-02-02 15:37:49', '{\"x\": \"4910\", \"y\": \"3441\"}', '3adb6172-6d76-aa86-07e4-46b9e0ff940f');
INSERT INTO `microchip_pin_log` VALUES ('9a1f8947-23d2-7db6-2ce8-8a0376f76dc5', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2017-03-11 05:13:23', '{\"x\": \"2198\", \"y\": \"9177\"}', '976f43bf-89e9-7513-3e02-19a89c9c6e62');
INSERT INTO `microchip_pin_log` VALUES ('9a5dca19-40f1-9b81-53d6-15953bd55add', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2016-07-30 06:46:22', '{\"x\": \"8957\", \"y\": \"2401\"}', '8e5039d0-6547-f13b-c6a8-f506e0fbf590');
INSERT INTO `microchip_pin_log` VALUES ('9a9758dc-1818-f5ef-2ab2-0d096109958b', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2020-11-16 20:43:22', '{\"x\": \"9659\", \"y\": \"5441\"}', 'd1232856-6e1a-fc58-6737-cd2f29f1c5e6');
INSERT INTO `microchip_pin_log` VALUES ('9a97729d-cd93-7bbf-3dd0-235c7640e4fc', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2011-10-19 11:45:03', '{\"x\": \"5040\", \"y\": \"5161\"}', 'a1fbdaa8-3a7e-6565-7e96-f44b199dd6d8');
INSERT INTO `microchip_pin_log` VALUES ('9ac2e953-ae11-5a47-af33-87b4f176e418', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2022-02-26 12:31:48', '{\"x\": \"7109\", \"y\": \"2317\"}', '2150a653-9dcb-a1ad-1a44-e4625d3dd591');
INSERT INTO `microchip_pin_log` VALUES ('9ae3a3b9-1446-4210-b431-1775c5299804', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2007-11-07 18:55:44', '{\"x\": \"5058\", \"y\": \"2325\"}', '50600eb7-b162-7825-3424-c0d8010e57be');
INSERT INTO `microchip_pin_log` VALUES ('9b5ddc5e-8bdc-4233-1a6e-3acf91911759', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2001-08-27 15:24:18', '{\"x\": \"3528\", \"y\": \"4177\"}', '51d65137-de54-8c03-bbd2-4a1ec6ad05be');
INSERT INTO `microchip_pin_log` VALUES ('9b86b4d5-22b6-dbc0-1a15-274442b90e08', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2009-10-23 08:01:39', '{\"x\": \"8684\", \"y\": \"6428\"}', '57e8ea8e-0b38-035a-bed0-5f7625107d70');
INSERT INTO `microchip_pin_log` VALUES ('9b94f894-fb2d-87e4-e9d9-7543615d9a77', '0.97', '48', '0.98', 1, 'notpin', 1, 'pin', '2013-02-03 15:01:54', '{\"x\": \"1121\", \"y\": \"2873\"}', '51c589b1-b30e-6b41-6ce2-6f6255afe9ed');
INSERT INTO `microchip_pin_log` VALUES ('9bbf8bc3-6930-30b6-9e57-90b2813fbc94', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2021-05-18 09:01:49', '{\"x\": \"9821\", \"y\": \"2789\"}', 'a95bf4fa-49d0-ebf4-0850-5857f64658e7');
INSERT INTO `microchip_pin_log` VALUES ('9bd02290-fdf3-9a5b-1f3b-4bc2e8fe37f0', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2013-11-22 17:37:42', '{\"x\": \"9737\", \"y\": \"0959\"}', 'a30adb18-c7ff-e95b-b750-efc20c12c48d');
INSERT INTO `microchip_pin_log` VALUES ('9c616cc1-aa18-c5d1-5f36-060c1f6a4daa', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2021-01-21 06:25:03', '{\"x\": \"6794\", \"y\": \"1542\"}', '762858e4-41d7-b39f-7c6e-50e2afee885b');
INSERT INTO `microchip_pin_log` VALUES ('9c6f300e-7301-8056-62b7-3e17e804005c', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2015-01-30 07:31:41', '{\"x\": \"2564\", \"y\": \"5802\"}', 'd029eb24-82c4-c8cc-ac5c-db003b755380');
INSERT INTO `microchip_pin_log` VALUES ('9c9820a4-42c5-7610-4d3e-c2596595be61', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2000-09-25 16:48:48', '{\"x\": \"3171\", \"y\": \"0260\"}', '66036935-fe4c-cd92-479c-a530766e036f');
INSERT INTO `microchip_pin_log` VALUES ('9d45102f-eefd-f2d4-4b62-653ba45bdda4', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2010-09-05 01:03:04', '{\"x\": \"6642\", \"y\": \"3823\"}', '019a4d0b-f6a8-bb5d-3eea-0de55b3bc83b');
INSERT INTO `microchip_pin_log` VALUES ('9d813b6c-e32c-0a15-a6ef-61d9418d536b', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2020-01-03 07:44:50', '{\"x\": \"5318\", \"y\": \"7357\"}', '3a2193bd-9df3-bb5b-bedd-d4e2fd201099');
INSERT INTO `microchip_pin_log` VALUES ('9e3b9fac-f834-6194-5329-23b8abd27001', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2002-11-22 06:27:17', '{\"x\": \"5540\", \"y\": \"8521\"}', 'a8fdf0f6-8046-55fa-a7cc-681cb2b73419');
INSERT INTO `microchip_pin_log` VALUES ('9e532f64-10bb-0ed5-c4b3-795d4d86b72f', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2014-08-05 22:06:43', '{\"x\": \"4014\", \"y\": \"5798\"}', 'a30adb18-c7ff-e95b-b750-efc20c12c48d');
INSERT INTO `microchip_pin_log` VALUES ('9e973588-dea2-fd38-eae4-4fb095147c8f', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2003-02-20 09:52:11', '{\"x\": \"3782\", \"y\": \"8307\"}', '3a2193bd-9df3-bb5b-bedd-d4e2fd201099');
INSERT INTO `microchip_pin_log` VALUES ('9ec27cd3-3892-1b99-0444-27e749f4b9ba', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2006-03-05 05:06:51', '{\"x\": \"0802\", \"y\": \"9119\"}', 'c6af1e38-44e1-c2af-fc9d-f1f81ad8b453');
INSERT INTO `microchip_pin_log` VALUES ('9f22079a-93ac-2158-667f-dd6cd819c96b', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2010-06-12 18:14:40', '{\"x\": \"9328\", \"y\": \"0890\"}', '534118a2-96f5-4f4c-7597-0a172616998f');
INSERT INTO `microchip_pin_log` VALUES ('9f30caa9-4139-1929-b312-4af061717f22', '0.66', '48', '0.97', 1, 'notpin', 1, 'notpin', '2000-08-10 00:12:30', '{\"x\": \"3698\", \"y\": \"9946\"}', '79193636-1bfd-5149-5062-6d2d5f8aefd4');
INSERT INTO `microchip_pin_log` VALUES ('9f59af84-d8fa-eff7-823c-4f2eb751a172', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2011-09-09 03:52:21', '{\"x\": \"9264\", \"y\": \"6471\"}', '4454ee0d-a0be-c906-b0cf-82665fb64500');
INSERT INTO `microchip_pin_log` VALUES ('9f85bd1c-caff-4cda-da14-19263f719c94', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2019-06-27 01:38:43', '{\"x\": \"2414\", \"y\": \"8692\"}', 'e3baf096-e922-2b6c-992d-3c44acb890ce');
INSERT INTO `microchip_pin_log` VALUES ('9f9d63db-8117-9234-ffa3-15737190936d', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2016-11-18 18:20:11', '{\"x\": \"3831\", \"y\": \"4221\"}', '18839053-4089-330e-0bd8-2be1938eaf25');
INSERT INTO `microchip_pin_log` VALUES ('9ff467e1-d97c-2c22-37c7-60122de49832', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2017-03-01 04:54:37', '{\"x\": \"6528\", \"y\": \"0362\"}', 'e034931d-2c81-26cc-381b-ccce899a17ea');
INSERT INTO `microchip_pin_log` VALUES ('a0b6841e-3a96-2a33-91ec-9ab29c15fb08', '0.10', '48', '0.94', 2, 'pin', 1, 'pin', '2005-03-29 01:00:49', '{\"x\": \"9105\", \"y\": \"7774\"}', 'ae2ea0c1-4949-71a1-136d-88a799d84f8f');
INSERT INTO `microchip_pin_log` VALUES ('a0b88d5e-af6d-64ec-67b8-00438af41828', '0.97', '34', '0.99', 1, 'pin', 1, 'pin', '2011-05-30 19:18:27', '{\"x\": \"7637\", \"y\": \"6502\"}', '4465ee39-6d40-650d-a7ba-e41a810e594e');
INSERT INTO `microchip_pin_log` VALUES ('a0b8e121-0bf4-b00f-596f-eabba188c376', '0.97', '48', '0.90', 2, 'notpin', 1, 'notpin', '2004-03-08 11:25:40', '{\"x\": \"9856\", \"y\": \"6269\"}', 'e256f913-121c-9cc7-7a4c-c1ce584e53a2');
INSERT INTO `microchip_pin_log` VALUES ('a1355ada-5547-6c73-9103-b19ea834021f', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2003-03-08 12:54:35', '{\"x\": \"8547\", \"y\": \"9112\"}', '01a10b0e-77cf-4465-b9c7-e8c3e8990b97');
INSERT INTO `microchip_pin_log` VALUES ('a16613a2-4986-2af8-a4c2-2b32ed38ef0e', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2014-07-24 04:41:37', '{\"x\": \"4093\", \"y\": \"8658\"}', '28fa47cf-df5b-a145-efce-381734432875');
INSERT INTO `microchip_pin_log` VALUES ('a1724843-3519-935e-444f-2568ee18d7ae', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2022-07-06 15:26:56', '{\"x\": \"3544\", \"y\": \"3134\"}', 'da4ba219-9fa7-9a73-02bb-b79ea5442819');
INSERT INTO `microchip_pin_log` VALUES ('a18098ba-c9e2-6c74-b8f6-e362a0ef336a', '0.97', '48', '0.93', 2, 'pin', 1, 'notpin', '2020-03-23 01:48:04', '{\"x\": \"7988\", \"y\": \"2444\"}', '5acdaeb7-689e-7e6b-0dc9-3c8da09cc398');
INSERT INTO `microchip_pin_log` VALUES ('a1a897ed-8e4a-edbe-d698-22d47c895f88', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2020-10-13 00:05:19', '{\"x\": \"6956\", \"y\": \"4397\"}', '39dfc467-879d-ce12-2346-f84341b765d5');
INSERT INTO `microchip_pin_log` VALUES ('a1ae2984-c9a7-bb48-479a-5476601e883a', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2022-09-20 15:28:38', '{\"x\": \"5032\", \"y\": \"4089\"}', '2c1c6a50-83e2-9a74-f73e-326765e9d222');
INSERT INTO `microchip_pin_log` VALUES ('a1c21bfe-05eb-07c4-5371-bcdeb8443a79', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2005-11-12 00:20:55', '{\"x\": \"4873\", \"y\": \"9262\"}', '6a1d0201-7e92-bdbf-8101-260a09a4e24e');
INSERT INTO `microchip_pin_log` VALUES ('a1d54d71-9b56-cd22-2f2f-a8014be57892', '0.97', '48', '0.90', 2, 'notpin', 1, 'notpin', '2002-01-01 15:10:25', '{\"x\": \"5305\", \"y\": \"5644\"}', '63f9898e-8024-30a3-3882-18d2a3660df3');
INSERT INTO `microchip_pin_log` VALUES ('a2096c09-e606-376a-266f-fe4a9a1d7ecd', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2002-07-26 10:27:46', '{\"x\": \"5995\", \"y\": \"8133\"}', '8e8a1cbd-156f-64e3-b7a2-c282537d203a');
INSERT INTO `microchip_pin_log` VALUES ('a246c238-64a0-f17b-66ec-72d20ed9907c', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2021-02-28 12:35:45', '{\"x\": \"9185\", \"y\": \"7832\"}', '48926f09-20bc-100a-c77d-d83e50865f2e');
INSERT INTO `microchip_pin_log` VALUES ('a271e1d9-feaa-e5bc-f0fc-13743e7c48d1', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2019-08-13 12:52:29', '{\"x\": \"2564\", \"y\": \"1354\"}', '6d09bd63-780a-13ef-10d1-2e11142b5a7b');
INSERT INTO `microchip_pin_log` VALUES ('a2a6c688-6fe6-7fe6-e1df-637e003ef1de', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2018-10-03 06:45:30', '{\"x\": \"4294\", \"y\": \"0925\"}', '6a1d0201-7e92-bdbf-8101-260a09a4e24e');
INSERT INTO `microchip_pin_log` VALUES ('a2b67b72-7662-4513-6876-f74409f60950', '0.97', '48', '0.93', 2, 'pin', 1, 'notpin', '2001-04-13 19:20:47', '{\"x\": \"8287\", \"y\": \"5636\"}', '558b5dcb-68b9-202f-d3e7-1f3a74d87fa8');
INSERT INTO `microchip_pin_log` VALUES ('a2ddd497-d41f-c351-94a5-0945090a315e', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2020-07-17 12:42:37', '{\"x\": \"1417\", \"y\": \"4410\"}', '3a07ce53-2fd9-0870-21fe-66316aa550f7');
INSERT INTO `microchip_pin_log` VALUES ('a2f31c4b-b9a0-a60a-1155-a05c0189125c', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2014-12-03 15:27:21', '{\"x\": \"4829\", \"y\": \"8945\"}', 'b3f33ee1-1ebc-85f6-3a21-05308ac40db3');
INSERT INTO `microchip_pin_log` VALUES ('a32b1a3a-23a2-5e8b-614b-464afd02e91d', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2010-08-19 11:40:08', '{\"x\": \"4704\", \"y\": \"9243\"}', '79deb72f-0421-89b2-8905-7f64634b7ac3');
INSERT INTO `microchip_pin_log` VALUES ('a332094a-18e3-1efa-1d14-b13067a74be3', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2014-08-07 09:27:02', '{\"x\": \"9117\", \"y\": \"6305\"}', '815d2000-c6ce-6998-5763-d5d387ba8bcc');
INSERT INTO `microchip_pin_log` VALUES ('a3581140-846f-762f-1649-79b75d05767c', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2020-06-10 10:47:03', '{\"x\": \"7643\", \"y\": \"8644\"}', '6565932e-3e00-c58f-e686-3c231055b89a');
INSERT INTO `microchip_pin_log` VALUES ('a3b8b161-dbc8-b179-c35b-5b9b44af7f2a', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2013-05-18 23:11:17', '{\"x\": \"3378\", \"y\": \"2469\"}', 'b819df67-29ee-4faf-950a-0fc398b0f1f4');
INSERT INTO `microchip_pin_log` VALUES ('a3cc4486-aa6c-e96e-2a1c-36c360379006', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2004-06-19 19:49:40', '{\"x\": \"4854\", \"y\": \"1520\"}', '57dc0485-4fd1-63bf-caa6-0247f06cf43c');
INSERT INTO `microchip_pin_log` VALUES ('a3dac4ea-a07b-c1f4-d745-ae8a72dc36c9', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2004-02-14 14:15:28', '{\"x\": \"7001\", \"y\": \"8270\"}', '34ad57cb-d49e-7cee-e444-35993538e9b8');
INSERT INTO `microchip_pin_log` VALUES ('a3e6b4d9-f012-5005-482d-ca774955fabd', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2017-10-28 20:13:46', '{\"x\": \"0947\", \"y\": \"2361\"}', 'df1fcd4b-7707-bb52-3098-2711fc51fbd2');
INSERT INTO `microchip_pin_log` VALUES ('a448ae4f-9b17-510c-c933-7134f71022cd', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2018-08-04 08:42:55', '{\"x\": \"5716\", \"y\": \"5353\"}', 'f186d06f-4dd8-95d5-27a8-cfe8486aff88');
INSERT INTO `microchip_pin_log` VALUES ('a528883b-8038-a292-3c9a-4609425fa3ed', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2010-07-09 03:13:25', '{\"x\": \"5190\", \"y\": \"6094\"}', 'f45eebd8-ec01-18ef-112c-258fa9c4f832');
INSERT INTO `microchip_pin_log` VALUES ('a554bc76-984d-214b-45a1-22527519dc29', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2007-11-10 21:48:32', '{\"x\": \"6740\", \"y\": \"1008\"}', '91bd86aa-20c0-3de5-2e4d-3804ddfa2c56');
INSERT INTO `microchip_pin_log` VALUES ('a56e753e-3cbd-8ae6-d9ca-923a7fae8795', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2007-09-08 19:52:41', '{\"x\": \"1808\", \"y\": \"9448\"}', '815c57ba-5f8b-77e0-e278-fccf05c23551');
INSERT INTO `microchip_pin_log` VALUES ('a5bf4acd-6210-e30d-26ac-6a7b6508d23c', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2014-02-14 18:57:17', '{\"x\": \"1597\", \"y\": \"8448\"}', '5171aa21-b235-7136-7695-905b7c4c246c');
INSERT INTO `microchip_pin_log` VALUES ('a5c1eda7-0abd-5cae-37d1-a27ef29fe735', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2011-01-10 05:31:44', '{\"x\": \"0175\", \"y\": \"7258\"}', '815d2000-c6ce-6998-5763-d5d387ba8bcc');
INSERT INTO `microchip_pin_log` VALUES ('a5cff935-a969-936c-de4c-f6bc8eb72f6b', '0.10', '48', '0.97', 1, 'notpin', 1, 'notpin', '2018-07-01 23:35:59', '{\"x\": \"6475\", \"y\": \"7336\"}', 'bab713b3-f8f3-fa05-d39f-742da9d516ab');
INSERT INTO `microchip_pin_log` VALUES ('a5de2d23-9bac-1260-10c3-37ad8e681303', '0.97', '48', '0.93', 1, 'pin', 1, 'notpin', '2007-09-23 11:36:50', '{\"x\": \"2226\", \"y\": \"2814\"}', '300091d2-8737-b264-786b-4465e1269f90');
INSERT INTO `microchip_pin_log` VALUES ('a5ebc6be-1b4b-dc64-fe12-5537aecf2e3c', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2019-02-02 21:16:15', '{\"x\": \"0561\", \"y\": \"2509\"}', 'de30a9e0-47fc-cf74-04c4-fdb770963d10');
INSERT INTO `microchip_pin_log` VALUES ('a5f00d9d-aed9-be1a-bdc3-3754309f1377', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2006-01-25 01:35:12', '{\"x\": \"4152\", \"y\": \"2747\"}', '5bf9f0b9-9a0c-c8c9-145f-7374d93acb29');
INSERT INTO `microchip_pin_log` VALUES ('a6318357-4fa5-fc91-9b39-58ffb6a35f18', '0.97', '48', '0.99', 2, 'notpin', 1, 'pin', '2019-04-18 09:12:22', '{\"x\": \"3760\", \"y\": \"2508\"}', 'd4e13fce-bd56-c0c6-4de4-cd915af37fcb');
INSERT INTO `microchip_pin_log` VALUES ('a6f21991-a982-da6b-f7d6-6b3b24eef42c', '0.31', '48', '0.91', 2, 'notpin', 1, 'notpin', '2002-11-21 07:32:52', '{\"x\": \"7809\", \"y\": \"0284\"}', '3a2193bd-9df3-bb5b-bedd-d4e2fd201099');
INSERT INTO `microchip_pin_log` VALUES ('a6f7c92d-70b7-602a-be74-b3d9d884fa55', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2022-11-24 17:16:40', '{\"x\": \"0185\", \"y\": \"5848\"}', '26fe6a82-8819-e1ff-3322-5310f91fec8b');
INSERT INTO `microchip_pin_log` VALUES ('a713bd5c-1505-f0de-b681-3d7ca4a4f649', '0.97', '48', '0.90', 1, 'notpin', 1, 'pin', '2007-11-02 01:46:32', '{\"x\": \"5230\", \"y\": \"6704\"}', '06bdb058-9378-d2fe-6e97-d9bc24771d41');
INSERT INTO `microchip_pin_log` VALUES ('a7fde7c4-e3d7-71d1-6323-24fba495aa5d', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2012-12-03 10:05:25', '{\"x\": \"3695\", \"y\": \"3426\"}', 'a7f3d255-ed09-5112-a0db-97b2b06d1b69');
INSERT INTO `microchip_pin_log` VALUES ('a875c023-07fb-2348-1077-348973dd2596', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2021-11-22 21:32:52', '{\"x\": \"7756\", \"y\": \"7546\"}', 'f82362d0-a7af-e9f8-af9e-41a0ffa6847e');
INSERT INTO `microchip_pin_log` VALUES ('a884e731-d720-72e9-210e-33e15fb85fa9', '0.97', '48', '0.98', 2, 'pin', 1, 'pin', '2000-09-20 02:25:42', '{\"x\": \"8896\", \"y\": \"8862\"}', 'f2464487-d89b-4f1e-befa-c73261bf2cc9');
INSERT INTO `microchip_pin_log` VALUES ('a8930684-eebe-70ad-ca08-ed9d16af26fc', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2014-03-09 05:20:29', '{\"x\": \"9271\", \"y\": \"5300\"}', '01a10b0e-77cf-4465-b9c7-e8c3e8990b97');
INSERT INTO `microchip_pin_log` VALUES ('a8d00c5f-e710-b4c7-5465-dc441ad07c6c', '0.71', '48', '0.99', 1, 'notpin', 1, 'notpin', '2015-02-11 21:45:22', '{\"x\": \"4784\", \"y\": \"9312\"}', '9d526a98-19cc-40e2-ae5b-01161e5a0cdc');
INSERT INTO `microchip_pin_log` VALUES ('a8feb48c-5e40-dd57-9f26-e1f78d5d1563', '0.97', '48', '0.96', 2, 'pin', 1, 'notpin', '2007-02-08 12:07:54', '{\"x\": \"1539\", \"y\": \"5968\"}', 'c97e8a2a-02c0-c3d5-c502-3588debc3e22');
INSERT INTO `microchip_pin_log` VALUES ('aa16c74a-ff88-8a63-4e46-24c09fe7a446', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2003-05-10 13:37:12', '{\"x\": \"0788\", \"y\": \"1779\"}', 'd02d5a83-fa7d-b90a-327d-18d89a7ef468');
INSERT INTO `microchip_pin_log` VALUES ('aa8ee6b5-f2a0-72c3-c5eb-dc52f3daa92b', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2006-03-13 08:13:59', '{\"x\": \"7843\", \"y\": \"6610\"}', '905ae2aa-56f7-a810-8497-7b7e25721943');
INSERT INTO `microchip_pin_log` VALUES ('aaa51517-90a2-740c-4f1b-862a935db328', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2012-04-30 23:18:51', '{\"x\": \"1156\", \"y\": \"2242\"}', 'bfe06db8-4925-7266-785d-7ce742eb7e3f');
INSERT INTO `microchip_pin_log` VALUES ('aab66f48-6917-5614-2b7c-b75eb33e61dd', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2016-02-25 20:44:45', '{\"x\": \"2457\", \"y\": \"6461\"}', 'f5b34464-e481-b66d-915b-ade8b3aecd4d');
INSERT INTO `microchip_pin_log` VALUES ('aad89793-43f6-2564-cc56-1746806f046c', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2012-05-12 09:55:58', '{\"x\": \"0861\", \"y\": \"2990\"}', '1da2ecd5-4273-c969-e008-d01a417d7ed3');
INSERT INTO `microchip_pin_log` VALUES ('aaecef25-f7cf-5cb0-d170-438fdc232ea4', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2003-08-22 08:52:13', '{\"x\": \"9386\", \"y\": \"0633\"}', '8e5039d0-6547-f13b-c6a8-f506e0fbf590');
INSERT INTO `microchip_pin_log` VALUES ('ab2a3b4c-691f-8052-0fe9-e2412ff260ce', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2003-07-11 07:15:48', '{\"x\": \"8514\", \"y\": \"2634\"}', 'f19c5790-8fbb-d20a-20db-883a19ecdd40');
INSERT INTO `microchip_pin_log` VALUES ('abc64665-3db7-caca-d226-11cacc36ddcf', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2007-03-16 03:10:08', '{\"x\": \"9882\", \"y\": \"5280\"}', 'c8348e14-3f8d-7c1e-1040-6d9a1209aa17');
INSERT INTO `microchip_pin_log` VALUES ('abda9a0b-a657-871b-a133-a95f838519d8', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2001-02-07 21:49:05', '{\"x\": \"3567\", \"y\": \"0329\"}', 'e6e3fa95-6d37-39e4-199b-82f47ab71769');
INSERT INTO `microchip_pin_log` VALUES ('ac1fcf95-0b83-77af-b5e3-74027aa5bf3f', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2012-05-21 20:17:08', '{\"x\": \"5423\", \"y\": \"3882\"}', '673f1a05-3aa7-09c6-2f29-b2cfbe91f215');
INSERT INTO `microchip_pin_log` VALUES ('ac3ef145-0c3b-1e4e-16b6-37c290e9eb66', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2003-07-19 19:00:59', '{\"x\": \"2715\", \"y\": \"2714\"}', '54232f5b-25fd-6493-118f-357b383248ca');
INSERT INTO `microchip_pin_log` VALUES ('ac9fe02b-17fe-8b56-011e-85c30e7fa025', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2021-01-08 21:57:22', '{\"x\": \"2284\", \"y\": \"8450\"}', 'ca8b3abe-e65c-7cf8-0be3-412a13307679');
INSERT INTO `microchip_pin_log` VALUES ('acfaf1bc-8110-956b-3585-7564b2fdbd8a', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2015-12-09 15:38:19', '{\"x\": \"8144\", \"y\": \"6464\"}', '9f03b4db-aac0-9869-0944-7560982bb079');
INSERT INTO `microchip_pin_log` VALUES ('ad140688-df82-84d3-206d-2b0e2da93f60', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2005-12-22 10:39:46', '{\"x\": \"1382\", \"y\": \"1603\"}', '91f00930-32f0-85ee-d9f3-1a8a01d247ce');
INSERT INTO `microchip_pin_log` VALUES ('ad1f5a15-8055-344b-b9bd-290d09168d42', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2012-01-15 14:13:41', '{\"x\": \"3176\", \"y\": \"9239\"}', '75d4d163-31e2-e423-e5ec-889f21830b6d');
INSERT INTO `microchip_pin_log` VALUES ('ad4c9d30-4666-a3b2-0f94-95236d3b1c1a', '0.82', '48', '0.90', 1, 'notpin', 1, 'pin', '2020-01-14 12:22:39', '{\"x\": \"3779\", \"y\": \"4410\"}', 'fe7ece18-ae66-3a81-3282-1282c572e85a');
INSERT INTO `microchip_pin_log` VALUES ('ad55b86a-3fbc-c47e-7792-f3e00eee575f', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2014-02-17 05:57:48', '{\"x\": \"1880\", \"y\": \"6204\"}', '0e9c5030-66ed-64a1-f836-3cde31cbcc6c');
INSERT INTO `microchip_pin_log` VALUES ('ae327276-4cfb-4add-a0ec-c322cb2b6a8f', '0.97', '48', '0.98', 1, 'notpin', 1, 'pin', '2010-07-03 23:23:55', '{\"x\": \"6189\", \"y\": \"9543\"}', '417e19dc-989e-f0e0-3033-3cca6329bc7a');
INSERT INTO `microchip_pin_log` VALUES ('aeacaf9d-e8fe-8ec2-5d78-850b26fcc7ea', '0.97', '48', '0.98', 2, 'pin', 1, 'pin', '2003-02-25 08:41:17', '{\"x\": \"6484\", \"y\": \"7242\"}', 'c0652e8c-da3e-272a-bef3-c9253ed5af6b');
INSERT INTO `microchip_pin_log` VALUES ('af0a8c60-bcea-9f38-33b2-e8b69de3e877', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2008-11-29 15:41:11', '{\"x\": \"0801\", \"y\": \"8867\"}', '94da1c8a-b41a-18a1-f11f-16bd2224e157');
INSERT INTO `microchip_pin_log` VALUES ('af98677f-3434-d0c1-9e25-8a5316f2fa13', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2005-10-31 22:17:41', '{\"x\": \"5039\", \"y\": \"0902\"}', '9b598c6c-91d2-1ba7-bc8f-9ee2fdd3a042');
INSERT INTO `microchip_pin_log` VALUES ('afa596b9-74cc-e03a-cefa-d2bc7d02bd35', '0.97', '48', '0.96', 1, 'pin', 1, 'notpin', '2007-08-05 06:10:09', '{\"x\": \"4751\", \"y\": \"0283\"}', '95ef8c7c-8b3c-c91e-96f2-ea26ee4730bd');
INSERT INTO `microchip_pin_log` VALUES ('b030cbe3-bbd1-ed9a-5a2a-3e25ceb6dbaf', '0.69', '48', '0.94', 2, 'notpin', 1, 'notpin', '2002-07-15 07:42:43', '{\"x\": \"2392\", \"y\": \"7148\"}', 'beac9bc1-586e-23c8-3a5c-e0f098a85f30');
INSERT INTO `microchip_pin_log` VALUES ('b057896c-edf3-f50a-5717-f006ebf21d47', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2018-03-27 14:15:48', '{\"x\": \"1313\", \"y\": \"4890\"}', 'e95b65c7-3b1a-dc1b-23d1-9e8d53cca2f0');
INSERT INTO `microchip_pin_log` VALUES ('b12b3286-903a-6dba-4b62-c243b3696c74', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2006-03-15 09:31:15', '{\"x\": \"1560\", \"y\": \"1287\"}', '4bf4f557-9b19-f2c3-a6e8-241dee226245');
INSERT INTO `microchip_pin_log` VALUES ('b150b511-13ae-fc7f-ede4-841e161a7484', '0.30', '48', '0.96', 2, 'pin', 1, 'notpin', '2021-01-04 23:41:05', '{\"x\": \"3126\", \"y\": \"7702\"}', '506e9b0a-0326-ff26-4b21-4d7b0f459ed2');
INSERT INTO `microchip_pin_log` VALUES ('b1536bcd-864b-e968-7c61-a25dee2784ad', '0.97', '48', '0.98', 2, 'notpin', 1, 'pin', '2005-08-28 05:23:25', '{\"x\": \"9796\", \"y\": \"9791\"}', 'ae3658ab-dd65-0a65-366a-6471277180a2');
INSERT INTO `microchip_pin_log` VALUES ('b16ef296-6412-4a87-8a12-d5889d6b76c5', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2017-01-21 03:03:28', '{\"x\": \"4005\", \"y\": \"9362\"}', '48ea0941-378c-b900-713c-109d623c5baa');
INSERT INTO `microchip_pin_log` VALUES ('b174586b-34b7-90ae-78c5-50497d7bcdad', '0.97', '48', '0.96', 1, 'pin', 1, 'notpin', '2011-06-21 16:58:26', '{\"x\": \"3556\", \"y\": \"8650\"}', '503d4b39-54d0-558d-c4d2-be13bfafc237');
INSERT INTO `microchip_pin_log` VALUES ('b17691f6-1d9a-7691-7357-ef9409f14b35', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2005-01-11 22:04:47', '{\"x\": \"6929\", \"y\": \"6681\"}', '4cf32b13-58d2-9e25-c04b-4bc7d8bd2bd1');
INSERT INTO `microchip_pin_log` VALUES ('b1948b8f-21c3-dc22-0e52-ec0a25c0ef94', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2005-06-04 10:57:25', '{\"x\": \"7425\", \"y\": \"0733\"}', '019a4d0b-f6a8-bb5d-3eea-0de55b3bc83b');
INSERT INTO `microchip_pin_log` VALUES ('b1d91b6c-688f-f41d-b2ac-dfd01ce395ff', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2008-07-07 11:17:38', '{\"x\": \"7904\", \"y\": \"3156\"}', '2b269816-2e2e-eb45-f2cf-6ed674ef02f8');
INSERT INTO `microchip_pin_log` VALUES ('b278260d-9bf3-c4e3-1aea-9f3378635e31', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2005-01-26 04:30:40', '{\"x\": \"1683\", \"y\": \"1258\"}', '2f0f6668-607a-99fd-b24e-2a582297a49a');
INSERT INTO `microchip_pin_log` VALUES ('b2828a05-8ec3-166e-f5ad-1347a50f2ad2', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2015-09-29 04:55:52', '{\"x\": \"6273\", \"y\": \"9160\"}', 'f2da4a77-3b68-6475-cd97-ae43d6bfd848');
INSERT INTO `microchip_pin_log` VALUES ('b2bc2965-4e50-bdf8-50f0-7fae1af2f963', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2019-05-27 10:38:39', '{\"x\": \"0684\", \"y\": \"1125\"}', 'f21e0772-198b-a005-7c15-aca805bd72b0');
INSERT INTO `microchip_pin_log` VALUES ('b2c71532-8708-f068-468a-6251fa8430d7', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2011-02-19 15:08:09', '{\"x\": \"5048\", \"y\": \"5845\"}', '31f392a2-d36c-04d0-5583-a79bdab272c8');
INSERT INTO `microchip_pin_log` VALUES ('b32408d9-0ca6-713d-7535-649398fecc60', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2014-04-09 06:17:00', '{\"x\": \"1283\", \"y\": \"0521\"}', '18839053-4089-330e-0bd8-2be1938eaf25');
INSERT INTO `microchip_pin_log` VALUES ('b39c40ac-de45-c193-c619-d98ac504158d', '0.67', '48', '0.92', 2, 'notpin', 1, 'notpin', '2022-11-29 11:30:55', '{\"x\": \"0867\", \"y\": \"4698\"}', '2c1c6a50-83e2-9a74-f73e-326765e9d222');
INSERT INTO `microchip_pin_log` VALUES ('b3a875d4-f731-068b-700a-6a23f8f9871b', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2008-01-31 02:51:27', '{\"x\": \"4847\", \"y\": \"9524\"}', '55dade37-0353-9704-38e2-427918ec11f4');
INSERT INTO `microchip_pin_log` VALUES ('b3ee9ef9-2a18-5895-79b2-5b443e5d7542', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2011-06-09 12:27:24', '{\"x\": \"7965\", \"y\": \"0636\"}', 'e034931d-2c81-26cc-381b-ccce899a17ea');
INSERT INTO `microchip_pin_log` VALUES ('b3ff588a-0408-71b4-78af-c38d217b637c', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2012-09-19 03:08:54', '{\"x\": \"7811\", \"y\": \"6758\"}', 'fe872847-a502-9e5b-f000-533bfa0a0c67');
INSERT INTO `microchip_pin_log` VALUES ('b4292d48-222b-feeb-5461-ec7afc18d554', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2012-09-08 18:57:23', '{\"x\": \"8969\", \"y\": \"3122\"}', 'd5d3da1e-e61a-39d1-375c-16db7b19f012');
INSERT INTO `microchip_pin_log` VALUES ('b48abb89-c0dd-2124-8679-dd38476c8216', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2007-04-26 19:24:04', '{\"x\": \"6124\", \"y\": \"3292\"}', '7164d7db-73ef-d4f8-11b8-784be3a371e7');
INSERT INTO `microchip_pin_log` VALUES ('b4d357ea-232f-f29f-b249-da6baf8c9da0', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2015-12-01 21:43:43', '{\"x\": \"3680\", \"y\": \"2566\"}', '815d2000-c6ce-6998-5763-d5d387ba8bcc');
INSERT INTO `microchip_pin_log` VALUES ('b4d70c61-5d86-031f-2628-e6156c49c207', '0.97', '48', '0.93', 2, 'pin', 1, 'notpin', '2018-06-24 06:59:36', '{\"x\": \"8915\", \"y\": \"5595\"}', 'f2bfefc3-b541-377f-7bf7-9504b586f43c');
INSERT INTO `microchip_pin_log` VALUES ('b4f58af6-713b-59f2-141f-80b8fef33443', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2011-11-07 23:34:47', '{\"x\": \"9930\", \"y\": \"0375\"}', '7844810f-3a8d-7d1e-012c-c5d1189f1a6f');
INSERT INTO `microchip_pin_log` VALUES ('b518255b-30e6-8c05-80d4-1aa25f2731c2', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2011-10-07 20:41:35', '{\"x\": \"2897\", \"y\": \"6037\"}', 'b3aad300-33a4-f3d8-459e-8acb7b43b45f');
INSERT INTO `microchip_pin_log` VALUES ('b52a0943-4c15-0be5-245d-48b08af16db7', '0.99', '48', '0.95', 2, 'notpin', 1, 'pin', '2019-06-10 12:15:28', '{\"x\": \"0385\", \"y\": \"7909\"}', '976f43bf-89e9-7513-3e02-19a89c9c6e62');
INSERT INTO `microchip_pin_log` VALUES ('b55d7ae8-4ce3-08ce-e80f-5f8236b50661', '0.08', '48', '0.93', 1, 'pin', 1, 'pin', '2022-02-10 11:14:29', '{\"x\": \"8473\", \"y\": \"1280\"}', 'ad9e74e3-0ce1-c608-ce70-17d2c8ff7909');
INSERT INTO `microchip_pin_log` VALUES ('b58006e0-4ca9-a328-26df-3eda98341574', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2006-07-03 11:56:46', '{\"x\": \"7152\", \"y\": \"8245\"}', '919c65e1-195e-4e56-9ed2-d11f8e78f9f2');
INSERT INTO `microchip_pin_log` VALUES ('b589cc17-8870-20e3-5130-effc0f573afc', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2009-09-01 17:11:29', '{\"x\": \"9155\", \"y\": \"0226\"}', '71af0c9e-9442-0a4f-4f10-f22b4ec25d3c');
INSERT INTO `microchip_pin_log` VALUES ('b5b8e414-9f43-63d1-0de6-ad2410947af9', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2003-02-01 10:09:37', '{\"x\": \"9232\", \"y\": \"7991\"}', 'edc5c31d-4804-6068-3d21-44b5291d3581');
INSERT INTO `microchip_pin_log` VALUES ('b6635bce-3ec4-8dd6-cf18-2da356182a50', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2020-07-21 15:16:54', '{\"x\": \"8244\", \"y\": \"8944\"}', 'c8348e14-3f8d-7c1e-1040-6d9a1209aa17');
INSERT INTO `microchip_pin_log` VALUES ('b67f66af-37ee-7156-432f-eaec4436203d', '0.25', '48', '0.90', 1, 'pin', 1, 'pin', '2009-09-19 02:08:39', '{\"x\": \"5297\", \"y\": \"9610\"}', '08f8260b-b0eb-7ce4-3119-1055f6b9c34c');
INSERT INTO `microchip_pin_log` VALUES ('b68e1854-9b8d-1b88-d0b5-7759b0dab83f', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2018-09-07 03:18:32', '{\"x\": \"7907\", \"y\": \"5741\"}', 'a95bf4fa-49d0-ebf4-0850-5857f64658e7');
INSERT INTO `microchip_pin_log` VALUES ('b6a142a5-1dbe-6559-da2d-ff07b977bfb8', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2000-12-20 19:46:58', '{\"x\": \"5020\", \"y\": \"1820\"}', '6dd7c484-bae2-f2c8-3607-3bfa94cbd916');
INSERT INTO `microchip_pin_log` VALUES ('b6b461a5-e578-4005-1002-be2011546541', '0.97', '48', '0.98', 2, 'notpin', 1, 'pin', '2011-05-24 15:04:31', '{\"x\": \"7891\", \"y\": \"7196\"}', 'd5315808-3d80-94ff-83c1-c0888dd269d7');
INSERT INTO `microchip_pin_log` VALUES ('b6fd27d5-5b87-9170-1bfa-393c48c70b5e', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2003-06-26 08:48:20', '{\"x\": \"9684\", \"y\": \"4857\"}', '73a777d5-3f98-7886-0887-3b6f51b50d58');
INSERT INTO `microchip_pin_log` VALUES ('b71b5f6f-7fcd-c5af-1acd-b97f8f372508', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2021-08-14 16:30:11', '{\"x\": \"3253\", \"y\": \"0358\"}', 'df3aa329-f38c-77f8-1183-76ce86e00771');
INSERT INTO `microchip_pin_log` VALUES ('b726fe1c-5db2-3203-cff9-ca8bb3fa93fe', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2008-07-28 00:09:37', '{\"x\": \"7102\", \"y\": \"8079\"}', '531b4110-fcaa-2206-d2c2-4d8e18d50731');
INSERT INTO `microchip_pin_log` VALUES ('b7a3cb87-6fd7-d2cc-bb37-56742a5793af', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2011-07-19 19:44:33', '{\"x\": \"2090\", \"y\": \"7895\"}', 'bd7894bf-e088-c85b-50f8-c58a510d98fa');
INSERT INTO `microchip_pin_log` VALUES ('b7b448fc-98fc-6c44-06d7-3c40e992f115', '0.97', '48', '0.95', 1, 'notpin', 1, 'notpin', '2021-08-11 06:38:46', '{\"x\": \"5916\", \"y\": \"5802\"}', '3480304d-7000-33be-0821-a0f9c69e5e3b');
INSERT INTO `microchip_pin_log` VALUES ('b7e4a1cf-83a6-ea3e-8eb8-21a1a18d7102', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2017-11-14 12:20:58', '{\"x\": \"0277\", \"y\": \"4371\"}', '4d44c8b2-3c39-011d-496c-d737adb49435');
INSERT INTO `microchip_pin_log` VALUES ('b84bc933-9b1b-0283-0fc8-1920077f7a9e', '0.72', '48', '0.96', 2, 'pin', 1, 'notpin', '2000-12-01 02:05:44', '{\"x\": \"5904\", \"y\": \"1458\"}', '79593a83-3cf2-d901-eda9-9491897dd564');
INSERT INTO `microchip_pin_log` VALUES ('b89cf563-4da9-9bf5-de5b-5da659eefa1b', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2017-08-20 22:27:47', '{\"x\": \"7455\", \"y\": \"1737\"}', '94da1c8a-b41a-18a1-f11f-16bd2224e157');
INSERT INTO `microchip_pin_log` VALUES ('b8b98a77-fd12-90b6-ccdd-44b0e63b0c0d', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2009-12-26 05:55:46', '{\"x\": \"4181\", \"y\": \"5818\"}', 'a4cdbad4-0e20-e161-b20a-567833020427');
INSERT INTO `microchip_pin_log` VALUES ('b8d1583e-5990-2fd0-1c9a-367fdb56d955', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2000-09-29 21:36:15', '{\"x\": \"1706\", \"y\": \"6984\"}', '7d8169e6-29b6-375c-d203-6fc4c7d955ae');
INSERT INTO `microchip_pin_log` VALUES ('b9589b79-ed61-c96e-1986-cf07918526b6', '0.97', '48', '0.98', 1, 'pin', 1, 'pin', '2001-03-02 08:07:41', '{\"x\": \"3487\", \"y\": \"9547\"}', 'beac9bc1-586e-23c8-3a5c-e0f098a85f30');
INSERT INTO `microchip_pin_log` VALUES ('b98e42ae-86a4-9f87-5456-aaaa86ca3de5', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2009-08-22 08:22:59', '{\"x\": \"9867\", \"y\": \"1053\"}', '546e076d-025d-c3b3-03db-eb6a12b00a02');
INSERT INTO `microchip_pin_log` VALUES ('ba8576ea-8f21-773c-d5ce-4a0af00c8743', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2003-01-11 02:40:25', '{\"x\": \"7227\", \"y\": \"4867\"}', 'caadddfb-967a-3b50-d5ca-a338a89f50e0');
INSERT INTO `microchip_pin_log` VALUES ('bad504b8-2448-0823-5b08-a16be872b9f4', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2009-06-22 18:19:57', '{\"x\": \"5631\", \"y\": \"2267\"}', '07f0ece8-3116-6296-4413-16e59504a4c8');
INSERT INTO `microchip_pin_log` VALUES ('baefe952-25f0-67e3-fb70-d89e46abd95c', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2014-03-25 20:57:58', '{\"x\": \"8745\", \"y\": \"6488\"}', '9ca5e883-bb17-0a6e-d191-82371c627114');
INSERT INTO `microchip_pin_log` VALUES ('bb347cb1-4f94-4b2a-71bf-257e833361d4', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2014-12-05 07:24:37', '{\"x\": \"8283\", \"y\": \"9011\"}', '4209da5c-d493-9566-5d83-e44dd541dc20');
INSERT INTO `microchip_pin_log` VALUES ('bb389509-ac8f-e0d1-df86-21ae1a026ae7', '0.97', '48', '0.93', 2, 'notpin', 1, 'notpin', '2020-12-16 10:00:07', '{\"x\": \"3011\", \"y\": \"3323\"}', '3a2193bd-9df3-bb5b-bedd-d4e2fd201099');
INSERT INTO `microchip_pin_log` VALUES ('bb5bcc26-d650-885c-4166-865316af5604', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2013-03-22 22:48:16', '{\"x\": \"6946\", \"y\": \"6336\"}', '6ff3fdc4-a6b1-8577-2d2f-a08844fe2f26');
INSERT INTO `microchip_pin_log` VALUES ('bbc1d637-fc26-2ea6-0128-82188980c803', '0.97', '48', '0.98', 2, 'notpin', 1, 'pin', '2019-11-27 14:01:34', '{\"x\": \"5919\", \"y\": \"2916\"}', 'fd40d8da-8f68-1dab-27de-d58c28392813');
INSERT INTO `microchip_pin_log` VALUES ('bbd08937-0b93-7929-4bf5-73d2c0c2a1cb', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2001-04-23 12:42:19', '{\"x\": \"4010\", \"y\": \"8429\"}', 'fb4e130a-93e7-0353-5b9d-c167e90d2c7e');
INSERT INTO `microchip_pin_log` VALUES ('bc3db71d-4af5-46c9-080f-eb7dcf3f9a10', '0.97', '48', '0.99', 1, 'notpin', 1, 'notpin', '2001-09-04 11:08:14', '{\"x\": \"2890\", \"y\": \"7558\"}', '69d5e4f3-b203-0ceb-e11b-fd28b4249686');
INSERT INTO `microchip_pin_log` VALUES ('bc410373-c0d0-1c5d-aaa8-209a4106afd5', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2022-11-01 08:36:15', '{\"x\": \"2671\", \"y\": \"6996\"}', 'fc5c176f-805e-ee61-dc97-dda29ffe2e03');
INSERT INTO `microchip_pin_log` VALUES ('bc42a9c7-4168-5693-7c53-051085678872', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2002-06-27 09:17:49', '{\"x\": \"3858\", \"y\": \"1678\"}', 'a6ecc401-42f5-5535-673b-1c43acf7d165');
INSERT INTO `microchip_pin_log` VALUES ('bc4cfefc-48a5-1d93-a80e-95258f517e15', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2000-12-16 12:37:40', '{\"x\": \"2762\", \"y\": \"4506\"}', 'e96ca64b-0334-0e64-cefd-08ec1cb603fb');
INSERT INTO `microchip_pin_log` VALUES ('bc97b9a5-34df-6fbd-538c-4d4ba0046dce', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2003-02-18 13:22:20', '{\"x\": \"3376\", \"y\": \"3415\"}', '2d29a20f-3196-7d1d-7eee-3bb79888a0af');
INSERT INTO `microchip_pin_log` VALUES ('bcc73126-4906-a70e-325c-8f742df8738c', '0.80', '48', '0.94', 2, 'notpin', 1, 'pin', '2014-08-17 09:01:04', '{\"x\": \"7017\", \"y\": \"2729\"}', 'a0c3af1f-bf3f-4de9-f176-d6c4931c2ec1');
INSERT INTO `microchip_pin_log` VALUES ('bcfadcea-01ca-23ae-25b4-91b1d3d53b23', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2009-01-05 02:55:55', '{\"x\": \"6220\", \"y\": \"7344\"}', '2b53ffe8-eb9a-fd95-4209-56bd538d82e2');
INSERT INTO `microchip_pin_log` VALUES ('bd26c0f1-f1eb-949f-dfc3-f616947d307a', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2010-07-16 16:35:53', '{\"x\": \"0375\", \"y\": \"1090\"}', 'f7bb0a60-08fb-c790-a861-3d3e51a53978');
INSERT INTO `microchip_pin_log` VALUES ('bd31fcb8-6638-b24f-9ff0-6fd550124981', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2014-03-15 04:52:07', '{\"x\": \"3542\", \"y\": \"3115\"}', 'e0bf808e-fc1a-6afb-aaf4-912eb61c9175');
INSERT INTO `microchip_pin_log` VALUES ('bd3d52e7-47ba-60a0-84fd-c9b6bbd79de3', '0.97', '48', '0.92', 2, 'pin', 1, 'notpin', '2000-03-19 20:43:45', '{\"x\": \"7396\", \"y\": \"1557\"}', '92038a15-3ff1-1ce6-4d78-6a904438cd46');
INSERT INTO `microchip_pin_log` VALUES ('bdf1842b-60f6-65fe-0317-684f8ba5a561', '0.97', '48', '0.98', 1, 'notpin', 1, 'pin', '2022-05-25 01:11:30', '{\"x\": \"6951\", \"y\": \"3980\"}', 'df3aa329-f38c-77f8-1183-76ce86e00771');
INSERT INTO `microchip_pin_log` VALUES ('bdfab57a-11a0-2334-7a05-914ec3c38990', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2017-03-27 07:22:40', '{\"x\": \"1410\", \"y\": \"2813\"}', '5b6b0059-21ee-01c0-05a3-8de1846810c0');
INSERT INTO `microchip_pin_log` VALUES ('bdffaf8b-dadc-c28c-069d-5f0df532996f', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2009-12-29 23:30:01', '{\"x\": \"9517\", \"y\": \"1721\"}', 'a9554b60-1b91-5d44-f5c6-c4a9d4a100f4');
INSERT INTO `microchip_pin_log` VALUES ('be1faa2f-bfb7-689f-9e54-b73fe5d26fc9', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2017-07-01 08:50:50', '{\"x\": \"5857\", \"y\": \"9160\"}', '9ec590c0-c18b-180c-47df-9396fbb88951');
INSERT INTO `microchip_pin_log` VALUES ('be4810f0-1dff-ca35-5f5f-1d3806d32a41', '0.97', '48', '0.97', 1, 'pin', 1, 'pin', '2022-06-18 06:22:15', '{\"x\": \"8087\", \"y\": \"2883\"}', '1db5c911-71bb-8a84-5a8f-8dc496e4199b');
INSERT INTO `microchip_pin_log` VALUES ('be74e9c4-2c1b-a979-4955-05243391dff5', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2020-02-14 16:31:05', '{\"x\": \"7337\", \"y\": \"4914\"}', 'c4411074-738c-46d6-91c6-62dbeaadb116');
INSERT INTO `microchip_pin_log` VALUES ('bf04585d-1f2b-accf-31d2-d4cf0ce71d9c', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2016-08-11 14:10:01', '{\"x\": \"7174\", \"y\": \"2107\"}', '3a07ce53-2fd9-0870-21fe-66316aa550f7');
INSERT INTO `microchip_pin_log` VALUES ('bf5fa045-0d51-ba27-a070-33fd91f5add3', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2017-08-16 23:27:30', '{\"x\": \"9439\", \"y\": \"5476\"}', '7d8169e6-29b6-375c-d203-6fc4c7d955ae');
INSERT INTO `microchip_pin_log` VALUES ('bf637024-fe91-8168-3f0a-6b73668bf3d2', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2001-08-19 04:57:19', '{\"x\": \"7286\", \"y\": \"7609\"}', '4e21d426-6a54-21a0-de86-067683a38e9b');
INSERT INTO `microchip_pin_log` VALUES ('bf6bc7ef-fa9e-4d33-bc91-7cd4b22e3b1a', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2013-04-23 20:01:21', '{\"x\": \"4366\", \"y\": \"0651\"}', '795f70f5-9398-5a7a-f23b-69badb2f9968');
INSERT INTO `microchip_pin_log` VALUES ('bf9d9325-9ab5-0661-adff-3de9224a76a2', '0.97', '48', '0.91', 2, 'pin', 1, 'notpin', '2011-12-02 13:05:57', '{\"x\": \"6380\", \"y\": \"2651\"}', 'e26a2277-1d45-bf4b-f3ff-f4fa071d8692');
INSERT INTO `microchip_pin_log` VALUES ('c01415eb-fef8-222d-6b88-1b59e468b49d', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2015-07-10 08:28:54', '{\"x\": \"9154\", \"y\": \"6020\"}', '9024c63d-f9a7-54e8-6f88-0dd3cfd717a0');
INSERT INTO `microchip_pin_log` VALUES ('c0a97f4c-6184-575b-e84d-f0131068d34e', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2007-12-31 15:18:22', '{\"x\": \"8182\", \"y\": \"4736\"}', '09ad1622-9dd6-edbd-8c99-c52f0d4ccd93');
INSERT INTO `microchip_pin_log` VALUES ('c0cd45be-2841-4b64-94cf-ef025b074886', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2016-07-21 12:30:32', '{\"x\": \"2981\", \"y\": \"4572\"}', 'd567ff59-ac54-ab06-9d58-a8a5901a9811');
INSERT INTO `microchip_pin_log` VALUES ('c0dd482f-8a5d-d920-0ce5-af419b55ceef', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2014-08-08 11:26:43', '{\"x\": \"0965\", \"y\": \"0731\"}', '147f4831-b26c-ee7a-0791-d5ddc30cdfa7');
INSERT INTO `microchip_pin_log` VALUES ('c0ff4371-1314-eb71-9d7b-35d74ae316c8', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2021-08-22 14:26:51', '{\"x\": \"7527\", \"y\": \"7339\"}', '483d0fbe-0a24-80a6-a64c-04ae6a79988f');
INSERT INTO `microchip_pin_log` VALUES ('c15d8869-fa3f-5e0f-5ff0-0a9dd75f653c', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2019-11-07 17:36:24', '{\"x\": \"7345\", \"y\": \"8313\"}', '2c3d010e-12f0-7486-b853-59686ad9db34');
INSERT INTO `microchip_pin_log` VALUES ('c199939c-0d8a-8b66-1b39-d0c6f858aa20', '0.54', '48', '0.99', 1, 'notpin', 1, 'notpin', '2014-09-30 22:37:32', '{\"x\": \"2207\", \"y\": \"1084\"}', '72a30e97-7160-d551-f7ef-9680dab2e1b5');
INSERT INTO `microchip_pin_log` VALUES ('c202ced5-bb1f-6c10-4711-d11201a47a7a', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2005-06-22 05:28:57', '{\"x\": \"2376\", \"y\": \"5997\"}', 'd598dfe7-b43c-4593-922e-3ed09aaa6c9e');
INSERT INTO `microchip_pin_log` VALUES ('c20bbbdd-df3a-05fd-9ef8-2a048b44d895', '0.51', '48', '0.99', 1, 'pin', 1, 'notpin', '2001-07-24 16:14:00', '{\"x\": \"8762\", \"y\": \"0079\"}', 'e6e3fa95-6d37-39e4-199b-82f47ab71769');
INSERT INTO `microchip_pin_log` VALUES ('c258c42d-f90d-55ad-51f0-6a34968a14dd', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2006-01-19 06:28:40', '{\"x\": \"4134\", \"y\": \"6480\"}', '8ffcdfba-53a7-0332-030a-d0d35c266073');
INSERT INTO `microchip_pin_log` VALUES ('c49546e1-5d68-c62a-cf10-ddaf2601389f', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2001-08-26 06:30:16', '{\"x\": \"8442\", \"y\": \"6755\"}', 'f9f28434-2bfb-c8da-b58a-e9d7d0382a49');
INSERT INTO `microchip_pin_log` VALUES ('c4ea1979-ea71-c18e-4cf2-10a5b3d2bc71', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2013-12-14 18:01:06', '{\"x\": \"8226\", \"y\": \"4958\"}', 'c42eb726-0188-1764-c93e-a269d0cb1d44');
INSERT INTO `microchip_pin_log` VALUES ('c4eef7d3-c068-c7fd-2188-5b2c83a2089f', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2012-12-13 20:45:31', '{\"x\": \"3771\", \"y\": \"9117\"}', '0eda23d3-45bb-344a-13cc-0988eb3c14d6');
INSERT INTO `microchip_pin_log` VALUES ('c6058ea5-1b2c-d1b9-9709-b3c20eaf7eb9', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2019-01-02 14:20:49', '{\"x\": \"9650\", \"y\": \"3176\"}', '3449332c-460a-1aa3-7e74-a6cfc71d42bb');
INSERT INTO `microchip_pin_log` VALUES ('c61fabb4-f8ba-1480-8319-1f530cfe974b', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2017-01-05 15:46:17', '{\"x\": \"9380\", \"y\": \"7132\"}', '6039b856-5742-4d7a-8586-a801d0ff91d0');
INSERT INTO `microchip_pin_log` VALUES ('c669b5e5-4958-a4e5-f53a-2fb958175a89', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2009-12-29 08:17:22', '{\"x\": \"9658\", \"y\": \"8994\"}', '77d98283-f00a-d13e-df63-007868be623f');
INSERT INTO `microchip_pin_log` VALUES ('c6f351d6-5d33-70eb-9772-538121eb3f54', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2011-01-08 21:12:02', '{\"x\": \"8710\", \"y\": \"8859\"}', '6ab22971-1c3a-0727-608d-e74be7e84462');
INSERT INTO `microchip_pin_log` VALUES ('c723390d-fb57-e7e2-87f4-c38074271d0a', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2010-08-27 01:23:39', '{\"x\": \"9058\", \"y\": \"1721\"}', '6ef62da2-8492-5725-f261-3268239eb80c');
INSERT INTO `microchip_pin_log` VALUES ('c7449fd2-2cb9-ccab-5b09-824b04b7fb12', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2015-08-11 13:37:38', '{\"x\": \"3988\", \"y\": \"7814\"}', '90c61d09-9187-cd9b-f3d9-c83f8b015e5f');
INSERT INTO `microchip_pin_log` VALUES ('c77b90fb-bdfe-511c-b455-0fe8d3aad4a5', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2002-12-09 03:12:00', '{\"x\": \"5320\", \"y\": \"4043\"}', 'ec724613-1b10-c3fc-f0c7-4f777762412d');
INSERT INTO `microchip_pin_log` VALUES ('c7946692-b39c-24c8-aa55-6d2004a7b21b', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2019-08-22 14:40:13', '{\"x\": \"2625\", \"y\": \"3349\"}', '11c2ac6a-ad6d-a9d1-694b-db9d2a5ae67f');
INSERT INTO `microchip_pin_log` VALUES ('c79bcf78-342f-062a-3aa4-f3e36ab65fbc', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2019-07-01 14:33:58', '{\"x\": \"9065\", \"y\": \"5560\"}', 'cb1baa1b-9914-66c7-cfe6-739aaea58d52');
INSERT INTO `microchip_pin_log` VALUES ('c7bc1734-55d7-21fc-6e59-4b05568633d2', '0.97', '48', '0.99', 2, 'notpin', 1, 'pin', '2015-10-16 15:46:49', '{\"x\": \"4355\", \"y\": \"7031\"}', '25aef779-cb77-9784-e3f3-a6677054b956');
INSERT INTO `microchip_pin_log` VALUES ('c7d22bae-57ef-5f7a-83a5-1e1485be4da8', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2008-10-21 18:45:29', '{\"x\": \"4588\", \"y\": \"2674\"}', '495c4141-27df-d425-b21d-9c15528e8798');
INSERT INTO `microchip_pin_log` VALUES ('c872b5cd-79ad-1b09-ae17-b88e0114cb43', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2009-10-03 16:10:57', '{\"x\": \"2409\", \"y\": \"8091\"}', '6244f135-0a91-fff7-f4f8-efa6e8598d55');
INSERT INTO `microchip_pin_log` VALUES ('c87cd23b-80dd-cc52-ded4-ccdbb6fc1239', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2002-03-08 09:12:03', '{\"x\": \"0947\", \"y\": \"1948\"}', '6ba5a332-e5ea-1d9f-50b0-a1178abfd9d4');
INSERT INTO `microchip_pin_log` VALUES ('c896406f-16c3-9582-d89e-08a62e890a4a', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2010-03-16 08:27:04', '{\"x\": \"9960\", \"y\": \"5442\"}', 'd100e88e-c5e8-a682-e5cc-d12aec93a76c');
INSERT INTO `microchip_pin_log` VALUES ('c8bde80a-a817-456b-05d4-1c6c539472e2', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2020-02-17 01:10:49', '{\"x\": \"6630\", \"y\": \"9142\"}', '2e4c24a9-8962-11e3-0ca7-7a8c4506b760');
INSERT INTO `microchip_pin_log` VALUES ('c8f80302-fa38-7219-127f-aea8138e81ff', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2008-02-06 13:48:40', '{\"x\": \"8183\", \"y\": \"0166\"}', '4833609b-cfb0-807b-6d66-f471ac4cff05');
INSERT INTO `microchip_pin_log` VALUES ('c92b6abe-4271-75d2-78e0-33dbc6b4aeee', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2014-02-20 08:47:29', '{\"x\": \"3236\", \"y\": \"4455\"}', '450b765b-89c5-5a6c-ac8b-b2ecf4b5d2b4');
INSERT INTO `microchip_pin_log` VALUES ('c9593c95-545a-dfd2-3057-7c8aa8e54416', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2016-01-24 08:53:22', '{\"x\": \"6891\", \"y\": \"0360\"}', '2106002c-1ee3-8589-7e0e-f541b1c6ecf5');
INSERT INTO `microchip_pin_log` VALUES ('c96800c3-52d2-aa24-44d4-5c9dbee453f1', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2003-06-02 23:59:56', '{\"x\": \"2361\", \"y\": \"9342\"}', 'b583dc18-0d22-a555-1a9b-90cb5c30934b');
INSERT INTO `microchip_pin_log` VALUES ('c99b6d6b-c0b9-c004-c7ca-10ba83d22aa2', '0.97', '38', '0.94', 1, 'notpin', 1, 'pin', '2006-05-10 18:52:01', '{\"x\": \"1429\", \"y\": \"6903\"}', 'a6fe856f-f9e4-37b1-bc80-193f26248034');
INSERT INTO `microchip_pin_log` VALUES ('c9f7268b-385e-ec6a-bb21-f0e89e5206e6', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2014-02-13 15:35:11', '{\"x\": \"0372\", \"y\": \"5683\"}', '3920bf3f-2316-b545-df11-d3ee6b26555c');
INSERT INTO `microchip_pin_log` VALUES ('ca0aeace-f833-4cde-125c-46856be0d2b3', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2005-04-14 03:31:29', '{\"x\": \"0783\", \"y\": \"4224\"}', 'ebc83891-ff14-280b-bb4e-43ea0e020cdd');
INSERT INTO `microchip_pin_log` VALUES ('ca33522c-1de4-d1a5-4780-e42789d72a37', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2021-10-12 11:08:32', '{\"x\": \"6195\", \"y\": \"6163\"}', '44920680-2093-aeb2-7e00-44b3916c1fa6');
INSERT INTO `microchip_pin_log` VALUES ('ca6c0c3d-2f70-47c1-ef9a-94cdc6fc43a9', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2019-08-10 11:07:03', '{\"x\": \"4299\", \"y\": \"5715\"}', 'ac3615b2-091a-85f1-227d-021e829457fc');
INSERT INTO `microchip_pin_log` VALUES ('ca814d6f-c38f-3154-5120-9dd6b94a0ea0', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2021-03-27 01:46:34', '{\"x\": \"7727\", \"y\": \"6015\"}', 'cba64e78-3de6-b426-dd16-24a697d91f35');
INSERT INTO `microchip_pin_log` VALUES ('ca9431bb-3dd2-4c33-8c8f-f0fcf1980a98', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2005-05-07 11:21:58', '{\"x\": \"5572\", \"y\": \"3967\"}', 'e807417c-57c3-1c0d-8b0e-8c6f6b6ec716');
INSERT INTO `microchip_pin_log` VALUES ('caa1461a-d343-4e7a-903b-19a095972ba2', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2002-06-27 19:15:28', '{\"x\": \"9073\", \"y\": \"8003\"}', '8eeb76b9-a45c-a084-84aa-6d389c9f77f6');
INSERT INTO `microchip_pin_log` VALUES ('caca9252-cd7b-1c73-15f2-4e2ee7024507', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2010-04-25 23:07:10', '{\"x\": \"1084\", \"y\": \"9828\"}', '624cdaa5-fdde-9cab-078a-fa0bb91c9645');
INSERT INTO `microchip_pin_log` VALUES ('cacf81c3-27a2-f362-7c2d-58c03c029950', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2000-04-20 12:41:27', '{\"x\": \"4722\", \"y\": \"1284\"}', '9123e5d1-a2be-3376-e521-28e1dde2387e');
INSERT INTO `microchip_pin_log` VALUES ('cad43292-7d88-7617-660b-214cf420c4fd', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2022-03-17 07:56:38', '{\"x\": \"4848\", \"y\": \"5632\"}', 'a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf');
INSERT INTO `microchip_pin_log` VALUES ('cad6d5cf-ff5c-d90e-f237-7402e0c11106', '0.97', '48', '0.97', 2, 'pin', 1, 'pin', '2002-05-07 11:55:43', '{\"x\": \"7924\", \"y\": \"3269\"}', 'd100e88e-c5e8-a682-e5cc-d12aec93a76c');
INSERT INTO `microchip_pin_log` VALUES ('cada8376-9924-abe3-a308-5bc5da74bd49', '0.75', '48', '0.97', 1, 'pin', 1, 'notpin', '2010-11-16 05:33:56', '{\"x\": \"7598\", \"y\": \"6919\"}', 'f0252365-fa4f-8fdb-0601-077e11c1ee62');
INSERT INTO `microchip_pin_log` VALUES ('cae5e737-951b-26d4-5acb-06e01fae19bd', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2020-10-10 03:44:23', '{\"x\": \"2071\", \"y\": \"0296\"}', '9dfefae6-f58b-0bcb-7238-ce7556d930da');
INSERT INTO `microchip_pin_log` VALUES ('cb7b3671-74ce-9ef8-eebe-4a1f28135e99', '0.39', '48', '0.91', 1, 'notpin', 1, 'notpin', '2005-12-01 21:16:19', '{\"x\": \"8690\", \"y\": \"0745\"}', 'f19c5790-8fbb-d20a-20db-883a19ecdd40');
INSERT INTO `microchip_pin_log` VALUES ('cbdf5983-a1a9-094b-b6ff-594605b20c20', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2001-12-06 18:42:26', '{\"x\": \"0449\", \"y\": \"2044\"}', '2f0f6668-607a-99fd-b24e-2a582297a49a');
INSERT INTO `microchip_pin_log` VALUES ('cbe8fe79-06ae-b347-0b15-99f4dffa47f4', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2012-10-21 16:34:40', '{\"x\": \"7694\", \"y\": \"8403\"}', '974632cb-85a6-4ad7-b978-6379087d23df');
INSERT INTO `microchip_pin_log` VALUES ('cbfe4905-3737-9318-aa2b-4f94c4969ba8', '0.97', '48', '0.98', 1, 'pin', 1, 'notpin', '2021-05-20 19:19:14', '{\"x\": \"9615\", \"y\": \"0392\"}', '46f37862-7a80-2ab1-3b15-f8993087a780');
INSERT INTO `microchip_pin_log` VALUES ('cc333265-7103-89b8-d80f-0e1dbf242885', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2013-10-07 04:08:36', '{\"x\": \"4397\", \"y\": \"2779\"}', 'a7207613-c501-6e21-2519-61a184020212');
INSERT INTO `microchip_pin_log` VALUES ('cc5e8488-c705-f9e0-0bd4-a7910ca1b1cf', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2019-10-27 22:35:03', '{\"x\": \"2944\", \"y\": \"7136\"}', 'a9ec210c-3933-cc42-73ab-e68463696d98');
INSERT INTO `microchip_pin_log` VALUES ('cc7dc3d0-d353-5890-7687-02af89b1c491', '0.22', '48', '0.92', 1, 'pin', 1, 'notpin', '2018-06-16 02:40:14', '{\"x\": \"0533\", \"y\": \"9307\"}', 'bf9b872b-e3bb-e04e-4d8d-5eaeeedfcf6f');
INSERT INTO `microchip_pin_log` VALUES ('ccc66c57-21d2-6450-e9f3-7fe9db0dd43d', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2001-10-24 19:05:32', '{\"x\": \"0810\", \"y\": \"4306\"}', 'c97e8a2a-02c0-c3d5-c502-3588debc3e22');
INSERT INTO `microchip_pin_log` VALUES ('ccd56c1f-19d0-3c29-717b-1833a95ab6e8', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2018-10-21 09:00:19', '{\"x\": \"0416\", \"y\": \"4677\"}', '9794c064-8955-5763-f9f6-54049bc969f0');
INSERT INTO `microchip_pin_log` VALUES ('cd21de5c-1df7-431a-c9dd-4a17723d9050', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2017-10-24 08:16:01', '{\"x\": \"2535\", \"y\": \"0332\"}', '6cf7726f-b6ed-4124-b796-4f32a0015706');
INSERT INTO `microchip_pin_log` VALUES ('cd5b58e1-8371-5d9c-6473-7f7c3135ce01', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2021-06-23 09:43:32', '{\"x\": \"2876\", \"y\": \"9462\"}', '56d8d1b9-c476-5c46-4929-6116c9f87d3e');
INSERT INTO `microchip_pin_log` VALUES ('cdaa8958-8083-6be0-54d0-78156b60fdb8', '0.97', '48', '0.90', 2, 'pin', 1, 'pin', '2020-04-27 10:04:37', '{\"x\": \"9426\", \"y\": \"5156\"}', 'e98d040a-c57a-9ee5-67aa-2fbf202617e7');
INSERT INTO `microchip_pin_log` VALUES ('cdb2640b-402f-3f2f-d3b7-ef012f92726f', '0.97', '48', '0.93', 2, 'pin', 1, 'notpin', '2006-06-19 22:12:03', '{\"x\": \"7992\", \"y\": \"3449\"}', 'ed24b193-ccf5-ade1-3e95-d6910f312104');
INSERT INTO `microchip_pin_log` VALUES ('cdde85f6-06aa-0062-c49d-8d8cafb194f9', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2000-06-27 04:53:00', '{\"x\": \"2571\", \"y\": \"1530\"}', '2ccb6b14-9e0b-ffee-2a7f-0abee483bbbc');
INSERT INTO `microchip_pin_log` VALUES ('cdebc110-eb98-df0f-3de6-af1bfec79d51', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2007-04-24 01:52:31', '{\"x\": \"9881\", \"y\": \"2344\"}', 'ed24b193-ccf5-ade1-3e95-d6910f312104');
INSERT INTO `microchip_pin_log` VALUES ('ce260931-0551-fd95-854a-1ec77b5ba6c3', '0.97', '48', '0.98', 1, 'notpin', 1, 'pin', '2019-10-31 16:06:29', '{\"x\": \"1288\", \"y\": \"8215\"}', 'd029eb24-82c4-c8cc-ac5c-db003b755380');
INSERT INTO `microchip_pin_log` VALUES ('cebdaf7e-e62d-ad61-6db4-435c80fe42eb', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2004-04-05 20:12:15', '{\"x\": \"2597\", \"y\": \"3354\"}', '56220e03-88d9-00a4-1b47-61382b8270eb');
INSERT INTO `microchip_pin_log` VALUES ('ceeeb497-9f7f-048c-dad2-b207f00684cb', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2009-04-30 07:37:29', '{\"x\": \"4687\", \"y\": \"7550\"}', 'e7dc5e44-e09d-fce8-d801-e5cda354c1f0');
INSERT INTO `microchip_pin_log` VALUES ('cf0a311e-5805-b288-ca17-32e3a932190d', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2013-05-29 13:12:19', '{\"x\": \"1329\", \"y\": \"4381\"}', '73e54e8c-4241-1a27-5711-f04dd0f26245');
INSERT INTO `microchip_pin_log` VALUES ('cf12e6a5-72b0-b063-ccb5-bfcd511ce3e8', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2014-12-01 15:20:44', '{\"x\": \"4324\", \"y\": \"0687\"}', '6cf7726f-b6ed-4124-b796-4f32a0015706');
INSERT INTO `microchip_pin_log` VALUES ('cfe57bcf-8ee1-2b9b-3e2c-40464bbfc6a4', '0.97', '48', '0.99', 2, 'pin', 1, 'pin', '2018-07-19 14:30:32', '{\"x\": \"6429\", \"y\": \"7168\"}', '5d9e02cd-a7b2-fbc9-ebc2-505595a7adb4');
INSERT INTO `microchip_pin_log` VALUES ('d0027443-3f0c-046d-0b56-41b17454bac7', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2021-12-17 06:05:17', '{\"x\": \"7768\", \"y\": \"9323\"}', 'f32ae703-e50e-cd33-a36d-91356e916deb');
INSERT INTO `microchip_pin_log` VALUES ('d02f586d-68a3-e732-fc5f-c93dd8dc9923', '0.69', '48', '0.96', 2, 'pin', 1, 'notpin', '2011-04-22 23:50:45', '{\"x\": \"6611\", \"y\": \"1915\"}', 'adb1fb29-ac80-4ccb-b6ec-53744d647ad0');
INSERT INTO `microchip_pin_log` VALUES ('d0a64be0-5b84-909e-22d6-eddbf7c4435b', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2011-06-15 14:15:04', '{\"x\": \"6552\", \"y\": \"4638\"}', '0edaa062-e903-f7bb-7842-e2327315883e');
INSERT INTO `microchip_pin_log` VALUES ('d18cbdaf-7594-f50c-41f9-1f0cab0a3968', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2002-02-08 15:29:30', '{\"x\": \"3655\", \"y\": \"8001\"}', 'b6f35d45-b81e-74bd-70e9-661ef6802dd2');
INSERT INTO `microchip_pin_log` VALUES ('d29b570b-3f47-9787-ab19-d6b9f026a3cb', '0.97', '48', '0.96', 1, 'pin', 1, 'notpin', '2021-05-22 07:46:19', '{\"x\": \"5068\", \"y\": \"5901\"}', '4897bf24-0a26-41cc-8c27-c906c2ca2ebf');
INSERT INTO `microchip_pin_log` VALUES ('d3663a25-f56c-688b-5d0e-e97bccd70ee4', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2007-09-04 02:11:33', '{\"x\": \"3465\", \"y\": \"9760\"}', '3c532a9b-e920-a09e-dfc2-4cc5b7087e31');
INSERT INTO `microchip_pin_log` VALUES ('d384d713-722c-27f2-6bf1-5326c2c78e2e', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2011-08-02 06:10:09', '{\"x\": \"2004\", \"y\": \"0161\"}', '8ffcdfba-53a7-0332-030a-d0d35c266073');
INSERT INTO `microchip_pin_log` VALUES ('d3b6c22d-555e-8ccd-41c9-1747ee058626', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2015-12-29 10:19:24', '{\"x\": \"5010\", \"y\": \"7674\"}', '5875468d-74a9-abf5-8da9-2b483dfcd997');
INSERT INTO `microchip_pin_log` VALUES ('d3d721ab-acba-60aa-c948-db5a7b6bf644', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2020-08-21 20:43:28', '{\"x\": \"1267\", \"y\": \"7557\"}', '2b53ffe8-eb9a-fd95-4209-56bd538d82e2');
INSERT INTO `microchip_pin_log` VALUES ('d4077935-4a28-a97e-190e-c47b06d9d0f6', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2002-12-11 16:44:49', '{\"x\": \"3404\", \"y\": \"5475\"}', '7a19ec14-8d7e-599f-9f3d-4cc34bca1766');
INSERT INTO `microchip_pin_log` VALUES ('d439c6cb-a0b5-a699-4277-66f171371a91', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2013-07-27 18:13:03', '{\"x\": \"5028\", \"y\": \"8428\"}', 'fe2a439e-c23c-d575-3b7e-18c3ad53f54d');
INSERT INTO `microchip_pin_log` VALUES ('d46ae768-3ca5-c790-ba3d-a2ba1e7380a7', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2013-12-29 23:36:00', '{\"x\": \"0564\", \"y\": \"6666\"}', '461a530b-14ca-05d3-6e2a-dad697c434d9');
INSERT INTO `microchip_pin_log` VALUES ('d496ac11-fe47-1b00-e2cf-d3f54da263b0', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2012-02-19 04:48:19', '{\"x\": \"9359\", \"y\": \"1486\"}', '9888ad89-d269-c14b-7b5e-0932447e4c78');
INSERT INTO `microchip_pin_log` VALUES ('d49deec8-52d2-afb6-c398-48c8bc844df1', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2010-03-31 13:49:04', '{\"x\": \"2930\", \"y\": \"5456\"}', '7076b511-45d9-62ef-6432-453bd7b93a0f');
INSERT INTO `microchip_pin_log` VALUES ('d49ff6ac-3e42-137b-859d-9f0805140f41', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2019-02-03 05:38:02', '{\"x\": \"3263\", \"y\": \"5654\"}', '72a30e97-7160-d551-f7ef-9680dab2e1b5');
INSERT INTO `microchip_pin_log` VALUES ('d5083df4-3237-8a4f-f4d5-ddd6acb0bd63', '0.25', '48', '0.90', 1, 'pin', 1, 'pin', '2017-09-29 02:02:51', '{\"x\": \"7822\", \"y\": \"7416\"}', 'c1a572a8-4623-45c6-0065-a1a61e2df592');
INSERT INTO `microchip_pin_log` VALUES ('d50c2011-dc8f-bbb2-4020-1ae9aa93239c', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2010-08-16 20:45:16', '{\"x\": \"4687\", \"y\": \"1880\"}', '24be7b9a-056a-834d-05b8-1ecef1a3205c');
INSERT INTO `microchip_pin_log` VALUES ('d52cd6ce-1a1d-a093-891e-f496f48f9981', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2017-09-24 05:28:25', '{\"x\": \"1459\", \"y\": \"4161\"}', '342fe3aa-ed5b-0b13-569c-976050a54b92');
INSERT INTO `microchip_pin_log` VALUES ('d52d9f02-5fc0-5c6d-bfa8-5e2a8d373b4b', '0.97', '48', '0.99', 1, 'pin', 1, 'notpin', '2008-11-11 09:58:07', '{\"x\": \"0992\", \"y\": \"0922\"}', 'ac7b8d34-4c4d-1d2e-1a3c-ba9b993fd46f');
INSERT INTO `microchip_pin_log` VALUES ('d557e471-3158-5d20-b529-8afa707ef5bb', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2000-11-01 19:58:25', '{\"x\": \"7180\", \"y\": \"5037\"}', '0ff4e68a-42b3-4cf9-8b14-1b6292ac3431');
INSERT INTO `microchip_pin_log` VALUES ('d5a29a74-f97f-1e6c-2bc2-be7dd9d0eb89', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2022-09-01 09:29:49', '{\"x\": \"1416\", \"y\": \"8188\"}', '3ac32d0c-4fa3-4276-6258-ba39c6e13c4a');
INSERT INTO `microchip_pin_log` VALUES ('d5abaa7b-31e4-1e22-2d61-57c325996732', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2013-05-27 06:55:10', '{\"x\": \"2133\", \"y\": \"4754\"}', '57d9294f-217f-4511-96f8-ad72634abfdf');
INSERT INTO `microchip_pin_log` VALUES ('d5c4c499-3124-d8db-411c-ba21571bb697', '0.97', '48', '0.98', 2, 'notpin', 1, 'pin', '2013-06-02 03:52:55', '{\"x\": \"0225\", \"y\": \"8125\"}', 'cfadff5f-6df9-e33d-5071-9f7b247739ee');
INSERT INTO `microchip_pin_log` VALUES ('d61cb901-f8aa-35fa-3586-42d0abfb1377', '0.97', '48', '0.95', 1, 'pin', 1, 'pin', '2013-10-02 03:12:14', '{\"x\": \"1290\", \"y\": \"0809\"}', 'da4ba219-9fa7-9a73-02bb-b79ea5442819');
INSERT INTO `microchip_pin_log` VALUES ('d62a0a20-d7ac-704b-6e3e-c336700e5505', '0.09', '48', '0.99', 1, 'notpin', 1, 'pin', '2015-10-23 03:43:36', '{\"x\": \"8780\", \"y\": \"9320\"}', 'dc95076f-128c-6818-8425-9120741b1d0c');
INSERT INTO `microchip_pin_log` VALUES ('d634d219-483a-fb29-7380-a225d758b042', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2017-09-13 16:38:48', '{\"x\": \"8007\", \"y\": \"5247\"}', '51c589b1-b30e-6b41-6ce2-6f6255afe9ed');
INSERT INTO `microchip_pin_log` VALUES ('d638e766-911b-5b3b-d126-87e0b51a0868', '0.07', '48', '0.98', 2, 'notpin', 1, 'notpin', '2015-01-11 21:45:53', '{\"x\": \"7226\", \"y\": \"6212\"}', '2b53ffe8-eb9a-fd95-4209-56bd538d82e2');
INSERT INTO `microchip_pin_log` VALUES ('d66cce2d-3f09-3eaa-1941-ed5feaba4516', '0.10', '48', '0.95', 2, 'notpin', 1, 'pin', '2001-05-21 07:53:57', '{\"x\": \"3497\", \"y\": \"7290\"}', 'c9c030dc-0f5f-a42e-e51f-68cf6451fcd3');
INSERT INTO `microchip_pin_log` VALUES ('d69958b2-f0cf-2df3-fe05-7b906c718635', '0.97', '48', '0.93', 1, 'notpin', 1, 'notpin', '2005-08-15 18:08:21', '{\"x\": \"4462\", \"y\": \"7561\"}', '3f8ca183-5012-b80e-a0d6-66de4dba634a');
INSERT INTO `microchip_pin_log` VALUES ('d6c0e42f-2efe-f20d-059b-9f6358c1591f', '0.97', '48', '0.90', 1, 'notpin', 1, 'pin', '2021-03-17 23:42:17', '{\"x\": \"8970\", \"y\": \"8044\"}', '4b0efee6-0d14-0fa9-6a62-f1b167b2b512');
INSERT INTO `microchip_pin_log` VALUES ('d6c385ce-a671-ea6e-257f-f1356e539cbf', '0.97', '48', '0.90', 1, 'notpin', 1, 'pin', '2010-03-10 10:23:12', '{\"x\": \"8690\", \"y\": \"9011\"}', '6c2a7f5e-59e2-9d59-7918-41cf45f8cc78');
INSERT INTO `microchip_pin_log` VALUES ('d84327b5-ccc7-c3e2-c99d-43fdaca45ab3', '0.97', '48', '0.96', 2, 'pin', 1, 'notpin', '2015-11-04 00:44:26', '{\"x\": \"2752\", \"y\": \"6372\"}', '7d8169e6-29b6-375c-d203-6fc4c7d955ae');
INSERT INTO `microchip_pin_log` VALUES ('d84934b8-1596-a4d9-bd28-55d45158ab28', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2021-10-15 12:48:31', '{\"x\": \"5168\", \"y\": \"4558\"}', '45e95ffa-3f65-5a76-5ff0-01b3c4dd41c7');
INSERT INTO `microchip_pin_log` VALUES ('d85a4e73-df04-24d5-0433-91c733128ba4', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2008-06-29 08:30:03', '{\"x\": \"4571\", \"y\": \"9699\"}', '3a0d49b6-e2e3-5f70-2d9b-5f43dd69583f');
INSERT INTO `microchip_pin_log` VALUES ('d85adb15-91f5-c4e3-2f0b-3abb950bdbac', '0.68', '48', '0.92', 1, 'notpin', 1, 'notpin', '2006-11-08 02:18:51', '{\"x\": \"3926\", \"y\": \"1532\"}', '147f4831-b26c-ee7a-0791-d5ddc30cdfa7');
INSERT INTO `microchip_pin_log` VALUES ('d8926986-d1ca-eb73-44e4-a981295003d8', '0.70', '48', '0.95', 2, 'notpin', 1, 'notpin', '2015-10-05 23:07:49', '{\"x\": \"8071\", \"y\": \"2781\"}', 'c0652e8c-da3e-272a-bef3-c9253ed5af6b');
INSERT INTO `microchip_pin_log` VALUES ('d8b294b0-d437-7d60-65ff-af703df929b8', '0.97', '48', '0.93', 1, 'pin', 1, 'pin', '2003-09-10 11:42:37', '{\"x\": \"4840\", \"y\": \"0260\"}', '6a5f692a-4af9-d3c0-bc71-9965ab86f2c8');
INSERT INTO `microchip_pin_log` VALUES ('d96acb1a-49f2-d00d-c637-338bbf43e2c7', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2007-07-09 19:59:26', '{\"x\": \"0996\", \"y\": \"8442\"}', '393f0815-87cf-1a02-eb94-fcdec3cdee42');
INSERT INTO `microchip_pin_log` VALUES ('d9bb5e5c-7900-315c-6c58-469850b4751c', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2009-09-16 18:34:33', '{\"x\": \"2415\", \"y\": \"0239\"}', '54d6db16-23ad-7910-4926-e1845df958a8');
INSERT INTO `microchip_pin_log` VALUES ('d9e8d313-1d88-d776-02b2-860dc1d804b1', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2001-05-27 19:38:10', '{\"x\": \"4554\", \"y\": \"3386\"}', 'ad9e74e3-0ce1-c608-ce70-17d2c8ff7909');
INSERT INTO `microchip_pin_log` VALUES ('da0dda23-5aef-b09a-c409-d32532ee4888', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2021-06-25 20:36:25', '{\"x\": \"7687\", \"y\": \"1130\"}', 'ebc83891-ff14-280b-bb4e-43ea0e020cdd');
INSERT INTO `microchip_pin_log` VALUES ('da30d206-5aec-ca00-7c67-01feb64dc7d9', '0.69', '42', '0.90', 2, 'notpin', 1, 'notpin', '2019-08-17 06:36:12', '{\"x\": \"7813\", \"y\": \"4552\"}', 'b745edca-d233-754a-c752-ed8da609076c');
INSERT INTO `microchip_pin_log` VALUES ('da3f7a7c-fa0c-7c6e-c0c4-0a977889888d', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2019-09-29 06:03:02', '{\"x\": \"9348\", \"y\": \"1815\"}', '0cf40312-aff2-b316-7067-5847d68ed5c0');
INSERT INTO `microchip_pin_log` VALUES ('da4d6de6-09ec-668e-046a-db060bd49737', '0.97', '48', '0.91', 1, 'pin', 1, 'pin', '2005-09-18 13:11:21', '{\"x\": \"1865\", \"y\": \"8295\"}', 'a6fe856f-f9e4-37b1-bc80-193f26248034');
INSERT INTO `microchip_pin_log` VALUES ('da55a824-f9f7-6a3b-33bd-fac574dfa28f', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2019-12-21 01:04:31', '{\"x\": \"9517\", \"y\": \"3868\"}', 'f9f28434-2bfb-c8da-b58a-e9d7d0382a49');
INSERT INTO `microchip_pin_log` VALUES ('da701f7c-8be3-18cc-dee6-5019dd18abdb', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2022-10-04 12:05:13', '{\"x\": \"0418\", \"y\": \"9251\"}', 'a6ef07c9-e607-eb07-1ce3-8a5a036605d7');
INSERT INTO `microchip_pin_log` VALUES ('db8e8cbb-e8ca-d64d-e888-9c6cb7d40f5e', '0.97', '48', '0.98', 2, 'notpin', 1, 'pin', '2009-12-23 16:48:10', '{\"x\": \"3223\", \"y\": \"5696\"}', '90330f20-288f-13fa-c920-1df3c0f2f357');
INSERT INTO `microchip_pin_log` VALUES ('db911cb4-73da-f0b5-71f7-658ca6a54593', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2022-04-04 20:10:27', '{\"x\": \"9963\", \"y\": \"6105\"}', '495c4141-27df-d425-b21d-9c15528e8798');
INSERT INTO `microchip_pin_log` VALUES ('dc9044b5-8b82-012b-9b2a-092740e2a6d8', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2002-04-15 04:34:35', '{\"x\": \"9069\", \"y\": \"9319\"}', 'cc28697e-f698-b29a-381e-00a55df68f4f');
INSERT INTO `microchip_pin_log` VALUES ('dcfd35f1-c0e5-bfd3-d6ac-b00ce8e4f0e6', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2010-05-24 07:21:47', '{\"x\": \"3885\", \"y\": \"4308\"}', 'f4ae45b9-61ad-9d20-332a-ffdee964d9e7');
INSERT INTO `microchip_pin_log` VALUES ('dd99e4f5-45fc-99bd-cdbd-2bef59808a9b', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2007-12-11 07:39:45', '{\"x\": \"0144\", \"y\": \"6528\"}', '6096c8f1-9803-c371-ed7b-352cd4adf3c0');
INSERT INTO `microchip_pin_log` VALUES ('dddfe69d-b7a4-53c3-cc25-b01d5044ac40', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2019-08-04 14:59:22', '{\"x\": \"0535\", \"y\": \"6292\"}', '2150a653-9dcb-a1ad-1a44-e4625d3dd591');
INSERT INTO `microchip_pin_log` VALUES ('de201f11-0d05-c934-a3e2-147cffadd0c8', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2015-11-22 04:50:05', '{\"x\": \"4232\", \"y\": \"2074\"}', '2d110373-1527-cd35-6abc-f4ad7b3d4baa');
INSERT INTO `microchip_pin_log` VALUES ('df3fa352-1433-53c3-137f-420368763e01', '0.97', '48', '0.91', 2, 'pin', 1, 'pin', '2013-11-27 06:29:47', '{\"x\": \"1800\", \"y\": \"6919\"}', '3d20677f-fcbe-87fa-89ac-4d15704cbd83');
INSERT INTO `microchip_pin_log` VALUES ('df5f02ee-05b4-1eab-81c6-92f92ab88b0b', '0.97', '48', '0.91', 2, 'notpin', 1, 'notpin', '2011-04-25 22:22:54', '{\"x\": \"4518\", \"y\": \"5198\"}', '55e4f0da-56da-364c-7e83-bcd6748f7f26');
INSERT INTO `microchip_pin_log` VALUES ('df841a59-816e-ea1b-46e4-d3b68c3038c8', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2011-12-12 16:08:20', '{\"x\": \"6168\", \"y\": \"6510\"}', 'd5d3da1e-e61a-39d1-375c-16db7b19f012');
INSERT INTO `microchip_pin_log` VALUES ('dfb03776-4a01-3548-81cd-10bec7b3deda', '0.51', '48', '0.91', 2, 'pin', 1, 'pin', '2018-04-21 06:38:06', '{\"x\": \"1922\", \"y\": \"7086\"}', '83e2568f-32a4-f42b-153a-7e4369efd9f7');
INSERT INTO `microchip_pin_log` VALUES ('dfe3af9c-a72e-d28b-fb5a-680c0be9e90a', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2007-08-13 04:03:31', '{\"x\": \"4549\", \"y\": \"4244\"}', 'd956816a-23a5-5f20-272b-267e75078687');
INSERT INTO `microchip_pin_log` VALUES ('e096953c-5eac-1887-3b18-70a230a63e87', '0.81', '48', '0.93', 2, 'notpin', 1, 'notpin', '2012-01-11 22:48:52', '{\"x\": \"0936\", \"y\": \"6006\"}', 'e807417c-57c3-1c0d-8b0e-8c6f6b6ec716');
INSERT INTO `microchip_pin_log` VALUES ('e0d1fa6c-666d-8220-9845-0bd61c3a91c9', '0.72', '48', '0.92', 2, 'pin', 1, 'pin', '2017-02-13 15:37:33', '{\"x\": \"1871\", \"y\": \"0481\"}', 'a5a11f1c-9643-8ded-678e-5cc061e844d3');
INSERT INTO `microchip_pin_log` VALUES ('e0e1b234-42f8-2f30-cf8c-6d87443915c6', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2005-10-26 21:02:48', '{\"x\": \"3822\", \"y\": \"0334\"}', '1ad2ead4-a2ba-cfd4-842f-bba77b1f9a91');
INSERT INTO `microchip_pin_log` VALUES ('e0ff1744-b19f-9854-9e3a-e2957208b1e6', '0.71', '48', '0.99', 2, 'notpin', 1, 'pin', '2019-05-08 05:16:51', '{\"x\": \"6758\", \"y\": \"9344\"}', 'c343fb6e-1f9e-41b5-42d9-d85ad6bcf594');
INSERT INTO `microchip_pin_log` VALUES ('e125ad84-19e0-ae42-7a30-2df706b1977b', '0.97', '48', '0.94', 1, 'pin', 1, 'notpin', '2019-05-20 07:30:11', '{\"x\": \"4152\", \"y\": \"5038\"}', 'b60e9aed-09c7-7d0a-946c-a0a0f952033a');
INSERT INTO `microchip_pin_log` VALUES ('e12728c3-1a1e-21c2-5d0b-196ddb173b11', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2009-08-01 14:59:15', '{\"x\": \"6571\", \"y\": \"6631\"}', '5c09a2da-9801-b513-5d52-7a67b16f4143');
INSERT INTO `microchip_pin_log` VALUES ('e19fac32-a5d5-1b59-4d44-a120f98abba7', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2004-03-26 20:54:07', '{\"x\": \"0672\", \"y\": \"2493\"}', '8cfafa28-b536-546d-0a48-c3fb53e8963e');
INSERT INTO `microchip_pin_log` VALUES ('e1ab9654-f746-d991-aea0-ff3f9627a32a', '0.97', '48', '0.90', 2, 'notpin', 1, 'pin', '2010-03-30 19:01:07', '{\"x\": \"2732\", \"y\": \"8577\"}', '050b6e0a-82d3-e6ad-0ff4-bf7866d17885');
INSERT INTO `microchip_pin_log` VALUES ('e1c07030-a83f-1851-7759-1fea485d8452', '0.97', '48', '0.90', 1, 'notpin', 1, 'notpin', '2014-05-25 23:30:41', '{\"x\": \"6217\", \"y\": \"7799\"}', '9024c63d-f9a7-54e8-6f88-0dd3cfd717a0');
INSERT INTO `microchip_pin_log` VALUES ('e1e3a1d6-22bb-3213-1ea2-b9f3f527ae82', '0.97', '48', '0.99', 2, 'pin', 1, 'notpin', '2007-02-14 18:44:00', '{\"x\": \"2056\", \"y\": \"6314\"}', '3bbd938e-a49b-36c5-0618-db948cf3cae2');
INSERT INTO `microchip_pin_log` VALUES ('e1ffd041-e290-ba47-b011-5cce13cec1a8', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2007-12-16 18:09:48', '{\"x\": \"5303\", \"y\": \"3971\"}', 'd956816a-23a5-5f20-272b-267e75078687');
INSERT INTO `microchip_pin_log` VALUES ('e208e18a-bacb-c1c1-e707-7b3cec48056a', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2004-08-25 08:50:43', '{\"x\": \"5832\", \"y\": \"0027\"}', 'e93ad883-47fe-bf49-2c5f-2fba0da73bd3');
INSERT INTO `microchip_pin_log` VALUES ('e2d20aa0-9111-215e-d630-c86206d97ab3', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2014-10-21 06:12:06', '{\"x\": \"7457\", \"y\": \"2576\"}', 'b597ff9f-2b69-b1c0-80d2-23c76db3eace');
INSERT INTO `microchip_pin_log` VALUES ('e3063566-d025-27b6-b6a8-0baa2e329934', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2011-06-18 01:19:42', '{\"x\": \"2914\", \"y\": \"4722\"}', '21717544-9b58-ee1a-403f-e673f2b8d602');
INSERT INTO `microchip_pin_log` VALUES ('e30d723b-971b-efe1-7b13-31ce3264698e', '0.08', '48', '0.92', 1, 'pin', 1, 'pin', '2005-10-22 09:39:43', '{\"x\": \"2272\", \"y\": \"2767\"}', '7e760b3a-65b0-cf4e-5128-8d3bbbe33259');
INSERT INTO `microchip_pin_log` VALUES ('e330cf1e-e906-6353-4e1b-817c626c8349', '0.97', '48', '0.90', 2, 'notpin', 1, 'notpin', '2005-10-21 15:28:18', '{\"x\": \"4442\", \"y\": \"7010\"}', '9c8784b5-cfdc-4a67-742c-5c6816680a87');
INSERT INTO `microchip_pin_log` VALUES ('e34346a1-a3ce-d0dd-11b5-5ae100e02e54', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2009-06-23 04:41:55', '{\"x\": \"3650\", \"y\": \"0120\"}', '26fe6a82-8819-e1ff-3322-5310f91fec8b');
INSERT INTO `microchip_pin_log` VALUES ('e35aa23d-ec6b-da03-9f53-13260b8bc4cb', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2003-01-28 08:51:45', '{\"x\": \"5828\", \"y\": \"4831\"}', '93617b3d-fc4a-801a-b662-7a35909d6d7c');
INSERT INTO `microchip_pin_log` VALUES ('e370d242-5240-38d0-561c-c5e4095b1f38', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2010-12-29 10:28:10', '{\"x\": \"2386\", \"y\": \"7971\"}', '3920bf3f-2316-b545-df11-d3ee6b26555c');
INSERT INTO `microchip_pin_log` VALUES ('e4394b39-2564-52db-39d3-16c3cdaad775', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2005-02-27 17:03:15', '{\"x\": \"0502\", \"y\": \"2617\"}', 'fffcd95a-8d99-e14f-03ce-1083e8f292ba');
INSERT INTO `microchip_pin_log` VALUES ('e4aff206-05c1-1371-bab8-a4adbea0fb37', '0.97', '48', '0.95', 2, 'pin', 1, 'notpin', '2014-05-07 05:39:57', '{\"x\": \"1962\", \"y\": \"4772\"}', 'a9e2cbeb-ef14-d9f7-e4c6-7461e98e8cb0');
INSERT INTO `microchip_pin_log` VALUES ('e4d0eec0-2ce7-8469-39c2-660100ca0912', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2003-07-05 06:56:16', '{\"x\": \"2959\", \"y\": \"9557\"}', '1e92beed-328d-ba9d-8b3d-ea62dee42712');
INSERT INTO `microchip_pin_log` VALUES ('e53bb5f5-211d-63f8-3529-0222896c896e', '0.97', '48', '0.97', 1, 'notpin', 1, 'pin', '2007-06-16 08:56:44', '{\"x\": \"6767\", \"y\": \"3261\"}', 'a9ebb6d6-0e35-2123-72f7-5aac6aa45c96');
INSERT INTO `microchip_pin_log` VALUES ('e59abbf9-41b2-56d9-4311-a54403a75f6b', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2016-08-08 00:52:40', '{\"x\": \"5882\", \"y\": \"7892\"}', '2c3d010e-12f0-7486-b853-59686ad9db34');
INSERT INTO `microchip_pin_log` VALUES ('e6813413-2502-2eda-9808-aef210bd5300', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2012-06-30 19:19:59', '{\"x\": \"8150\", \"y\": \"3485\"}', '99a655e8-f762-a78f-2c53-abc1608e7828');
INSERT INTO `microchip_pin_log` VALUES ('e6a3dafe-c94b-a353-6d1b-dcc46a03ce9f', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2008-05-20 10:12:59', '{\"x\": \"0873\", \"y\": \"8912\"}', '0766809d-a7be-b964-af7b-52af5ca3085c');
INSERT INTO `microchip_pin_log` VALUES ('e75db8cd-cd77-ed73-7c7e-6122922783c1', '0.97', '48', '0.98', 1, 'notpin', 1, 'notpin', '2010-10-01 18:40:42', '{\"x\": \"1828\", \"y\": \"5737\"}', 'f21e0772-198b-a005-7c15-aca805bd72b0');
INSERT INTO `microchip_pin_log` VALUES ('e7b7fdec-b60a-839f-9e79-64210c272766', '0.97', '48', '0.90', 2, 'pin', 1, 'pin', '2013-12-31 00:39:59', '{\"x\": \"6640\", \"y\": \"3827\"}', '9f0c1ea6-a13e-7c03-ed11-44557523ae51');
INSERT INTO `microchip_pin_log` VALUES ('e7e4bf35-a78e-7749-3802-f9a17c7e875d', '0.97', '48', '0.95', 1, 'pin', 1, 'notpin', '2000-08-27 17:04:58', '{\"x\": \"0456\", \"y\": \"1725\"}', '9ff0bb35-3acb-3506-9aee-4f6e21118ecb');
INSERT INTO `microchip_pin_log` VALUES ('e7fceb62-0318-ab3b-4345-3cec28b9af25', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2008-02-29 11:01:20', '{\"x\": \"7000\", \"y\": \"3455\"}', 'c2b9535b-b9fc-0374-4125-7a5c24b653bb');
INSERT INTO `microchip_pin_log` VALUES ('e7ff4af1-57e4-897e-df38-5375b16929c7', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2010-11-22 03:04:36', '{\"x\": \"7523\", \"y\": \"4416\"}', '503d4b39-54d0-558d-c4d2-be13bfafc237');
INSERT INTO `microchip_pin_log` VALUES ('e82ab2f9-97a1-5e1d-1b75-b6826da0d619', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2002-04-10 07:25:47', '{\"x\": \"5573\", \"y\": \"0537\"}', '57652f70-5bf9-9615-646b-9006c31eb2ff');
INSERT INTO `microchip_pin_log` VALUES ('e84aa3fd-32d8-6774-92d1-14e8f358bfe5', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2021-06-16 19:37:45', '{\"x\": \"1312\", \"y\": \"4499\"}', '24ddc0df-cd7e-a1f3-488a-4a0e0850160e');
INSERT INTO `microchip_pin_log` VALUES ('e98848f1-5606-8844-9d08-b0bc8e4a8041', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2022-08-19 06:20:30', '{\"x\": \"9436\", \"y\": \"9844\"}', 'a79cfe70-d69c-ffc7-669a-82e09c581578');
INSERT INTO `microchip_pin_log` VALUES ('e9c3beae-1b5d-8e68-9721-ba08d2771523', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2017-03-17 13:13:29', '{\"x\": \"7343\", \"y\": \"2384\"}', '8c979f3a-e65f-e702-3075-99232f13098c');
INSERT INTO `microchip_pin_log` VALUES ('e9fe5986-e833-1229-893c-5e8b6a9936c5', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2018-08-12 20:18:34', '{\"x\": \"2869\", \"y\": \"7561\"}', '1507abd6-665b-62b9-da20-9f3107dfa4b5');
INSERT INTO `microchip_pin_log` VALUES ('eacfd406-6935-17ed-6c1e-2c49edbdc603', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2021-07-21 21:44:10', '{\"x\": \"7050\", \"y\": \"2250\"}', 'be91cdd2-e450-541c-25c8-874923f264ad');
INSERT INTO `microchip_pin_log` VALUES ('eadaf96b-df69-27fb-c840-f3a8357cf47b', '0.97', '48', '0.90', 1, 'pin', 1, 'pin', '2003-01-06 23:38:49', '{\"x\": \"1030\", \"y\": \"3147\"}', '425a3c02-96ea-89b2-453b-b33f81d84b95');
INSERT INTO `microchip_pin_log` VALUES ('eb45ff28-a0a4-fdd3-3884-b0a1887bdca1', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2014-08-19 17:20:07', '{\"x\": \"1717\", \"y\": \"9628\"}', '06bdb058-9378-d2fe-6e97-d9bc24771d41');
INSERT INTO `microchip_pin_log` VALUES ('eb5863d0-d014-0866-6dac-914f5082a931', '0.97', '48', '0.92', 2, 'notpin', 1, 'pin', '2010-03-09 07:07:39', '{\"x\": \"1815\", \"y\": \"3620\"}', '3dba0cc2-6f0d-217c-a898-f4993ebaf282');
INSERT INTO `microchip_pin_log` VALUES ('eb6e3b8b-78ca-a0fb-4c48-cce135429b3f', '0.97', '48', '0.98', 2, 'pin', 1, 'pin', '2008-11-16 14:46:09', '{\"x\": \"3192\", \"y\": \"2665\"}', 'ef92b798-28d5-078a-5749-cba8092c5861');
INSERT INTO `microchip_pin_log` VALUES ('ec531ded-1cc6-231f-e6e0-e124c794ab1d', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2015-08-22 19:14:44', '{\"x\": \"2878\", \"y\": \"5189\"}', 'd1c1c5c0-9f19-be33-a18b-dae8632930d1');
INSERT INTO `microchip_pin_log` VALUES ('ec66ced4-3737-a37a-21c2-086ebc59c0cb', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2014-08-18 21:48:56', '{\"x\": \"1728\", \"y\": \"7108\"}', '34221ebf-488e-6702-9e9e-5d1233eab97a');
INSERT INTO `microchip_pin_log` VALUES ('ec82002c-ba53-1e2a-5247-f8cf8e28fcbe', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2007-09-21 13:33:28', '{\"x\": \"9739\", \"y\": \"5814\"}', 'da4ba219-9fa7-9a73-02bb-b79ea5442819');
INSERT INTO `microchip_pin_log` VALUES ('eccbae48-3fe5-d33f-beb3-52bff5d26e1b', '0.97', '48', '0.93', 2, 'pin', 1, 'notpin', '2019-02-11 17:59:50', '{\"x\": \"2066\", \"y\": \"9288\"}', '2692f2e9-bf58-933d-b5cc-f063b35d658b');
INSERT INTO `microchip_pin_log` VALUES ('ed231785-d876-ff0d-5cb8-ec3b2384a866', '0.97', '48', '0.96', 2, 'notpin', 1, 'pin', '2020-12-20 22:38:29', '{\"x\": \"2952\", \"y\": \"6815\"}', 'b60e9aed-09c7-7d0a-946c-a0a0f952033a');
INSERT INTO `microchip_pin_log` VALUES ('ed592ccc-7c5f-a06a-c08a-786c2e92fe6b', '0.28', '48', '0.96', 1, 'notpin', 1, 'pin', '2004-03-10 21:51:40', '{\"x\": \"4979\", \"y\": \"3588\"}', 'b7f204c4-b7d7-4abe-a4a6-3a6dc5a7d5e1');
INSERT INTO `microchip_pin_log` VALUES ('ed68a634-667e-84cd-a25a-2dc4aa4d05d0', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2013-06-24 18:25:58', '{\"x\": \"7800\", \"y\": \"3817\"}', '0f1118ac-65e2-9cec-7211-3bd27371dc1f');
INSERT INTO `microchip_pin_log` VALUES ('ed9e84a2-e303-8f02-1939-1880fddc7001', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2000-04-26 09:29:15', '{\"x\": \"1842\", \"y\": \"9457\"}', '6a5f692a-4af9-d3c0-bc71-9965ab86f2c8');
INSERT INTO `microchip_pin_log` VALUES ('edfc35fa-73a6-64e9-b2f8-cdbd53010f0e', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2012-05-28 18:40:14', '{\"x\": \"5612\", \"y\": \"6892\"}', 'c4fd3ab9-4834-3569-8c8b-ea5fa3e0a4fb');
INSERT INTO `microchip_pin_log` VALUES ('eeb394d4-b6e4-9e5a-a286-3d3c01d6c8ec', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2000-02-13 19:23:04', '{\"x\": \"6828\", \"y\": \"4567\"}', 'a8fdf0f6-8046-55fa-a7cc-681cb2b73419');
INSERT INTO `microchip_pin_log` VALUES ('ef16d6b0-6f4c-755c-49e6-911b7d27569b', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2010-01-06 06:22:19', '{\"x\": \"2411\", \"y\": \"7364\"}', 'fb0a2c61-b163-beb7-25cf-8640fe37aee9');
INSERT INTO `microchip_pin_log` VALUES ('ef4abff1-a3b1-003f-47c6-3ec7017763d0', '0.97', '48', '0.97', 2, 'notpin', 1, 'pin', '2001-01-04 04:24:04', '{\"x\": \"2214\", \"y\": \"2204\"}', '1db5c911-71bb-8a84-5a8f-8dc496e4199b');
INSERT INTO `microchip_pin_log` VALUES ('ef5ae5bd-0986-a7f7-2977-37b57221c109', '0.97', '48', '0.98', 2, 'notpin', 1, 'pin', '2016-12-25 09:40:23', '{\"x\": \"9815\", \"y\": \"5625\"}', 'fd9140e9-0b8f-dfa6-2455-234331431de3');
INSERT INTO `microchip_pin_log` VALUES ('ef6750f2-60f1-253e-db47-8b52ba04cee8', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2020-11-03 02:03:39', '{\"x\": \"6073\", \"y\": \"9142\"}', '6935be03-d7b7-058f-1c48-aceb1cd803d1');
INSERT INTO `microchip_pin_log` VALUES ('ef6cd3a3-0864-4989-75df-a7b282766e60', '0.97', '48', '0.99', 1, 'notpin', 1, 'pin', '2006-04-10 06:41:14', '{\"x\": \"0774\", \"y\": \"0280\"}', '2106002c-1ee3-8589-7e0e-f541b1c6ecf5');
INSERT INTO `microchip_pin_log` VALUES ('ef7e256b-789c-0ea6-b965-10d2f44f173e', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2021-07-18 13:53:42', '{\"x\": \"9182\", \"y\": \"4549\"}', '4c75a3ae-f96e-38c2-c881-db9cec5ce8b6');
INSERT INTO `microchip_pin_log` VALUES ('efa91bb2-4e1a-58a3-2b7f-46fdc05f53f0', '0.97', '48', '0.98', 2, 'pin', 1, 'notpin', '2015-12-22 06:52:36', '{\"x\": \"4480\", \"y\": \"2747\"}', '1ad94d68-71eb-fac6-72e0-446d7949aebd');
INSERT INTO `microchip_pin_log` VALUES ('efbeb039-ef5d-4734-d673-6e246c5b8bce', '0.97', '48', '0.95', 2, 'notpin', 1, 'notpin', '2016-11-10 21:56:11', '{\"x\": \"9687\", \"y\": \"4788\"}', '0aa4ec45-d1c3-7dc9-727b-1a06771cb20a');
INSERT INTO `microchip_pin_log` VALUES ('efc0f52d-6cf8-2f0a-7335-91df288c0b28', '0.97', '48', '0.96', 2, 'pin', 1, 'pin', '2005-09-25 20:05:45', '{\"x\": \"7864\", \"y\": \"3709\"}', '0e9c5030-66ed-64a1-f836-3cde31cbcc6c');
INSERT INTO `microchip_pin_log` VALUES ('efea2ec9-4e3f-ea8e-59c3-6a3e753a6146', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2017-07-21 13:50:32', '{\"x\": \"0616\", \"y\": \"6367\"}', '90fcb970-cb6d-ed85-b5fa-3db6f667d5ce');
INSERT INTO `microchip_pin_log` VALUES ('f0033cdd-9019-9a7f-c31c-1909abd03602', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2008-09-03 21:29:53', '{\"x\": \"5606\", \"y\": \"2970\"}', '2d29a20f-3196-7d1d-7eee-3bb79888a0af');
INSERT INTO `microchip_pin_log` VALUES ('f035ae67-ee41-8379-2f19-05ce1e420fb4', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2011-10-11 22:24:08', '{\"x\": \"5939\", \"y\": \"9781\"}', '4558eb1e-f958-7193-79a2-acebb2703014');
INSERT INTO `microchip_pin_log` VALUES ('f08b2563-bfba-8e79-ef3f-109b95807ae4', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2000-10-01 15:41:38', '{\"x\": \"9559\", \"y\": \"6537\"}', 'bf06196c-d6f2-b438-5c8b-388ddb50366c');
INSERT INTO `microchip_pin_log` VALUES ('f11719b7-f366-9cee-c434-1d69f33b4c52', '0.97', '48', '0.92', 1, 'notpin', 1, 'pin', '2006-08-23 05:57:35', '{\"x\": \"7618\", \"y\": \"0890\"}', 'd2dde162-3e34-276f-1e34-dc48f65c2cb2');
INSERT INTO `microchip_pin_log` VALUES ('f13087b2-bac4-d209-3792-dcdba96806bf', '0.97', '48', '0.90', 1, 'notpin', 1, 'pin', '2006-12-14 20:15:16', '{\"x\": \"3381\", \"y\": \"1931\"}', 'a95bf4fa-49d0-ebf4-0850-5857f64658e7');
INSERT INTO `microchip_pin_log` VALUES ('f16b5273-19c1-8464-9ace-9c4f4021b2f2', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2006-01-20 18:43:23', '{\"x\": \"0408\", \"y\": \"6948\"}', '0348a610-6b83-b10b-ad50-d65b8cf1efe4');
INSERT INTO `microchip_pin_log` VALUES ('f189356b-2e0f-2a0b-a406-38f75c33b49a', '0.97', '48', '0.95', 1, 'notpin', 1, 'notpin', '2007-11-03 22:25:21', '{\"x\": \"7924\", \"y\": \"4022\"}', '05407032-e559-afe5-5b18-acaa05bd9f9d');
INSERT INTO `microchip_pin_log` VALUES ('f190e553-1c0e-d24e-c66c-b9345ddf9781', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2003-01-21 17:35:19', '{\"x\": \"5755\", \"y\": \"6797\"}', '96ee2bab-cc90-f018-630f-00d90911841f');
INSERT INTO `microchip_pin_log` VALUES ('f1d5556d-7377-4121-86e2-61ebd021e788', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2022-12-09 03:04:23', '{\"x\": \"6261\", \"y\": \"9085\"}', '70d6279a-67b8-6a01-fa3b-0e5c1e8007d3');
INSERT INTO `microchip_pin_log` VALUES ('f201483c-4039-5909-d842-2d31aae24fd3', '0.97', '48', '0.95', 2, 'pin', 1, 'pin', '2017-08-19 15:00:55', '{\"x\": \"5033\", \"y\": \"1367\"}', '3f3d398d-fa06-8784-9053-5de7089cc5af');
INSERT INTO `microchip_pin_log` VALUES ('f2385289-d6b0-6af3-459b-0e3d4e24165d', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2011-10-13 10:21:12', '{\"x\": \"0314\", \"y\": \"2500\"}', '698f39cc-3799-41a4-9f1b-d7f027b96f1a');
INSERT INTO `microchip_pin_log` VALUES ('f2b62069-1d0f-6b94-2007-489bbf2e9d6a', '0.97', '48', '0.95', 2, 'notpin', 1, 'pin', '2019-08-14 19:33:27', '{\"x\": \"5464\", \"y\": \"7182\"}', '9dd2dfe4-0eca-3496-25bc-6a215a53b082');
INSERT INTO `microchip_pin_log` VALUES ('f2d876ed-04cf-52a2-6b36-e180d6f0a3de', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2017-09-05 10:56:30', '{\"x\": \"3570\", \"y\": \"0363\"}', '630101c1-16b5-0792-dd69-8236ae983b0a');
INSERT INTO `microchip_pin_log` VALUES ('f2e6e466-3fd5-6444-4dab-f6e696c6f389', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2022-06-25 12:52:20', '{\"x\": \"2869\", \"y\": \"9543\"}', 'f19c5790-8fbb-d20a-20db-883a19ecdd40');
INSERT INTO `microchip_pin_log` VALUES ('f3395495-c7a7-1a0b-cc85-b8a85c585797', '0.97', '48', '0.94', 2, 'notpin', 1, 'notpin', '2016-05-27 08:50:41', '{\"x\": \"4049\", \"y\": \"3226\"}', '68625f6a-f7a0-a75d-cfaa-c89ab6d3df82');
INSERT INTO `microchip_pin_log` VALUES ('f3744286-1738-74c1-6ada-85f5eb1385e4', '0.97', '48', '0.90', 1, 'notpin', 1, 'pin', '2008-06-21 11:19:50', '{\"x\": \"9971\", \"y\": \"4162\"}', '3906ac4a-ccb6-9caa-eada-b15c102e609d');
INSERT INTO `microchip_pin_log` VALUES ('f3e898ab-fbc7-dab8-e756-bfc2e9a4fa9b', '0.97', '48', '0.94', 2, 'pin', 1, 'pin', '2017-12-17 05:02:39', '{\"x\": \"7034\", \"y\": \"0242\"}', '512f3414-21ac-d3d7-38a1-66f773f3f735');
INSERT INTO `microchip_pin_log` VALUES ('f4382cc3-c900-f79f-5884-6a579af59512', '0.97', '48', '0.91', 2, 'notpin', 1, 'pin', '2019-06-11 00:22:13', '{\"x\": \"8967\", \"y\": \"2213\"}', 'd4c2e776-fd0d-dc40-1f91-bc246a0d082b');
INSERT INTO `microchip_pin_log` VALUES ('f4de8f44-fa46-d91a-eeec-12c2a554c1ad', '0.97', '48', '0.97', 2, 'notpin', 1, 'notpin', '2001-07-18 21:48:54', '{\"x\": \"2032\", \"y\": \"6322\"}', 'f4ae45b9-61ad-9d20-332a-ffdee964d9e7');
INSERT INTO `microchip_pin_log` VALUES ('f58a895f-f8da-e544-7e1d-bc149a0cef04', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2001-07-19 04:08:56', '{\"x\": \"1539\", \"y\": \"2231\"}', '46f37862-7a80-2ab1-3b15-f8993087a780');
INSERT INTO `microchip_pin_log` VALUES ('f5980c0a-1abe-6c7f-57c5-cc4cded268b8', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2010-05-19 17:56:12', '{\"x\": \"1880\", \"y\": \"1699\"}', 'b3f33ee1-1ebc-85f6-3a21-05308ac40db3');
INSERT INTO `microchip_pin_log` VALUES ('f5d0ad83-1f27-e315-308e-f0c6fb124519', '0.97', '48', '0.92', 2, 'notpin', 1, 'notpin', '2020-01-07 12:48:51', '{\"x\": \"6094\", \"y\": \"4831\"}', '5760aa3e-2d09-a52f-14e7-fd80f2630efa');
INSERT INTO `microchip_pin_log` VALUES ('f6081b4d-875b-aa31-a2bb-53b0850ffbf5', '0.46', '48', '0.95', 2, 'pin', 1, 'notpin', '2018-01-27 03:12:52', '{\"x\": \"5540\", \"y\": \"0991\"}', 'bf7b02d6-254f-765c-6cfc-9a73bde3c4a0');
INSERT INTO `microchip_pin_log` VALUES ('f66168e4-74cd-dc63-af3e-479adbd05967', '0.97', '15', '0.93', 1, 'pin', 1, 'notpin', '2011-12-07 23:34:15', '{\"x\": \"1046\", \"y\": \"5443\"}', '40e16d91-1f29-b9eb-b835-47894d68e84b');
INSERT INTO `microchip_pin_log` VALUES ('f6b91e9a-df34-ad8f-940a-ad4c6d3ac8c1', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2009-10-24 03:07:52', '{\"x\": \"0470\", \"y\": \"1492\"}', 'e7266e48-f28d-08c7-a172-5f4af5b1c21e');
INSERT INTO `microchip_pin_log` VALUES ('f6d2d7de-40a1-e5ef-5442-da282fa51df1', '0.97', '48', '0.97', 1, 'notpin', 1, 'notpin', '2011-06-25 06:51:20', '{\"x\": \"5132\", \"y\": \"0005\"}', 'e9a4245d-b384-f5d5-3e64-ec69fbcbcb73');
INSERT INTO `microchip_pin_log` VALUES ('f6dc0a1b-0c82-fbdd-8f5d-59ced5713b47', '0.97', '48', '0.90', 1, 'pin', 1, 'notpin', '2020-06-15 08:50:53', '{\"x\": \"8015\", \"y\": \"9685\"}', '8e8dd5a7-7e2e-a5ae-ebc3-ef0d533563bd');
INSERT INTO `microchip_pin_log` VALUES ('f7065001-bf65-a353-0a2d-2dbb5cee5aa2', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2004-04-27 12:18:04', '{\"x\": \"2747\", \"y\": \"0499\"}', 'b3aad300-33a4-f3d8-459e-8acb7b43b45f');
INSERT INTO `microchip_pin_log` VALUES ('f712b058-4322-3e35-8527-6075f98ebc90', '0.97', '15', '0.99', 1, 'notpin', 1, 'notpin', '2006-01-29 06:51:16', '{\"x\": \"8366\", \"y\": \"9189\"}', '77102255-7305-0e98-fc09-6bc40db7e67c');
INSERT INTO `microchip_pin_log` VALUES ('f756fcae-1e27-82bd-2540-2fff84509b82', '0.97', '48', '0.98', 2, 'notpin', 1, 'pin', '2000-08-04 09:09:53', '{\"x\": \"6262\", \"y\": \"4315\"}', '0b6a9b52-04a7-0afe-e562-dd3bc23c02fc');
INSERT INTO `microchip_pin_log` VALUES ('f7b15edb-e234-30ff-7b2a-78570ac9fe89', '0.97', '48', '0.96', 2, 'notpin', 1, 'notpin', '2000-09-05 10:14:18', '{\"x\": \"1166\", \"y\": \"8433\"}', '06205d73-0501-0768-c9d6-06a8e2c3c372');
INSERT INTO `microchip_pin_log` VALUES ('f7e9c2f5-47bd-8a23-521a-9670062bae70', '0.97', '48', '0.94', 1, 'pin', 1, 'pin', '2020-09-16 03:12:50', '{\"x\": \"0219\", \"y\": \"6945\"}', '9794c064-8955-5763-f9f6-54049bc969f0');
INSERT INTO `microchip_pin_log` VALUES ('f7ede127-59b3-fd3e-ef83-bf0457b00198', '0.97', '48', '0.96', 1, 'pin', 1, 'pin', '2010-01-04 16:48:07', '{\"x\": \"6118\", \"y\": \"7641\"}', '57d9294f-217f-4511-96f8-ad72634abfdf');
INSERT INTO `microchip_pin_log` VALUES ('f85d3835-bb14-a2a2-1c11-e5807a2cf7ee', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2013-03-05 20:25:32', '{\"x\": \"4015\", \"y\": \"8446\"}', 'f0252365-fa4f-8fdb-0601-077e11c1ee62');
INSERT INTO `microchip_pin_log` VALUES ('f898b491-0509-5921-7581-9c5233a73fec', '0.97', '48', '0.92', 1, 'pin', 1, 'notpin', '2007-01-17 10:55:02', '{\"x\": \"9950\", \"y\": \"9485\"}', '6a860cc4-a481-2c28-4c64-1280ba83e1ae');
INSERT INTO `microchip_pin_log` VALUES ('f89e6075-b7d8-33f7-b721-7b7f6a1ef215', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2016-09-10 21:01:09', '{\"x\": \"8584\", \"y\": \"9634\"}', 'f19be53b-edf6-86e8-7573-decab08a3eea');
INSERT INTO `microchip_pin_log` VALUES ('f8c4856e-82d2-0f01-f3a0-949b8d5a1f16', '0.97', '48', '0.98', 2, 'notpin', 1, 'notpin', '2014-11-29 03:21:09', '{\"x\": \"8667\", \"y\": \"3171\"}', 'e60ee74a-bcb6-2b9b-477a-9e386beacd1f');
INSERT INTO `microchip_pin_log` VALUES ('f927f28f-1560-31b3-7948-9748287a7968', '0.97', '48', '0.94', 1, 'notpin', 1, 'pin', '2013-08-15 08:19:26', '{\"x\": \"8533\", \"y\": \"3150\"}', '52596139-3bc6-183e-03f0-05c01462a82f');
INSERT INTO `microchip_pin_log` VALUES ('f929894c-c7e9-c877-29c3-fb5b0941aa79', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2016-12-09 06:36:12', '{\"x\": \"1219\", \"y\": \"9732\"}', 'b583dc18-0d22-a555-1a9b-90cb5c30934b');
INSERT INTO `microchip_pin_log` VALUES ('f929e2a4-1c43-b087-29d3-bc235db8a903', '0.97', '48', '0.94', 2, 'notpin', 1, 'pin', '2004-06-25 00:54:03', '{\"x\": \"5405\", \"y\": \"4199\"}', 'f5b0146a-0cfc-53bc-cdaa-23399b35c6a3');
INSERT INTO `microchip_pin_log` VALUES ('f9539ec5-97e4-f5fd-a7ae-0d82fedc2740', '0.97', '48', '0.92', 1, 'pin', 1, 'pin', '2018-03-22 09:39:51', '{\"x\": \"8364\", \"y\": \"0267\"}', '3dba0cc2-6f0d-217c-a898-f4993ebaf282');
INSERT INTO `microchip_pin_log` VALUES ('f9da10c7-329b-71cd-b6cf-afc00681b017', '0.97', '48', '0.97', 1, 'pin', 1, 'notpin', '2010-07-14 20:11:00', '{\"x\": \"5828\", \"y\": \"8773\"}', '54d6db16-23ad-7910-4926-e1845df958a8');
INSERT INTO `microchip_pin_log` VALUES ('fa1c804a-79f7-7e12-ad97-caeab23463c6', '0.97', '48', '0.90', 2, 'pin', 1, 'notpin', '2019-11-18 06:48:19', '{\"x\": \"9165\", \"y\": \"6409\"}', '8af6e78d-a24f-9bdc-4aac-94de23c8fa52');
INSERT INTO `microchip_pin_log` VALUES ('fa7a7031-f9c1-2f8b-4752-ca4f35a1636b', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2001-01-24 13:25:27', '{\"x\": \"6262\", \"y\": \"1862\"}', '39dfc467-879d-ce12-2346-f84341b765d5');
INSERT INTO `microchip_pin_log` VALUES ('fabeb9cc-5a1d-1abc-b548-f22c3ce95a5d', '0.97', '48', '0.99', 1, 'pin', 1, 'pin', '2019-06-21 00:59:39', '{\"x\": \"8449\", \"y\": \"4372\"}', 'fecd611d-4f64-c650-8cf2-90bbafa576a5');
INSERT INTO `microchip_pin_log` VALUES ('facf0b1d-2557-4dc8-5019-7bb6aae0578f', '0.97', '48', '0.92', 1, 'notpin', 1, 'notpin', '2016-05-30 23:18:42', '{\"x\": \"6059\", \"y\": \"4182\"}', 'fc5c176f-805e-ee61-dc97-dda29ffe2e03');
INSERT INTO `microchip_pin_log` VALUES ('fb07b1b1-e090-62d2-6e9b-18013c85d4ad', '0.97', '48', '0.91', 1, 'notpin', 1, 'pin', '2017-05-20 17:54:55', '{\"x\": \"9271\", \"y\": \"2836\"}', '54a91834-4a86-0348-6b84-9af3e164943e');
INSERT INTO `microchip_pin_log` VALUES ('fb2c3248-7d76-0557-b3f8-b5e44e98bca6', '0.97', '48', '0.96', 1, 'notpin', 1, 'pin', '2006-09-29 11:55:17', '{\"x\": \"6608\", \"y\": \"0696\"}', '13ea0878-e7f5-8daf-671e-75a7b38c8039');
INSERT INTO `microchip_pin_log` VALUES ('fb40dd7f-00ca-776e-a02b-ab1e72e849a0', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2021-07-01 13:53:49', '{\"x\": \"1432\", \"y\": \"9021\"}', '56176c49-2c55-e933-75f9-9a6fa2fe192c');
INSERT INTO `microchip_pin_log` VALUES ('fd229643-2f15-5d6d-1523-a7e0b01599a6', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2020-04-08 13:19:50', '{\"x\": \"7802\", \"y\": \"2992\"}', '76c4959f-2936-444d-b37d-4423e9e6a859');
INSERT INTO `microchip_pin_log` VALUES ('fd9fcf6c-0aa6-692b-4495-ef01af17fa4c', '0.97', '48', '0.93', 2, 'notpin', 1, 'pin', '2013-06-23 23:20:28', '{\"x\": \"5453\", \"y\": \"1058\"}', '36ab4037-79c3-84c6-cf87-c16e87aaf744');
INSERT INTO `microchip_pin_log` VALUES ('fdc7370b-c015-fdc3-c967-3c5faef42af8', '0.97', '48', '0.94', 1, 'notpin', 1, 'notpin', '2003-07-02 20:28:30', '{\"x\": \"5680\", \"y\": \"8748\"}', '5bf9f0b9-9a0c-c8c9-145f-7374d93acb29');
INSERT INTO `microchip_pin_log` VALUES ('fe287076-b6ff-beee-6b89-d9dc61b44e96', '0.97', '48', '0.97', 2, 'pin', 1, 'notpin', '2021-04-22 14:52:30', '{\"x\": \"2841\", \"y\": \"2324\"}', 'c90f93e5-0fd0-0b6b-b430-f1721f96ac21');
INSERT INTO `microchip_pin_log` VALUES ('fe3ebe82-4c90-4166-ca75-59d4dc8b704f', '0.29', '48', '0.96', 2, 'pin', 1, 'notpin', '2013-07-19 12:55:00', '{\"x\": \"2427\", \"y\": \"0669\"}', '1c8eb027-4a3b-338e-3f92-9a3ed766e179');
INSERT INTO `microchip_pin_log` VALUES ('fe7aecab-901d-6562-1fc2-0a5d8662138a', '0.97', '48', '0.93', 2, 'pin', 1, 'pin', '2013-06-29 23:42:23', '{\"x\": \"0266\", \"y\": \"6198\"}', '8d29c349-e702-a8a2-d93d-41ae5930a87d');
INSERT INTO `microchip_pin_log` VALUES ('fee14e55-9f3c-15d1-aee1-06ce9b042416', '0.97', '48', '0.93', 1, 'notpin', 1, 'pin', '2013-01-11 13:53:36', '{\"x\": \"9496\", \"y\": \"0200\"}', 'b7f204c4-b7d7-4abe-a4a6-3a6dc5a7d5e1');
INSERT INTO `microchip_pin_log` VALUES ('feef690d-cdde-d509-09d6-e13bd06a61c9', '0.97', '48', '0.94', 2, 'pin', 1, 'notpin', '2012-04-01 06:35:36', '{\"x\": \"8973\", \"y\": \"0346\"}', 'aab90b79-c9ab-fb7e-83b7-2dba079200ac');
INSERT INTO `microchip_pin_log` VALUES ('ff0c9412-e349-9dbf-d875-bbc17c1fdd36', '0.97', '48', '0.96', 1, 'notpin', 1, 'notpin', '2001-08-26 21:03:13', '{\"x\": \"6565\", \"y\": \"5040\"}', '976f43bf-89e9-7513-3e02-19a89c9c6e62');
INSERT INTO `microchip_pin_log` VALUES ('ff271b6a-26d6-7414-c08a-7fc06f9b1ae1', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2001-06-20 22:02:41', '{\"x\": \"3661\", \"y\": \"3808\"}', '93b37ee2-ff65-64d5-44a9-77fb4829a5e4');
INSERT INTO `microchip_pin_log` VALUES ('ff51b31c-5a95-fe65-131e-6a7f331582f9', '0.97', '06', '0.95', 1, 'pin', 1, 'notpin', '2008-02-11 22:18:47', '{\"x\": \"3950\", \"y\": \"5316\"}', 'cae365cd-48be-794d-09b6-c37c493929d6');
INSERT INTO `microchip_pin_log` VALUES ('ff66f46e-6097-31d2-13eb-2e581bc09e91', '0.97', '48', '0.91', 1, 'pin', 1, 'notpin', '2015-09-22 20:26:32', '{\"x\": \"2756\", \"y\": \"5009\"}', '74e682a3-b740-0683-ec10-248cc1e9e297');
INSERT INTO `microchip_pin_log` VALUES ('ff9e2297-e72b-d284-23c4-67c8334863ae', '0.50', '48', '0.95', 1, 'pin', 1, 'notpin', '2009-06-17 11:04:26', '{\"x\": \"5466\", \"y\": \"7422\"}', '317a541a-21e1-2093-6b5d-23a7abff77cf');
INSERT INTO `microchip_pin_log` VALUES ('ffa8db91-9bf8-8e07-103f-9eaedcbb083a', '0.97', '48', '0.92', 2, 'pin', 1, 'pin', '2002-07-21 09:11:33', '{\"x\": \"1566\", \"y\": \"4563\"}', '7dd872c4-9dbe-3993-8f43-4b41ee948312');
INSERT INTO `microchip_pin_log` VALUES ('ffa91245-a3d7-2c84-b11d-db0e5873c9de', '0.97', '48', '0.91', 1, 'notpin', 1, 'notpin', '2002-06-10 00:45:45', '{\"x\": \"6767\", \"y\": \"2941\"}', 'd5d3da1e-e61a-39d1-375c-16db7b19f012');
INSERT INTO `microchip_pin_log` VALUES ('ffeb60a3-27eb-23cd-3128-0fcad79e7489', '0.97', '48', '0.99', 2, 'notpin', 1, 'notpin', '2015-10-11 21:03:39', '{\"x\": \"5540\", \"y\": \"4220\"}', '815d2000-c6ce-6998-5763-d5d387ba8bcc');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for quality
-- ----------------------------
DROP TABLE IF EXISTS `quality`;
CREATE TABLE `quality`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `assembly_line_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流水线id',
  `sampling_time` datetime(3) NULL DEFAULT NULL COMMENT '采样时间',
  `distinguish_time` datetime(3) NULL DEFAULT NULL COMMENT '识别时间',
  `ping_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '引角结果（0未检测 1 成功 2失败）',
  `classify_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '划痕及结果（0未检测 1 成功 2失败）',
  `imagePath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片数据地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quality
-- ----------------------------
INSERT INTO `quality` VALUES ('00cf721b-7d17-c086-5ad0-ec77f8354818', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.111', '2022-12-10 15:59:42.802', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('013ad22b-2094-e86b-872a-845321e09a1b', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.107', '2022-12-10 15:59:43.298', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('01475b0b-0612-bc32-1f97-3324b2482d96', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.660', '2022-12-10 15:59:40.201', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('019a4d0b-f6a8-bb5d-3eea-0de55b3bc83b', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.623', '2022-12-10 15:59:45.597', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('01a10b0e-77cf-4465-b9c7-e8c3e8990b97', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.784', '2022-12-10 15:59:41.452', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('02336556-b86b-71b9-3dae-7fe567c1492f', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.425', '2022-12-10 15:59:45.031', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0270ea0b-e82b-b545-52f3-b88dc8d22eaa', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.142', '2022-12-10 15:59:40.690', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('028d4c99-70f3-2000-7a10-10e2a7033ddb', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.671', '2022-12-10 15:59:47.535', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('028ed474-99dd-e204-601a-0e7882ac2031', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.769', '2022-12-10 15:59:44.947', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('02b1738a-ed89-05d3-4366-bfe16a68494c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.761', '2022-12-10 15:59:44.757', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('03325039-452c-8be6-5112-b158e3efb6a1', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.167', '2022-12-10 15:59:48.102', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0348a610-6b83-b10b-ad50-d65b8cf1efe4', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.777', '2022-12-10 15:59:43.229', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0372f546-9712-cf45-4156-0ecd7278aa29', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.431', '2022-12-10 15:59:49.464', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('039ddaa0-c80e-4d9f-092d-0b075746ff0c', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.377', '2022-12-10 15:59:40.383', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('03a429da-09a9-d9cd-b79d-91005a78743d', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.105', '2022-12-10 15:59:43.788', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('03bb3469-e022-e232-8ef1-ce899a690d83', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.818', '2022-12-10 15:59:41.651', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('03c1f278-1bed-0070-c617-86ad00ce633f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.456', '2022-12-10 15:59:48.478', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('03eb0879-6a50-fef7-17ec-00401cc581d2', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:43.447', '2022-12-10 15:59:41.883', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0470ba1e-4855-2fa1-ccfa-0466fc191cbf', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:41.987', '2022-12-10 15:59:48.771', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('04838318-bcfa-1d99-55eb-1af0a5f2b444', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.888', '2022-12-10 15:59:42.180', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0487bc38-c996-c57e-c90a-e1813cc4674b', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.708', '2022-12-10 15:59:43.062', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('048ea521-5bef-5caa-dffb-7c8ba28a4927', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.762', '2022-12-10 15:59:48.705', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('04f8e2d9-e58d-0172-52eb-2aff91e1399f', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.962', '2022-12-10 15:59:45.888', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('04f9ced5-f116-21ca-690e-a512a957cd19', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.973', '2022-12-10 15:59:46.515', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('050b6e0a-82d3-e6ad-0ff4-bf7866d17885', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.506', '2022-12-10 15:59:48.019', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('053423a6-a2bb-66f3-e743-dda607276f55', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.680', '2022-12-10 15:59:44.328', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('05407032-e559-afe5-5b18-acaa05bd9f9d', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.550', '2022-12-10 15:59:44.688', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0570e645-04d8-1ad2-f7f5-c71b8283ff53', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.271', '2022-12-10 15:59:45.702', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('05af7354-a004-9ba7-be62-7df1d525b07a', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.381', '2022-12-10 15:59:41.532', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('06124ede-605f-bc85-259f-d2b6638ad695', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.873', '2022-12-10 15:59:44.438', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('06205d73-0501-0768-c9d6-06a8e2c3c372', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.190', '2022-12-10 15:59:46.120', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0669e4cf-11d4-a2d5-e835-ce736f6a0da3', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.034', '2022-12-10 15:59:47.904', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('06bdb058-9378-d2fe-6e97-d9bc24771d41', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.045', '2022-12-10 15:59:42.146', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('072848d9-f169-8c22-2a43-ec04ab6194c3', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:48.433', '2022-12-10 15:59:49.044', '1', '2', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('07345509-dc03-c46e-e4c0-22f8f21a5cbb', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.536', '2022-12-10 15:59:49.543', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0766809d-a7be-b964-af7b-52af5ca3085c', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.270', '2022-12-10 15:59:41.633', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('07c5175e-0b16-88ae-0047-97dbebc89649', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.823', '2022-12-10 15:59:48.004', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('07f0ece8-3116-6296-4413-16e59504a4c8', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.663', '2022-12-10 15:59:43.118', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0883fb47-e914-6724-749c-a7c73c7d3ab2', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.594', '2022-12-10 15:59:41.511', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('08f8260b-b0eb-7ce4-3119-1055f6b9c34c', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.467', '2022-12-10 15:59:49.717', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('093c035c-e37f-bc23-70a8-5a947486f463', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.904', '2022-12-10 15:59:42.344', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('09ad1622-9dd6-edbd-8c99-c52f0d4ccd93', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.576', '2022-12-10 15:59:46.977', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('09b583fc-35a7-15c4-3664-8aae521621b1', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.764', '2022-12-10 15:59:46.149', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('09c61de2-b974-f278-5a7e-c9853e1a20b2', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:46.451', '2022-12-10 15:59:45.704', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0aa4ec45-d1c3-7dc9-727b-1a06771cb20a', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.525', '2022-12-10 15:59:48.434', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0ac474cb-6da7-99fc-983d-f68fd6628007', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.502', '2022-12-10 15:59:44.692', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0b1fba6c-8ec1-43b6-0065-83e8baadf7a4', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.677', '2022-12-10 15:59:49.838', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0b2920cc-05a2-e932-e285-b62070ed78e6', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.455', '2022-12-10 15:59:48.750', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0b3d35da-4d0d-8fee-4a22-b2e069e776e1', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.862', '2022-12-10 15:59:46.916', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0b668319-a1db-ab7e-39fb-3c81b32ea87e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.800', '2022-12-10 15:59:47.510', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0b6a9b52-04a7-0afe-e562-dd3bc23c02fc', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.826', '2022-12-10 15:59:43.589', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0b7cc1d5-4fa4-fe59-3a3d-f1bb4fb2d53b', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.516', '2022-12-10 15:59:43.251', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0b82ed87-c438-1187-66ec-72aed86cbe22', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.164', '2022-12-10 15:59:40.353', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0c9e24f7-924b-e1b1-171f-acb8bc704562', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.195', '2022-12-10 15:59:43.528', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0cf40312-aff2-b316-7067-5847d68ed5c0', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.634', '2022-12-10 15:59:44.841', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0d868ab7-78a7-e856-9ef0-c76da5bf17d2', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:48.451', '2022-12-10 15:59:44.568', '2', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0d8c1d74-6713-654e-7ec0-3ef25c7b45d4', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.281', '2022-12-10 15:59:42.540', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0df87a77-ef10-6803-ce2f-01bdbf29d659', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.761', '2022-12-10 15:59:47.847', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0e026f1f-73bd-0507-63c3-d9818b43d01f', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.686', '2022-12-10 15:59:43.442', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0e59f544-c547-824c-69bc-a1fd9057eb10', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.966', '2022-12-10 15:59:40.209', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0e9c5030-66ed-64a1-f836-3cde31cbcc6c', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.115', '2022-12-10 15:59:48.654', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0eda23d3-45bb-344a-13cc-0988eb3c14d6', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.212', '2022-12-10 15:59:45.300', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0edaa062-e903-f7bb-7842-e2327315883e', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.166', '2022-12-10 15:59:41.248', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0edbc140-c349-abe0-3872-5472dac3742c', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.413', '2022-12-10 15:59:47.944', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0f06ab9e-d36d-fab0-8dd0-2521375a04aa', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:45.578', '2022-12-10 15:59:43.709', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0f1118ac-65e2-9cec-7211-3bd27371dc1f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:41.259', '2022-12-10 15:59:48.522', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0f3200c9-b1c1-1479-c9d8-5a9e05720f09', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.830', '2022-12-10 15:59:42.615', '1', '2', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0f6c9b66-7e10-7125-7ee6-2cc77bd33bbe', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:49.196', '2022-12-10 15:59:44.498', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0f7544fe-d334-ceaa-35dd-0f42ba81c0e8', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.977', '2022-12-10 15:59:47.323', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0f782e7f-13ab-9e2e-a1b5-297d48905651', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.582', '2022-12-10 15:59:49.339', '2', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('0f82c8a0-f59f-b2ad-3619-bdceb05310a4', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.246', '2022-12-10 15:59:46.373', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('0ff4e68a-42b3-4cf9-8b14-1b6292ac3431', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.618', '2022-12-10 15:59:46.747', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('111919af-0a57-c861-bb7a-5ee8614d439c', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.506', '2022-12-10 15:59:42.422', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('113d3c4a-3ad9-e91a-439a-a5178985cd65', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.968', '2022-12-10 15:59:44.052', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('113ea8d8-776c-f539-24cd-b86bc5433419', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.558', '2022-12-10 15:59:49.618', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('11c1d1e2-3bfd-d8cb-10d9-feea9a24bae6', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.093', '2022-12-10 15:59:42.077', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('11c2ac6a-ad6d-a9d1-694b-db9d2a5ae67f', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.125', '2022-12-10 15:59:40.026', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('134dfdce-29f6-745e-e015-5c5c0231a3a8', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.486', '2022-12-10 15:59:45.351', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('13ea0878-e7f5-8daf-671e-75a7b38c8039', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.223', '2022-12-10 15:59:40.028', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('143450d5-c9ea-1d95-2fbf-a449d78d30b8', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.994', '2022-12-10 15:59:45.429', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('147f4831-b26c-ee7a-0791-d5ddc30cdfa7', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.112', '2022-12-10 15:59:42.660', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1507abd6-665b-62b9-da20-9f3107dfa4b5', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.407', '2022-12-10 15:59:41.799', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('15669c01-25cc-8786-1202-dafe51a334b3', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.721', '2022-12-10 15:59:41.191', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1575202a-d112-4d09-7548-e92504561492', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.839', '2022-12-10 15:59:42.318', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('157bc95b-7e9f-1069-0910-3d8b3c6fe043', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.089', '2022-12-10 15:59:43.394', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('15b67152-6df2-1cbd-dcb1-93b34cd0af6f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.118', '2022-12-10 15:59:45.661', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('15e25614-bc03-95ed-3d5e-c68b49f83d4b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.413', '2022-12-10 15:59:41.109', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('15e412ff-46d9-65d2-4f32-e0f784deef64', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.818', '2022-12-10 15:59:40.475', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('16d395c9-ea85-5271-0883-cb0beab92028', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.475', '2022-12-10 15:59:44.977', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('16e5446b-360a-3eff-7260-2b9696e9599e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.298', '2022-12-10 15:59:42.151', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('16f3a7c0-ec0b-83b5-b643-d26201a8c619', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.955', '2022-12-10 15:59:41.205', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('176dbfdc-d54b-3977-edc3-1bbec8d9127c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.007', '2022-12-10 15:59:45.040', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('17cac8a8-365e-0a17-3014-6ac6e99a7bba', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.218', '2022-12-10 15:59:41.021', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('18839053-4089-330e-0bd8-2be1938eaf25', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.746', '2022-12-10 15:59:48.988', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('19238e1d-9e1d-ffc2-2c31-950e3a3302ea', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.224', '2022-12-10 15:59:44.189', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('192997c2-03d7-c761-3556-485e850323d5', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.145', '2022-12-10 15:59:44.706', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1a113334-904d-c484-7469-f193c7d7ae8a', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.003', '2022-12-10 15:59:46.250', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1a480b99-9854-e1f0-4429-ebc312b0e9bb', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.528', '2022-12-10 15:59:48.563', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1a73a879-401a-dd08-eea6-13829c6f565f', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.339', '2022-12-10 15:59:48.093', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1ad2ead4-a2ba-cfd4-842f-bba77b1f9a91', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.145', '2022-12-10 15:59:40.615', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1ad94d68-71eb-fac6-72e0-446d7949aebd', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:46.590', '2022-12-10 15:59:42.309', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1ae06697-f483-04e9-4a8a-79c080908d1d', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.893', '2022-12-10 15:59:44.095', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1b01845a-5fa0-b8c3-6220-30444a21760e', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:43.258', '2022-12-10 15:59:46.212', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1b7ffdac-d3ca-371a-9dbe-4b514a741c2b', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:47.949', '2022-12-10 15:59:45.740', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1b91364c-d535-4877-dd0f-4813217b356b', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.494', '2022-12-10 15:59:47.440', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1bc67b01-f22d-073a-0415-ffe0df003f92', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.147', '2022-12-10 15:59:49.226', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1bf2f69c-fbf0-da8b-131a-abefa05c7766', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.739', '2022-12-10 15:59:45.210', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1c5f8cf1-8d5a-4d0f-a393-f5fbc53d3b0c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.674', '2022-12-10 15:59:46.928', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1c7c2761-fa26-4cd5-ed04-ad3d6050ac04', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.664', '2022-12-10 15:59:48.392', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1c8eb027-4a3b-338e-3f92-9a3ed766e179', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.755', '2022-12-10 15:59:40.018', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1cdcf6cc-2a94-8b92-c1de-26f84fddd15c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.387', '2022-12-10 15:59:43.712', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1da2ecd5-4273-c969-e008-d01a417d7ed3', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.868', '2022-12-10 15:59:40.455', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1db5c911-71bb-8a84-5a8f-8dc496e4199b', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.199', '2022-12-10 15:59:49.923', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1df12083-6519-754a-29a3-5f3ca7644cdd', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.783', '2022-12-10 15:59:41.618', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1e4a6ad3-bc91-4b8f-7f05-6068a04a9b06', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.924', '2022-12-10 15:59:41.119', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1e5443fd-0d1b-21ee-beb9-11b732d9842a', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.147', '2022-12-10 15:59:45.043', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1e773f18-595c-a468-7767-b8cb45e6d560', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.193', '2022-12-10 15:59:48.244', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1e92beed-328d-ba9d-8b3d-ea62dee42712', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:48.980', '2022-12-10 15:59:48.382', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1ef774ff-2e98-6a65-bcc2-2f0764db71a7', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:41.766', '2022-12-10 15:59:40.957', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('1fda3621-23c8-e13a-4c8f-0f4861b40840', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.336', '2022-12-10 15:59:47.079', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2020f28e-67dd-9b53-096a-df34b6a049b1', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:47.859', '2022-12-10 15:59:42.826', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2106002c-1ee3-8589-7e0e-f541b1c6ecf5', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.204', '2022-12-10 15:59:42.230', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2150a653-9dcb-a1ad-1a44-e4625d3dd591', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:48.555', '2022-12-10 15:59:43.593', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('21717544-9b58-ee1a-403f-e673f2b8d602', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:45.313', '2022-12-10 15:59:43.482', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('224096a8-9232-9916-88cd-264d98a1a608', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.455', '2022-12-10 15:59:40.120', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('22922a68-68dc-1b47-52f3-e5b270843fff', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.159', '2022-12-10 15:59:46.871', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('22a07ed3-8bc5-b0ec-ee48-c6e0d84ab477', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.729', '2022-12-10 15:59:40.976', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('22eef1f5-e0fc-143a-3ae4-b2b2201fb320', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.067', '2022-12-10 15:59:43.484', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('22fb5799-b02b-b07f-8f6e-22305aea0a5b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.625', '2022-12-10 15:59:42.076', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('231797a8-deff-e045-ad6a-9eb72a278194', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.427', '2022-12-10 15:59:42.498', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('233c587f-692e-9dd1-2025-7414e824724a', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.250', '2022-12-10 15:59:47.851', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2376868c-8e2b-2916-cd0a-ef8f95a2b91b', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.789', '2022-12-10 15:59:49.996', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('23839abf-4e93-416a-7c68-c394e31e454f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.815', '2022-12-10 15:59:42.469', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('23dc7717-d5db-0684-9dab-b6c5c396bee6', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.547', '2022-12-10 15:59:43.794', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2410971d-2fb4-b870-9431-56a66247ee0b', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.382', '2022-12-10 15:59:45.362', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('245e442d-15b7-2321-70d4-648f6c8462f5', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.353', '2022-12-10 15:59:49.703', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('24943efc-1f67-5028-33fb-0832dc40cab2', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.557', '2022-12-10 15:59:40.335', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('24be7b9a-056a-834d-05b8-1ecef1a3205c', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:40.098', '2022-12-10 15:59:48.692', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('24c03553-a123-d1c3-3f50-75d50d6dbe5f', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.267', '2022-12-10 15:59:49.928', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('24ddc0df-cd7e-a1f3-488a-4a0e0850160e', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.665', '2022-12-10 15:59:48.329', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('25010fe8-4e0e-06f2-789d-b32cf65ef24e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.341', '2022-12-10 15:59:48.681', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('251ee713-6a32-19f0-3018-cb7677b5fa48', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.736', '2022-12-10 15:59:45.923', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('25aef779-cb77-9784-e3f3-a6677054b956', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:48.408', '2022-12-10 15:59:44.697', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2604fe89-eaf2-2cc7-d02e-503937306f18', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.071', '2022-12-10 15:59:47.887', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('26090eb3-691d-5112-5283-c9e43d2c7260', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.133', '2022-12-10 15:59:44.274', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2692f2e9-bf58-933d-b5cc-f063b35d658b', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.446', '2022-12-10 15:59:49.801', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('26fe6a82-8819-e1ff-3322-5310f91fec8b', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.340', '2022-12-10 15:59:46.251', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('27f96073-6c94-6370-8c72-a194135b2486', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.560', '2022-12-10 15:59:46.074', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('283daf27-d09b-47ff-0e00-77893662ccab', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:42.473', '2022-12-10 15:59:40.618', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2898c54a-8fdf-d303-b279-6181efd816ed', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:47.390', '2022-12-10 15:59:41.220', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('28fa47cf-df5b-a145-efce-381734432875', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.880', '2022-12-10 15:59:45.800', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('29359a44-5285-78c3-e767-4ab6d6ba2f54', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.296', '2022-12-10 15:59:41.655', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('295b3ce0-ed54-7085-08bf-d45017d498b3', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.606', '2022-12-10 15:59:44.179', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('29c85846-c409-85ae-9628-097b2a6c0bb6', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:48.804', '2022-12-10 15:59:40.388', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2a0bf1c3-626f-b8d2-ccf5-8e82fbaca471', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.616', '2022-12-10 15:59:45.019', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2a6625b8-6572-f56a-5fb4-b1a439510c1a', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.600', '2022-12-10 15:59:44.051', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2b269816-2e2e-eb45-f2cf-6ed674ef02f8', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.425', '2022-12-10 15:59:47.194', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2b53ffe8-eb9a-fd95-4209-56bd538d82e2', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.667', '2022-12-10 15:59:48.332', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2bb377dc-c6af-51c6-1ac0-09053b2c898e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.711', '2022-12-10 15:59:42.929', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2be7437b-e04e-e053-3be6-842991991689', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:48.184', '2022-12-10 15:59:40.413', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2c1c6a50-83e2-9a74-f73e-326765e9d222', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.910', '2022-12-10 15:59:49.472', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2c3d010e-12f0-7486-b853-59686ad9db34', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:45.112', '2022-12-10 15:59:40.691', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2c5f5246-4383-a995-922b-ce126d8fcf7a', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:41.404', '2022-12-10 15:59:40.625', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2ca33ab0-4c05-d1ce-11ea-b3318d68884d', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:49.696', '2022-12-10 15:59:40.986', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2ccb6b14-9e0b-ffee-2a7f-0abee483bbbc', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.466', '2022-12-10 15:59:48.862', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2d110373-1527-cd35-6abc-f4ad7b3d4baa', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.702', '2022-12-10 15:59:48.286', '1', '0', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2d29a20f-3196-7d1d-7eee-3bb79888a0af', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.854', '2022-12-10 15:59:49.567', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2d52d317-0962-e193-a1ce-99a4adff939f', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.513', '2022-12-10 15:59:43.134', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2dba4c86-3b4c-3c47-3c9a-245154e8ee5f', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.202', '2022-12-10 15:59:45.142', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2e0a5ff5-6ab8-557f-51fb-6a763e757a96', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:41.036', '2022-12-10 15:59:45.669', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2e4c24a9-8962-11e3-0ca7-7a8c4506b760', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.265', '2022-12-10 15:59:47.971', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2e4d0246-1fef-a252-b913-3aa01e9f8304', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.590', '2022-12-10 15:59:46.168', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2e5ee76e-c798-f5e9-bf4b-54bb26653220', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.397', '2022-12-10 15:59:46.994', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2e9ce4ca-4ac2-ca94-bfe7-2fb581dba172', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.489', '2022-12-10 15:59:41.034', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2f0f6668-607a-99fd-b24e-2a582297a49a', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.694', '2022-12-10 15:59:49.859', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('2f2b1ab1-78a5-8a4a-c5b4-f9943fd87bde', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.344', '2022-12-10 15:59:45.859', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('300091d2-8737-b264-786b-4465e1269f90', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.469', '2022-12-10 15:59:42.534', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('302bc1e3-7599-7a14-dff0-38ae39b06f63', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:45.717', '2022-12-10 15:59:42.859', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('30825c52-365f-6f80-d6ec-1da1ebc1b9a6', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.896', '2022-12-10 15:59:48.692', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('30ae6430-8920-bd21-e41c-aeea251e434d', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.285', '2022-12-10 15:59:41.527', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('31090a4b-0631-f7b9-1305-ad4d9c3962b7', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.938', '2022-12-10 15:59:49.188', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('317a541a-21e1-2093-6b5d-23a7abff77cf', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.777', '2022-12-10 15:59:47.421', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('318cbad2-5c39-42a7-7d59-a15eda1fe511', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.728', '2022-12-10 15:59:40.823', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('31f392a2-d36c-04d0-5583-a79bdab272c8', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.567', '2022-12-10 15:59:43.423', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('327e15a2-22f3-0c93-2a5a-d5247833dec0', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.032', '2022-12-10 15:59:43.108', '1', '0', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('33269555-72c2-bc99-c7e8-faa51672b134', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.981', '2022-12-10 15:59:49.807', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('33de3554-61ae-86db-ce1e-0b7b4d15ba66', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.089', '2022-12-10 15:59:48.244', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('34221ebf-488e-6702-9e9e-5d1233eab97a', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.541', '2022-12-10 15:59:49.527', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('342fe3aa-ed5b-0b13-569c-976050a54b92', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.713', '2022-12-10 15:59:49.734', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3449332c-460a-1aa3-7e74-a6cfc71d42bb', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:43.602', '2022-12-10 15:59:42.243', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('34613616-8cd2-e0af-80da-86d5faf1382b', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.736', '2022-12-10 15:59:43.380', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3480304d-7000-33be-0821-a0f9c69e5e3b', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.411', '2022-12-10 15:59:42.359', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('34ad57cb-d49e-7cee-e444-35993538e9b8', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.564', '2022-12-10 15:59:47.349', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('34f2d8af-4b98-57f6-4a0f-03121afd3825', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.352', '2022-12-10 15:59:44.584', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('35342983-ff29-4858-32f8-1a84f2f17fdc', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.669', '2022-12-10 15:59:42.558', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3661739f-c0ee-ec8a-ca5d-701b1bb54875', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.066', '2022-12-10 15:59:46.506', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('36737fd1-eb1c-60cb-1f95-b627a75038d3', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:43.128', '2022-12-10 15:59:45.369', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3696ed97-dc50-c174-7600-8907eda4d018', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.485', '2022-12-10 15:59:45.775', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('36ab4037-79c3-84c6-cf87-c16e87aaf744', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.565', '2022-12-10 15:59:41.778', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('371864e3-8457-5339-891b-5f03633ff6de', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.612', '2022-12-10 15:59:47.783', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('37392245-c492-7823-7cca-92219066e0a3', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.586', '2022-12-10 15:59:49.873', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3750bee5-e140-a9c4-ed2f-655513a5ba8e', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.144', '2022-12-10 15:59:43.312', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3768d904-6322-e6a3-1c41-af59d698963f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:46.503', '2022-12-10 15:59:43.232', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('37fdeb0a-2b8a-22b3-ef21-84e4849efdf8', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.754', '2022-12-10 15:59:40.866', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('385b90fd-66bd-01e0-f205-6e9dc3e3fdd5', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:43.781', '2022-12-10 15:59:43.133', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('387e7397-37e7-a3bb-ceca-c20cb6536644', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.694', '2022-12-10 15:59:47.864', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('38a4b2b8-152c-bf48-c189-ea53c01e438b', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.981', '2022-12-10 15:59:40.649', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('38e92f1c-62db-5b69-3340-573515ae9a2a', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.265', '2022-12-10 15:59:45.699', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('38ff1beb-5bdf-ae2b-c9ff-32d04618e4e4', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.801', '2022-12-10 15:59:48.190', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3906ac4a-ccb6-9caa-eada-b15c102e609d', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.560', '2022-12-10 15:59:43.039', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3920bf3f-2316-b545-df11-d3ee6b26555c', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.203', '2022-12-10 15:59:40.297', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('393f0815-87cf-1a02-eb94-fcdec3cdee42', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.084', '2022-12-10 15:59:44.071', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3993be71-0d48-f616-d35f-edec45c7c2b9', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:49.304', '2022-12-10 15:59:42.985', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('39a090c8-6d01-1560-4bb7-28ccf7df59ab', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.830', '2022-12-10 15:59:45.341', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('39dfc467-879d-ce12-2346-f84341b765d5', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.030', '2022-12-10 15:59:45.253', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a07ce53-2fd9-0870-21fe-66316aa550f7', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.256', '2022-12-10 15:59:43.664', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a0d49b6-e2e3-5f70-2d9b-5f43dd69583f', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.875', '2022-12-10 15:59:46.796', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a120812-0291-ec4d-633e-2dfa3640e1b1', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.617', '2022-12-10 15:59:41.142', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a1fda26-5e1d-ed72-a1ef-2bf7c1b3b288', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:41.367', '2022-12-10 15:59:40.677', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a2193bd-9df3-bb5b-bedd-d4e2fd201099', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:45.830', '2022-12-10 15:59:47.350', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a4aa369-8732-58e3-b3b4-dae4be82f359', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.682', '2022-12-10 15:59:43.740', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a55f851-8ff2-ddec-b742-b145c51006a9', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:43.229', '2022-12-10 15:59:40.774', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3a8e7930-7148-9d1f-a956-49fa28a3fbce', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.653', '2022-12-10 15:59:46.702', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3ac32d0c-4fa3-4276-6258-ba39c6e13c4a', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.553', '2022-12-10 15:59:40.375', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3adb6172-6d76-aa86-07e4-46b9e0ff940f', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.544', '2022-12-10 15:59:44.876', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3bafe2f8-1f57-e912-058e-011d1d1aac08', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.629', '2022-12-10 15:59:41.555', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3bbd938e-a49b-36c5-0618-db948cf3cae2', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.004', '2022-12-10 15:59:45.182', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3c532a9b-e920-a09e-dfc2-4cc5b7087e31', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.464', '2022-12-10 15:59:46.035', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3c883202-8968-d70a-baf7-5fe5c16d1dc4', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.139', '2022-12-10 15:59:48.218', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3cf893b0-237e-777a-7dbf-19f79745066d', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.347', '2022-12-10 15:59:41.836', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3d20677f-fcbe-87fa-89ac-4d15704cbd83', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.350', '2022-12-10 15:59:43.495', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3d3f4341-48e7-b05a-fe91-a25d72068f4e', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.593', '2022-12-10 15:59:41.215', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3d426f39-9661-a725-50ee-db4c848d5216', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.570', '2022-12-10 15:59:44.499', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3dba0cc2-6f0d-217c-a898-f4993ebaf282', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.544', '2022-12-10 15:59:49.047', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3dca1088-7666-6429-6278-03e868e7d66d', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.986', '2022-12-10 15:59:43.820', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3dd82449-5e07-199e-d13f-a6eb17f7ec75', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.305', '2022-12-10 15:59:46.405', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3e849af7-c7f4-d556-b3c1-9ed61e89f492', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.358', '2022-12-10 15:59:43.261', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3f3d398d-fa06-8784-9053-5de7089cc5af', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:41.955', '2022-12-10 15:59:45.647', '2', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3f455673-7a8a-262e-3fc3-618f2533dc52', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.436', '2022-12-10 15:59:42.761', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3f636d0e-fc69-1399-30fe-fe74b4e78284', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.586', '2022-12-10 15:59:48.253', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3f8ca183-5012-b80e-a0d6-66de4dba634a', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.743', '2022-12-10 15:59:46.562', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3fa2f197-b712-84c6-06a4-6fdd7d890e69', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.471', '2022-12-10 15:59:45.123', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('3fc55b15-93a1-1d47-034e-50ed3fbdffd0', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:40.985', '2022-12-10 15:59:49.924', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4093ebd7-592d-e8fa-1f43-44503cbd0508', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.945', '2022-12-10 15:59:47.147', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('40a355bc-97d6-eb82-b3c8-970fcf98ef42', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.269', '2022-12-10 15:59:44.487', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('40c27836-14d3-69b7-713e-6d13814a63c7', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.067', '2022-12-10 15:59:43.911', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('40e16d91-1f29-b9eb-b835-47894d68e84b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.652', '2022-12-10 15:59:48.354', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('417e19dc-989e-f0e0-3033-3cca6329bc7a', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.657', '2022-12-10 15:59:41.351', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('41fb4069-7005-b95d-9f6a-22ada27016b8', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:41.128', '2022-12-10 15:59:46.879', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4209da5c-d493-9566-5d83-e44dd541dc20', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.920', '2022-12-10 15:59:42.438', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('425a3c02-96ea-89b2-453b-b33f81d84b95', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.925', '2022-12-10 15:59:49.968', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('42825f32-fb05-a416-91a6-eaa2d8ac8db6', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.252', '2022-12-10 15:59:43.118', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('43b3aedf-5338-9eee-4f7d-09dea5189928', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.063', '2022-12-10 15:59:47.397', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('44316c96-3377-9855-8a4a-8d7b2aab88a7', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.714', '2022-12-10 15:59:46.469', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4454ee0d-a0be-c906-b0cf-82665fb64500', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.815', '2022-12-10 15:59:48.293', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4465ee39-6d40-650d-a7ba-e41a810e594e', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:43.390', '2022-12-10 15:59:41.997', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('447843f3-f69b-300e-066e-e5a30023aff3', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.436', '2022-12-10 15:59:47.728', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('44873696-421e-7486-756e-1fedd78634b3', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.773', '2022-12-10 15:59:47.139', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('44920680-2093-aeb2-7e00-44b3916c1fa6', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.869', '2022-12-10 15:59:41.132', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('450b765b-89c5-5a6c-ac8b-b2ecf4b5d2b4', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.625', '2022-12-10 15:59:45.811', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4535a198-671a-4849-b671-c92334c973bb', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.187', '2022-12-10 15:59:49.883', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4558eb1e-f958-7193-79a2-acebb2703014', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.325', '2022-12-10 15:59:49.577', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('45e95ffa-3f65-5a76-5ff0-01b3c4dd41c7', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.681', '2022-12-10 15:59:48.777', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('461a530b-14ca-05d3-6e2a-dad697c434d9', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.263', '2022-12-10 15:59:47.369', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('46f37862-7a80-2ab1-3b15-f8993087a780', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.381', '2022-12-10 15:59:41.784', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('475a66d1-8a42-3388-dd3a-31bbfb6ecc57', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.097', '2022-12-10 15:59:42.699', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('47cb5447-decb-a211-343d-1aaab53fff48', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.690', '2022-12-10 15:59:43.035', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4833609b-cfb0-807b-6d66-f471ac4cff05', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.089', '2022-12-10 15:59:45.629', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('483d0fbe-0a24-80a6-a64c-04ae6a79988f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.516', '2022-12-10 15:59:49.102', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('48755e93-04f1-8bcb-ac5b-df6c8510fefa', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.178', '2022-12-10 15:59:44.064', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('48926f09-20bc-100a-c77d-d83e50865f2e', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:40.150', '2022-12-10 15:59:44.892', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4897bf24-0a26-41cc-8c27-c906c2ca2ebf', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.561', '2022-12-10 15:59:49.266', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('48c2063c-170d-a8e8-a7a3-d042966f6677', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:42.365', '2022-12-10 15:59:45.762', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('48ea0941-378c-b900-713c-109d623c5baa', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:40.652', '2022-12-10 15:59:49.692', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('48ecbcfe-5178-1d7a-797d-efd9c55a70b8', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:46.997', '2022-12-10 15:59:45.158', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('495c4141-27df-d425-b21d-9c15528e8798', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:40.919', '2022-12-10 15:59:49.442', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4987d1cf-76ac-7589-0f39-2201fd0fe6f1', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.802', '2022-12-10 15:59:48.656', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4ae1fada-b254-f5b0-3c37-278c7dcd9de3', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.848', '2022-12-10 15:59:45.833', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4b0efee6-0d14-0fa9-6a62-f1b167b2b512', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.301', '2022-12-10 15:59:45.780', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4b272bf1-a7b7-5879-7c24-63a90d0014bd', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.063', '2022-12-10 15:59:40.039', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4b644862-59fa-d6bc-7cbb-247244ef0cbd', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.745', '2022-12-10 15:59:49.945', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4b87b71d-7608-537f-bdb4-28942ff9b8bb', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.303', '2022-12-10 15:59:47.026', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4b9e1acd-a399-ae31-e592-eb35f8c0211c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.057', '2022-12-10 15:59:42.231', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4bf4f557-9b19-f2c3-a6e8-241dee226245', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.507', '2022-12-10 15:59:49.548', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4c75a3ae-f96e-38c2-c881-db9cec5ce8b6', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.507', '2022-12-10 15:59:40.362', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4caec3cb-9862-f098-e33b-261988075633', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.397', '2022-12-10 15:59:47.229', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4cf32b13-58d2-9e25-c04b-4bc7d8bd2bd1', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.553', '2022-12-10 15:59:40.390', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4d44c8b2-3c39-011d-496c-d737adb49435', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:48.732', '2022-12-10 15:59:46.488', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4d568c13-77bc-9471-8c96-a5cf00eaa5e5', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.523', '2022-12-10 15:59:42.136', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4ddf9c24-c313-9a1e-b048-54cc26b0d397', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.075', '2022-12-10 15:59:41.260', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4dfadfa7-1590-a8de-323a-00aa9ea3b618', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:47.423', '2022-12-10 15:59:46.880', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4e05410e-758a-186b-60fb-1fab9f3746cb', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.263', '2022-12-10 15:59:47.155', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4e21d426-6a54-21a0-de86-067683a38e9b', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.091', '2022-12-10 15:59:48.061', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4e5b8eb7-3cdf-67e8-0e20-769fe8451282', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.998', '2022-12-10 15:59:43.901', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4eb89a7a-7ced-1e55-8941-3739c3efe358', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:47.762', '2022-12-10 15:59:40.060', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4f117bc2-2db7-6fa0-cf92-41d465cc0462', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.827', '2022-12-10 15:59:44.366', '1', '1', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('4f21b631-c644-9d98-43fc-6e0ef9b261a2', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.495', '2022-12-10 15:59:47.175', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4f312185-2b96-980c-21fa-5a6eb77a32c5', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:48.720', '2022-12-10 15:59:42.415', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4fbafc75-66f3-f06f-d161-bf44526d4fb4', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.475', '2022-12-10 15:59:42.408', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4fbe3339-9e63-6892-beb5-08d2d098d23e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.827', '2022-12-10 15:59:41.743', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4fec82bf-3552-4d9e-262b-f7b8640c8c97', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:47.142', '2022-12-10 15:59:44.942', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('4fee072e-10f7-8a3b-5136-1f745010bc31', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.448', '2022-12-10 15:59:44.448', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('50052cb6-9f20-ddbc-0af3-04495b4608ae', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.319', '2022-12-10 15:59:41.094', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('503d4b39-54d0-558d-c4d2-be13bfafc237', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:43.721', '2022-12-10 15:59:41.392', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('50600eb7-b162-7825-3424-c0d8010e57be', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.935', '2022-12-10 15:59:48.909', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('506e9b0a-0326-ff26-4b21-4d7b0f459ed2', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.741', '2022-12-10 15:59:43.640', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('50aca712-7012-a962-7c36-11e7ce148784', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.590', '2022-12-10 15:59:44.965', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('512f3414-21ac-d3d7-38a1-66f773f3f735', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.490', '2022-12-10 15:59:42.657', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5171aa21-b235-7136-7695-905b7c4c246c', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.816', '2022-12-10 15:59:43.998', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5192870c-c621-79a1-65ee-a28faad2038b', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.490', '2022-12-10 15:59:40.268', '1', '0', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('51c589b1-b30e-6b41-6ce2-6f6255afe9ed', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.195', '2022-12-10 15:59:42.668', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('51cbe3fc-e174-ad31-3145-a54d1e225210', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:43.772', '2022-12-10 15:59:49.235', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('51d65137-de54-8c03-bbd2-4a1ec6ad05be', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.392', '2022-12-10 15:59:44.853', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('52092179-9a2f-13b3-e1cf-bdc5c61d1f28', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.769', '2022-12-10 15:59:46.658', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('52596139-3bc6-183e-03f0-05c01462a82f', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.519', '2022-12-10 15:59:43.646', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('531b4110-fcaa-2206-d2c2-4d8e18d50731', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.974', '2022-12-10 15:59:41.210', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('532aaced-a980-782d-8005-ba1613f19472', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:47.948', '2022-12-10 15:59:47.483', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('533d1a22-c5e3-915b-15c8-ac6fea8e44cc', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.243', '2022-12-10 15:59:49.810', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('534118a2-96f5-4f4c-7597-0a172616998f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.191', '2022-12-10 15:59:45.245', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('539b5ea0-ca1c-73c5-e653-3a6e86c24851', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.780', '2022-12-10 15:59:48.855', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('53eb059e-713e-2acf-eb36-8a8a9c49470a', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.506', '2022-12-10 15:59:44.209', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('53eb816d-75bf-d0a3-7793-7703f9ad15f0', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.751', '2022-12-10 15:59:46.781', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('54232f5b-25fd-6493-118f-357b383248ca', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.589', '2022-12-10 15:59:43.698', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('54486484-7aed-321d-afa4-4d93aeaef3b0', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.679', '2022-12-10 15:59:47.353', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('546e076d-025d-c3b3-03db-eb6a12b00a02', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:46.439', '2022-12-10 15:59:43.437', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('548193df-46ef-7105-3427-18ba9f4dee8f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.721', '2022-12-10 15:59:47.064', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('548c62dc-1849-5f34-7a9e-a029d1e4da79', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.023', '2022-12-10 15:59:40.271', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5495c631-7f85-e72b-ae06-a1f9b230e9d6', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.814', '2022-12-10 15:59:45.111', '1', '2', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('54a91834-4a86-0348-6b84-9af3e164943e', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.262', '2022-12-10 15:59:40.623', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('54ac20e7-f4a3-2996-a53a-2f4f389e8058', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.739', '2022-12-10 15:59:47.997', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('54d6db16-23ad-7910-4926-e1845df958a8', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:47.506', '2022-12-10 15:59:40.904', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('558b5dcb-68b9-202f-d3e7-1f3a74d87fa8', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.548', '2022-12-10 15:59:44.792', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5595fdaa-1c28-de91-1ada-5af5ee8cefb3', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.738', '2022-12-10 15:59:47.882', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('55a13511-c137-0fc4-8da1-1e7c9c699aaa', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.678', '2022-12-10 15:59:41.218', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('55a51a2f-c160-f915-eb6f-ee27df1cdc6f', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.663', '2022-12-10 15:59:46.934', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('55dade37-0353-9704-38e2-427918ec11f4', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.646', '2022-12-10 15:59:47.717', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('55e4f0da-56da-364c-7e83-bcd6748f7f26', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.053', '2022-12-10 15:59:44.380', '1', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('56176c49-2c55-e933-75f9-9a6fa2fe192c', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:43.394', '2022-12-10 15:59:46.016', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('56220e03-88d9-00a4-1b47-61382b8270eb', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.004', '2022-12-10 15:59:46.922', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('56d8d1b9-c476-5c46-4929-6116c9f87d3e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.544', '2022-12-10 15:59:48.873', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('56ddfc68-a95b-4159-3dd3-0095a9b20f86', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.141', '2022-12-10 15:59:47.548', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('56e349b6-9e20-374e-f25d-6bee93b8eb80', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:49.891', '2022-12-10 15:59:43.257', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('57588683-d29a-c2e5-b461-741b0d82185c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.545', '2022-12-10 15:59:42.938', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5760aa3e-2d09-a52f-14e7-fd80f2630efa', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.878', '2022-12-10 15:59:41.501', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('57652f70-5bf9-9615-646b-9006c31eb2ff', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.953', '2022-12-10 15:59:47.343', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('57d9294f-217f-4511-96f8-ad72634abfdf', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.225', '2022-12-10 15:59:42.003', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('57dc0485-4fd1-63bf-caa6-0247f06cf43c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.325', '2022-12-10 15:59:46.721', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('57e8ea8e-0b38-035a-bed0-5f7625107d70', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.462', '2022-12-10 15:59:44.523', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('57f38b29-d770-233c-cc0c-aae313c25624', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.119', '2022-12-10 15:59:42.512', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5875468d-74a9-abf5-8da9-2b483dfcd997', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:48.201', '2022-12-10 15:59:41.555', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('58b1ee8c-d432-afec-4678-684d0d7f6ec0', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.693', '2022-12-10 15:59:46.556', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5acdaeb7-689e-7e6b-0dc9-3c8da09cc398', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.521', '2022-12-10 15:59:41.731', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5ae2dfae-93f2-2316-0e9a-674c83403e18', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.931', '2022-12-10 15:59:49.184', '1', '2', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5b09a8f4-0e15-bed6-0ee0-d7b8e42550e2', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:41.077', '2022-12-10 15:59:45.673', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5b614e78-c88c-b5a1-99e2-9a2594b38f2c', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.894', '2022-12-10 15:59:47.671', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5b6b0059-21ee-01c0-05a3-8de1846810c0', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.585', '2022-12-10 15:59:48.531', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5bf9f0b9-9a0c-c8c9-145f-7374d93acb29', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.091', '2022-12-10 15:59:41.422', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5c09a2da-9801-b513-5d52-7a67b16f4143', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:45.044', '2022-12-10 15:59:44.292', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5c18b65f-184e-8008-f0d8-72f24cc2b836', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.927', '2022-12-10 15:59:47.718', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5cf3b6ae-be7b-f918-3320-efce0d9bc9ba', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.243', '2022-12-10 15:59:45.398', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5d79cfbf-948e-ac6a-2a4c-fa7d93969924', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.422', '2022-12-10 15:59:43.836', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5d9e02cd-a7b2-fbc9-ebc2-505595a7adb4', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.464', '2022-12-10 15:59:46.992', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5dc51344-0e41-3395-ebfa-62405941c533', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:47.129', '2022-12-10 15:59:44.452', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5dd736f7-64aa-3348-8c46-86a18d09d38a', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.458', '2022-12-10 15:59:43.674', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5ddc6f5f-c34f-d535-419e-1366e48c474e', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.723', '2022-12-10 15:59:43.446', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5e21175c-e452-3567-5c18-65b56c664d3b', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.870', '2022-12-10 15:59:42.760', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5eab79fc-67c3-b719-b57e-1d86cfca0179', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.353', '2022-12-10 15:59:49.968', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5efa0187-4a2d-f892-bca1-349378dedc60', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.845', '2022-12-10 15:59:46.250', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5f54c3ab-d438-de0e-5ff7-6edd3e355ac4', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.251', '2022-12-10 15:59:46.604', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('5fdd13fb-7308-ceb7-d3d6-6d98fd9ff86d', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.426', '2022-12-10 15:59:47.818', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6039b856-5742-4d7a-8586-a801d0ff91d0', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.308', '2022-12-10 15:59:45.455', '1', '0', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('604e5c04-01e9-4879-6b3a-4477ef07dcb9', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:47.124', '2022-12-10 15:59:49.073', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6082a3e1-cb8a-b4e3-5a36-8a1507551a2e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:49.143', '2022-12-10 15:59:42.205', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6096c8f1-9803-c371-ed7b-352cd4adf3c0', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.584', '2022-12-10 15:59:47.492', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('60fd86c4-2934-2661-147a-77589baa4d0d', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.062', '2022-12-10 15:59:45.415', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6173af7d-1ff9-6a72-bab0-dd43f2635b35', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.094', '2022-12-10 15:59:49.917', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6230aea4-0f8f-34df-4792-08f46543aa5f', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.641', '2022-12-10 15:59:44.606', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6244f135-0a91-fff7-f4f8-efa6e8598d55', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.409', '2022-12-10 15:59:49.038', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('624cdaa5-fdde-9cab-078a-fa0bb91c9645', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:47.209', '2022-12-10 15:59:43.378', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('62bab34c-ae35-2ed6-612d-f8fdd3b86e32', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.556', '2022-12-10 15:59:44.253', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('630101c1-16b5-0792-dd69-8236ae983b0a', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.677', '2022-12-10 15:59:41.079', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('631cb430-00cf-05bc-2052-2121cbbacfe5', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.180', '2022-12-10 15:59:43.249', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('63451df3-cda3-2cc4-bc8b-a29613cc9fa8', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.253', '2022-12-10 15:59:49.288', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('63dcc516-9ff9-0075-cd5d-01c117749d0c', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.282', '2022-12-10 15:59:45.127', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('63de1195-1321-4689-7166-6edcb41b8a2b', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.049', '2022-12-10 15:59:49.608', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('63ee9cae-c504-88b2-8321-d6344927cc04', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.534', '2022-12-10 15:59:42.387', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('63f9898e-8024-30a3-3882-18d2a3660df3', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.589', '2022-12-10 15:59:40.906', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('63ff88d9-b00b-2821-02e0-8f672f0b00b4', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.245', '2022-12-10 15:59:47.215', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6409d4d2-f768-0545-abd0-173000986ebd', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.713', '2022-12-10 15:59:40.359', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('648aef44-095e-c7ef-9d80-20a1d8d34dbc', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.814', '2022-12-10 15:59:46.620', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('64a9986c-6e22-a362-cc9d-5b73ba22cf31', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:45.529', '2022-12-10 15:59:49.613', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('64d692c6-8ec3-ffb3-6f71-d7f40cc989a7', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.250', '2022-12-10 15:59:47.959', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('64efcec4-78ae-37be-0d23-e0285cecac5f', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.646', '2022-12-10 15:59:40.605', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6565932e-3e00-c58f-e686-3c231055b89a', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.608', '2022-12-10 15:59:45.843', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('65d2f1ac-1c52-2910-b542-715e0d327f63', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.969', '2022-12-10 15:59:44.685', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('66036935-fe4c-cd92-479c-a530766e036f', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.405', '2022-12-10 15:59:47.006', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('663f84ba-74c2-4264-49e1-5e9e436296d0', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:47.380', '2022-12-10 15:59:44.785', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('66445f32-2957-b488-7225-905492675340', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.689', '2022-12-10 15:59:49.913', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6660ed47-37c0-493c-9924-60e89148a27e', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.514', '2022-12-10 15:59:47.433', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('668ac95d-e6e6-4201-f16c-5a29ded6cd9a', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.057', '2022-12-10 15:59:41.639', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('66ed698f-9338-9f7b-9c0a-f781d99ce7ac', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.946', '2022-12-10 15:59:41.619', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('672bbf56-a24b-c077-c70e-728f48455d21', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.907', '2022-12-10 15:59:42.782', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('673abc7d-697d-c041-bb04-2c73c8ef0040', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.102', '2022-12-10 15:59:43.643', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('673f1a05-3aa7-09c6-2f29-b2cfbe91f215', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.748', '2022-12-10 15:59:44.124', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6760cf06-ae31-9d90-3a83-8421e9a36045', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.131', '2022-12-10 15:59:47.643', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6835fba7-a8b1-e83e-eaba-4e320e50b8f3', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.162', '2022-12-10 15:59:46.097', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('68625f6a-f7a0-a75d-cfaa-c89ab6d3df82', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.879', '2022-12-10 15:59:42.909', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('688471d3-2d79-3e78-fa74-07d552756609', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.443', '2022-12-10 15:59:49.142', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6935be03-d7b7-058f-1c48-aceb1cd803d1', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.209', '2022-12-10 15:59:46.144', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6986d55e-077c-4653-b63d-aa2d9f6285f2', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.236', '2022-12-10 15:59:42.132', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('698f39cc-3799-41a4-9f1b-d7f027b96f1a', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:46.681', '2022-12-10 15:59:48.715', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('69c167d1-7879-a581-7a95-fc173ceb05ec', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.678', '2022-12-10 15:59:47.970', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('69d5e4f3-b203-0ceb-e11b-fd28b4249686', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.335', '2022-12-10 15:59:49.864', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6a1d0201-7e92-bdbf-8101-260a09a4e24e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.346', '2022-12-10 15:59:48.136', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6a5f692a-4af9-d3c0-bc71-9965ab86f2c8', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.569', '2022-12-10 15:59:49.023', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6a610514-890a-084e-c82b-8a0bc57f27a9', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.594', '2022-12-10 15:59:44.416', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6a860cc4-a481-2c28-4c64-1280ba83e1ae', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.216', '2022-12-10 15:59:42.990', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6ab22971-1c3a-0727-608d-e74be7e84462', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.520', '2022-12-10 15:59:49.526', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6ad28d60-18e4-fe31-cfb0-b8e072852efd', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.893', '2022-12-10 15:59:43.164', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6ba5a332-e5ea-1d9f-50b0-a1178abfd9d4', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.985', '2022-12-10 15:59:48.854', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6c2a7f5e-59e2-9d59-7918-41cf45f8cc78', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.872', '2022-12-10 15:59:43.585', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6c7b2c5e-d48c-d149-e855-ba8083d69c18', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.889', '2022-12-10 15:59:47.830', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6cdc4c5a-99b4-d5b2-21d3-b44cd8a38022', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.752', '2022-12-10 15:59:44.924', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6cf7726f-b6ed-4124-b796-4f32a0015706', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.433', '2022-12-10 15:59:40.524', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6d09bd63-780a-13ef-10d1-2e11142b5a7b', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.264', '2022-12-10 15:59:48.106', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6dbc7343-f254-db6d-8dc1-7f4633a0c55e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:41.843', '2022-12-10 15:59:41.505', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6dd7c484-bae2-f2c8-3607-3bfa94cbd916', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.471', '2022-12-10 15:59:43.052', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6e206872-fb30-3129-eec3-c28aeaaf4ea3', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.622', '2022-12-10 15:59:47.149', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6e326e62-acff-3572-8cf7-cf3e91bcc1f2', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.788', '2022-12-10 15:59:44.320', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6e490b06-a7ca-689b-2c03-d2fd3ccc5e64', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.474', '2022-12-10 15:59:45.306', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6e628110-2ae2-02d5-1eb7-8b8345cc81f1', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.915', '2022-12-10 15:59:43.495', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6ee8d318-308f-f984-bff7-310a924415b8', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:41.924', '2022-12-10 15:59:46.724', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6ef62da2-8492-5725-f261-3268239eb80c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.036', '2022-12-10 15:59:40.704', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6efcfa47-a1a1-0347-673d-7459fc683ee9', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.078', '2022-12-10 15:59:42.423', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6f967669-8e34-dc3f-95e4-397d29d72198', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.996', '2022-12-10 15:59:40.912', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('6ff3fdc4-a6b1-8577-2d2f-a08844fe2f26', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.798', '2022-12-10 15:59:45.462', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('70351f7b-2fec-5cee-2f2d-142ec8b2268e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.424', '2022-12-10 15:59:49.986', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7076b511-45d9-62ef-6432-453bd7b93a0f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.185', '2022-12-10 15:59:41.819', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7096d424-9946-f523-6156-bc03a7ccfa28', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.801', '2022-12-10 15:59:49.272', '1', '1', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('70d6279a-67b8-6a01-fa3b-0e5c1e8007d3', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:47.562', '2022-12-10 15:59:44.896', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('70fe9b19-b261-c206-8782-7dbd74ec7338', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.606', '2022-12-10 15:59:43.865', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('710dc7f9-2fda-e7e0-f181-4822f5097819', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.480', '2022-12-10 15:59:44.704', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7140bec3-aae5-1cca-4ac8-b1c5c507815c', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.522', '2022-12-10 15:59:41.624', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7164d7db-73ef-d4f8-11b8-784be3a371e7', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.002', '2022-12-10 15:59:46.103', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('71a4cc46-2a0d-b0d6-f1b9-7b2abd860996', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.045', '2022-12-10 15:59:44.933', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('71af0c9e-9442-0a4f-4f10-f22b4ec25d3c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.841', '2022-12-10 15:59:44.819', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('723a9a95-862c-d70a-8341-6acfc3f6cefb', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.608', '2022-12-10 15:59:42.155', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('72481af2-e843-f040-5bdd-716186a0bb8c', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.303', '2022-12-10 15:59:40.065', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('72a30e97-7160-d551-f7ef-9680dab2e1b5', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.496', '2022-12-10 15:59:47.752', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7309df95-f4d0-4d9c-c69d-ffab71372527', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.710', '2022-12-10 15:59:41.311', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('73a777d5-3f98-7886-0887-3b6f51b50d58', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.908', '2022-12-10 15:59:46.194', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('73e54e8c-4241-1a27-5711-f04dd0f26245', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.480', '2022-12-10 15:59:48.152', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('743c6db4-4adb-6291-62d3-0f1100ac5503', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:43.797', '2022-12-10 15:59:47.306', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7460c7d3-c207-5ad8-ea1d-fc155bd09719', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:47.099', '2022-12-10 15:59:47.049', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('74e682a3-b740-0683-ec10-248cc1e9e297', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.383', '2022-12-10 15:59:42.715', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('753bdab0-6326-f7f8-6994-9d7b7a6b3db0', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.686', '2022-12-10 15:59:46.155', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7542b1d3-df9c-a03f-892e-01d5c7839a9b', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.242', '2022-12-10 15:59:44.509', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('754f0562-5725-bb2b-b7bb-e05e2e947aef', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.094', '2022-12-10 15:59:48.714', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('75655d74-7a72-b425-8fc4-4eb5c37cf374', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:47.455', '2022-12-10 15:59:49.680', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('75d4d163-31e2-e423-e5ec-889f21830b6d', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.193', '2022-12-10 15:59:42.351', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('762858e4-41d7-b39f-7c6e-50e2afee885b', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.373', '2022-12-10 15:59:49.967', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7642e095-f4aa-dcc4-4f8f-cb65e0f3acff', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:43.905', '2022-12-10 15:59:42.371', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('767c8af9-f8d4-d598-9ef1-11bacd4b25f6', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.004', '2022-12-10 15:59:41.899', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('76c4959f-2936-444d-b37d-4423e9e6a859', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.807', '2022-12-10 15:59:42.782', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('77102255-7305-0e98-fc09-6bc40db7e67c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.446', '2022-12-10 15:59:46.054', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('77d98283-f00a-d13e-df63-007868be623f', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.465', '2022-12-10 15:59:48.092', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7844810f-3a8d-7d1e-012c-c5d1189f1a6f', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.739', '2022-12-10 15:59:48.916', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('788a518a-d626-37c5-5a24-378c7138ad6a', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:46.955', '2022-12-10 15:59:40.081', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('78a981da-587b-a12a-c762-9702b8eff3f3', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.132', '2022-12-10 15:59:42.723', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('79193636-1bfd-5149-5062-6d2d5f8aefd4', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.272', '2022-12-10 15:59:46.072', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('79593a83-3cf2-d901-eda9-9491897dd564', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.820', '2022-12-10 15:59:42.328', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('795f70f5-9398-5a7a-f23b-69badb2f9968', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.460', '2022-12-10 15:59:41.038', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('79deb72f-0421-89b2-8905-7f64634b7ac3', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.250', '2022-12-10 15:59:40.436', '1', '2', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7a19ec14-8d7e-599f-9f3d-4cc34bca1766', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.936', '2022-12-10 15:59:48.927', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7a3298cd-a9f3-5c63-c9bf-6c2bfd6ca37b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.280', '2022-12-10 15:59:44.940', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7a45ee38-91a5-0feb-89bd-8dec514f65d3', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.778', '2022-12-10 15:59:42.179', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7b1b3c18-1b8d-e229-e9ea-5dce5ae7fed5', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.376', '2022-12-10 15:59:49.721', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7b26faf5-26f7-2132-1294-040d1548c547', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.162', '2022-12-10 15:59:44.277', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7b3f2719-1f6c-2df7-6fea-f1ba9781b800', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.992', '2022-12-10 15:59:43.621', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7b52e272-77f0-51c6-b5e7-513c6d407a13', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.918', '2022-12-10 15:59:46.950', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7b6b6197-0ba6-0347-dba1-1b38c110f4c4', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.058', '2022-12-10 15:59:44.211', '1', '1', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('7bc65970-701f-c585-44c8-fceaaffe72d8', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.783', '2022-12-10 15:59:48.287', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7c02d4e1-2d5e-9201-3435-c92cca7baf4b', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.101', '2022-12-10 15:59:41.805', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7c30f3a2-5471-7e38-6ac5-ecb60d556ded', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.449', '2022-12-10 15:59:40.162', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7cf9da33-8dd6-bbdc-ea26-0f184bb97cb0', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.278', '2022-12-10 15:59:44.139', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7cfe7a9b-6aae-d4a5-8398-044a5f149e5e', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.890', '2022-12-10 15:59:45.374', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7d74280b-98c8-3e3b-b8b7-a0aefde10549', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.270', '2022-12-10 15:59:47.470', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7d8169e6-29b6-375c-d203-6fc4c7d955ae', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.105', '2022-12-10 15:59:44.866', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7dd872c4-9dbe-3993-8f43-4b41ee948312', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.103', '2022-12-10 15:59:43.978', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7e760b3a-65b0-cf4e-5128-8d3bbbe33259', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.638', '2022-12-10 15:59:42.993', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7f4cee39-f637-5699-3d0d-be0c9888b5ff', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.235', '2022-12-10 15:59:49.630', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7f751432-26a1-12db-a739-f7cb90f54d02', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.769', '2022-12-10 15:59:41.204', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7f7bc1c3-cfc0-50f0-d568-dabcb34fae67', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.660', '2022-12-10 15:59:42.435', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7faea16a-246a-3374-4d5a-ede1348c8c1b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.789', '2022-12-10 15:59:46.056', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('7fcaf1d8-a4cb-c53b-23da-816057031e92', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.373', '2022-12-10 15:59:47.122', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8000b01f-6d44-f504-934c-d1343b0ba294', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.557', '2022-12-10 15:59:44.973', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('80392d8a-32a6-3f0a-2cdc-c9816430c90a', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.691', '2022-12-10 15:59:47.661', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('803d9073-bfbc-606a-060e-343383640369', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.878', '2022-12-10 15:59:48.475', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('805a7c82-2d15-f6f2-5e84-76678f90b6f0', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.034', '2022-12-10 15:59:44.414', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('80fec284-3353-85ec-d193-ea72aebd3b5d', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.046', '2022-12-10 15:59:48.665', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('815c57ba-5f8b-77e0-e278-fccf05c23551', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.799', '2022-12-10 15:59:48.313', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('815d2000-c6ce-6998-5763-d5d387ba8bcc', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.592', '2022-12-10 15:59:40.213', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8186582f-f85a-eae1-10b8-36b479b75329', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.902', '2022-12-10 15:59:43.892', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('81bf73a5-6568-0ceb-1f3c-c553037d521f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.812', '2022-12-10 15:59:42.407', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('81d4cccd-2e5a-b45c-c1cb-91c788a0720c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.537', '2022-12-10 15:59:48.077', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('81e537b3-f835-1952-290d-e0092d1d64a4', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.841', '2022-12-10 15:59:42.855', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('82195fb9-dae9-96b7-7534-9e2c3d0164b1', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.776', '2022-12-10 15:59:40.578', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('827ac361-814c-5091-2863-01cebd8de567', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.900', '2022-12-10 15:59:41.487', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('83c9e5c1-ed63-79be-6fef-ac7bf379528c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.033', '2022-12-10 15:59:40.841', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('83e2568f-32a4-f42b-153a-7e4369efd9f7', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.372', '2022-12-10 15:59:42.900', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('83f28cf9-48b4-3b7e-efd1-6d4bbd88ec43', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.453', '2022-12-10 15:59:45.164', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('84eaaca3-6bf5-a8d5-9b27-776f8728275c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.419', '2022-12-10 15:59:42.866', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('850054d8-8b22-847f-dba2-c0f5306676a2', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.212', '2022-12-10 15:59:47.057', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('850ee000-8932-16f3-a390-e8bb2d5ac9a7', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.720', '2022-12-10 15:59:43.092', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('85e230e8-5c2f-7778-979f-bb203e1516df', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.542', '2022-12-10 15:59:44.013', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('86ae99d6-e274-5a6b-afc0-bb0c19ce183b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.777', '2022-12-10 15:59:41.408', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('86c51202-afae-e9c0-c9d2-663a3f944be9', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.266', '2022-12-10 15:59:44.616', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('871aae66-279c-8908-e389-e57de9db58d2', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.385', '2022-12-10 15:59:48.995', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('87f86695-4fe5-124b-dc47-f1c390ec92ac', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.823', '2022-12-10 15:59:49.191', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8910ad02-9ac9-8d3b-5169-b8d53d06707b', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.685', '2022-12-10 15:59:43.705', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('89b4cc22-bed7-6706-37a9-d826de67dfcc', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:47.985', '2022-12-10 15:59:47.814', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8a721130-e408-2501-1a77-e0ee7ea017ab', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:42.217', '2022-12-10 15:59:40.705', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8aa11648-f4c1-8be4-b89e-ea75a87cc956', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.291', '2022-12-10 15:59:40.600', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8ab2e171-c9b3-0cfb-0e48-22e8d12bf2d6', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.783', '2022-12-10 15:59:45.830', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8ae865d6-0043-8368-d1cc-9cd7133e2ee5', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:42.180', '2022-12-10 15:59:49.609', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8aefe583-380f-22cc-601c-10b9e4fb09f6', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.030', '2022-12-10 15:59:42.056', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8af6e78d-a24f-9bdc-4aac-94de23c8fa52', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.841', '2022-12-10 15:59:44.423', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8b3586cf-65b6-343b-9ca7-81d8cd5be0a3', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.770', '2022-12-10 15:59:48.182', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8bc05d69-0d14-88ea-fd67-0a2f0373fa19', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.052', '2022-12-10 15:59:42.685', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8c6c7853-99f5-0258-3c4a-aec7abe03663', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.286', '2022-12-10 15:59:41.368', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8c859234-8e52-6bc6-9bcc-388f8fccd4f3', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:45.844', '2022-12-10 15:59:45.521', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8c979f3a-e65f-e702-3075-99232f13098c', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:45.837', '2022-12-10 15:59:43.288', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8c9e8947-c0ac-7d5f-af9a-546844f20205', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.939', '2022-12-10 15:59:46.842', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8cb85fb8-a223-8265-c61d-3a2a7ad42c75', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.130', '2022-12-10 15:59:45.218', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8cfafa28-b536-546d-0a48-c3fb53e8963e', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.079', '2022-12-10 15:59:47.712', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8d29c349-e702-a8a2-d93d-41ae5930a87d', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.129', '2022-12-10 15:59:49.406', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8d51182d-82bf-3c5c-d57d-44bd6da1a89c', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.463', '2022-12-10 15:59:43.746', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8e4f7e09-456f-303d-7aa0-e4e2f3c98608', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.220', '2022-12-10 15:59:47.065', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8e5039d0-6547-f13b-c6a8-f506e0fbf590', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.614', '2022-12-10 15:59:42.571', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8e8a1cbd-156f-64e3-b7a2-c282537d203a', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:43.392', '2022-12-10 15:59:43.280', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8e8dd5a7-7e2e-a5ae-ebc3-ef0d533563bd', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.841', '2022-12-10 15:59:49.303', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8e92276b-a210-257f-aeee-374f77aff05f', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.167', '2022-12-10 15:59:44.734', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8edb09c7-3485-7491-cd75-b1d9aba0f459', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.164', '2022-12-10 15:59:43.326', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8eeb76b9-a45c-a084-84aa-6d389c9f77f6', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.715', '2022-12-10 15:59:44.888', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8fe87b7b-3306-9dba-a2b0-8440761eccd9', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.473', '2022-12-10 15:59:45.585', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('8ffcdfba-53a7-0332-030a-d0d35c266073', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.106', '2022-12-10 15:59:46.320', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9003c641-8ef8-ea20-6c06-232323b50ccd', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:40.496', '2022-12-10 15:59:47.518', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9024c63d-f9a7-54e8-6f88-0dd3cfd717a0', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.423', '2022-12-10 15:59:40.232', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('90330f20-288f-13fa-c920-1df3c0f2f357', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.739', '2022-12-10 15:59:41.294', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9033ba95-ca4e-ccd3-844d-4c1cc868d692', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.394', '2022-12-10 15:59:41.763', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('905ae2aa-56f7-a810-8497-7b7e25721943', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:47.088', '2022-12-10 15:59:48.025', '1', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('90c61d09-9187-cd9b-f3d9-c83f8b015e5f', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.724', '2022-12-10 15:59:43.474', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('90cd9698-01c7-7e62-a0ff-cbf16f6b79e3', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.219', '2022-12-10 15:59:42.995', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('90fcb970-cb6d-ed85-b5fa-3db6f667d5ce', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.585', '2022-12-10 15:59:47.902', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9123e5d1-a2be-3376-e521-28e1dde2387e', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:45.838', '2022-12-10 15:59:48.061', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('917288af-869d-654f-419d-449364d2fcfb', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.336', '2022-12-10 15:59:40.974', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('919c65e1-195e-4e56-9ed2-d11f8e78f9f2', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.471', '2022-12-10 15:59:43.964', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('91bd86aa-20c0-3de5-2e4d-3804ddfa2c56', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.141', '2022-12-10 15:59:42.233', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('91f00930-32f0-85ee-d9f3-1a8a01d247ce', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.166', '2022-12-10 15:59:41.101', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('91faf881-17f7-1ebb-92ae-f7305b5f3c27', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.906', '2022-12-10 15:59:40.019', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('92038a15-3ff1-1ce6-4d78-6a904438cd46', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:45.035', '2022-12-10 15:59:41.426', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('922734a7-3075-a9e3-4f03-c7203d38d2c1', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.942', '2022-12-10 15:59:41.651', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('923cf747-74ad-3738-d620-29e8ca77bf80', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.515', '2022-12-10 15:59:45.826', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('92517d96-fc10-de85-5dd5-caa000acee43', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.889', '2022-12-10 15:59:48.905', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('92c8d35b-df1a-188a-64b2-85b45d755077', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.608', '2022-12-10 15:59:43.206', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('92ffb707-f1d4-7128-7e8d-8a529e47f010', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.242', '2022-12-10 15:59:44.102', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9334d98a-ca12-3562-623e-2b912736bdd9', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.542', '2022-12-10 15:59:45.155', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('93617b3d-fc4a-801a-b662-7a35909d6d7c', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:47.271', '2022-12-10 15:59:41.956', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('93b37ee2-ff65-64d5-44a9-77fb4829a5e4', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.749', '2022-12-10 15:59:49.685', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('93b5976d-9989-ee0b-9f9e-2b626d8d0aa5', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:41.776', '2022-12-10 15:59:43.128', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9415cd85-edad-c25a-1f38-51edebd341b9', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.475', '2022-12-10 15:59:42.817', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('942ede44-e759-b4e0-5c9d-9b8ab377bc7d', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.809', '2022-12-10 15:59:47.846', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('94da1c8a-b41a-18a1-f11f-16bd2224e157', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.579', '2022-12-10 15:59:49.312', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('94ebeb65-7d34-4097-e6d9-162dc3fc1e32', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.395', '2022-12-10 15:59:48.745', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('952d3e63-83c8-4247-cb91-ce48611ca8cc', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.328', '2022-12-10 15:59:46.727', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('95444be7-df47-956f-43eb-dcd5242dfe59', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.669', '2022-12-10 15:59:41.158', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9590ff0b-bd32-175e-80e6-8ef1d1cc4ee0', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.072', '2022-12-10 15:59:44.722', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('95a77475-0aa0-8cb2-fd1a-d0be6d656672', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:45.585', '2022-12-10 15:59:43.546', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('95e1edcc-776f-f4a9-e9aa-77bbcc765e8f', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.113', '2022-12-10 15:59:43.831', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('95ef8c7c-8b3c-c91e-96f2-ea26ee4730bd', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:47.599', '2022-12-10 15:59:48.881', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('96ee2bab-cc90-f018-630f-00d90911841f', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.965', '2022-12-10 15:59:43.850', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('974632cb-85a6-4ad7-b978-6379087d23df', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:40.384', '2022-12-10 15:59:41.897', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('976f43bf-89e9-7513-3e02-19a89c9c6e62', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.133', '2022-12-10 15:59:49.203', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9794c064-8955-5763-f9f6-54049bc969f0', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.257', '2022-12-10 15:59:43.407', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('97a610a7-1bd2-628f-6444-90b06ce36f0b', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.898', '2022-12-10 15:59:42.888', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('984898a2-6038-40ee-29b0-493c676fc96f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.132', '2022-12-10 15:59:45.951', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9888ad89-d269-c14b-7b5e-0932447e4c78', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.698', '2022-12-10 15:59:42.074', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('98d52a5b-f2fa-0703-9a22-b96e181381b6', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.635', '2022-12-10 15:59:49.929', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('98f78e00-16d4-98d9-c18d-3a048c38b5b8', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.890', '2022-12-10 15:59:41.229', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9965a7d4-15b6-9523-e87b-794e7f864f07', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.885', '2022-12-10 15:59:48.744', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('99a655e8-f762-a78f-2c53-abc1608e7828', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.251', '2022-12-10 15:59:49.467', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9a0039d2-5ed3-3bf2-22f5-9134fa8ce178', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.100', '2022-12-10 15:59:47.018', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9a4ac44b-a150-3c37-a94f-787dffdf5c26', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:40.502', '2022-12-10 15:59:48.264', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9a575c61-883f-e0b4-b47c-d8b94ba3d400', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.974', '2022-12-10 15:59:47.889', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9a88dd07-c0c4-7f91-adc2-dc85d8fb2476', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.050', '2022-12-10 15:59:46.589', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9ae137b8-2858-eef3-8cbf-7f427facaadf', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:46.491', '2022-12-10 15:59:43.211', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9b353baf-37b6-dcbb-4277-0db7c5772a99', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.698', '2022-12-10 15:59:43.361', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9b38954a-2ad2-e551-6edf-63e709f81453', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.094', '2022-12-10 15:59:43.777', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9b49b423-fff8-8b54-905c-f139d6a4f64a', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.737', '2022-12-10 15:59:42.700', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9b598c6c-91d2-1ba7-bc8f-9ee2fdd3a042', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.924', '2022-12-10 15:59:49.461', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9b5ae60a-1dd4-5845-1415-3dc56cb0cf3a', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.077', '2022-12-10 15:59:42.847', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9b718da8-4c3a-0c70-8751-b27f3067e356', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:41.975', '2022-12-10 15:59:44.608', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9b7712de-0707-d0c6-ae65-48e0e5c42236', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.229', '2022-12-10 15:59:47.875', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9ba18631-dd71-d073-6d52-45031082a294', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.176', '2022-12-10 15:59:48.363', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9bb34087-4782-b896-5217-7f50b5e8f003', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:45.948', '2022-12-10 15:59:49.848', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9c42963c-e69e-24ae-19ee-1669b094fabb', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:45.806', '2022-12-10 15:59:48.848', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9c47ed48-f8f2-7374-9a4b-fffab69f9ad2', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.854', '2022-12-10 15:59:44.694', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9c8784b5-cfdc-4a67-742c-5c6816680a87', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.163', '2022-12-10 15:59:46.725', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9ca5e883-bb17-0a6e-d191-82371c627114', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.721', '2022-12-10 15:59:42.228', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9d404ef0-f745-533c-4f61-a5742c365670', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.926', '2022-12-10 15:59:43.474', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9d526a98-19cc-40e2-ae5b-01161e5a0cdc', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.041', '2022-12-10 15:59:46.985', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9d95b751-5d07-ae96-8bd6-4a078df6d3fb', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:48.012', '2022-12-10 15:59:42.555', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9da2a55d-5bbe-7337-1711-bd06dfa15359', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:48.593', '2022-12-10 15:59:49.230', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9dd2dfe4-0eca-3496-25bc-6a215a53b082', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.731', '2022-12-10 15:59:42.403', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9dfefae6-f58b-0bcb-7238-ce7556d930da', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.344', '2022-12-10 15:59:41.762', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9e0763f3-8c23-fc64-ba8a-595eea4ca87b', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:41.658', '2022-12-10 15:59:48.228', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9e520339-956b-cc23-adca-e1edbbb21665', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.750', '2022-12-10 15:59:46.009', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9e5ca11e-f187-91ed-0ad9-bf77e223157a', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.544', '2022-12-10 15:59:45.635', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9e952f59-d730-36ae-e7df-39e197ab46f7', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.809', '2022-12-10 15:59:44.824', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9ec590c0-c18b-180c-47df-9396fbb88951', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.642', '2022-12-10 15:59:47.052', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9f03b4db-aac0-9869-0944-7560982bb079', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.034', '2022-12-10 15:59:44.666', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9f07379c-40d0-3194-73b7-60abe307da05', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.071', '2022-12-10 15:59:44.204', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9f0c1ea6-a13e-7c03-ed11-44557523ae51', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.082', '2022-12-10 15:59:40.808', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9f6b225f-0f59-c907-268f-ddfa33b08363', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.828', '2022-12-10 15:59:45.611', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9f80d0f5-d560-9384-5f02-d9e4fcd9d6c0', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.620', '2022-12-10 15:59:40.352', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('9ff0bb35-3acb-3506-9aee-4f6e21118ecb', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.310', '2022-12-10 15:59:47.234', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a00485f0-8763-b47b-22d0-7036cf328d1a', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:43.748', '2022-12-10 15:59:49.393', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a03e7855-dc60-e5e0-ed5b-c9c64f43e0ca', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.534', '2022-12-10 15:59:41.450', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a0c3af1f-bf3f-4de9-f176-d6c4931c2ec1', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:40.507', '2022-12-10 15:59:48.088', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a1a343a5-8dc1-2145-ea43-8ee84576ad9b', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.114', '2022-12-10 15:59:44.488', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a1c65fc6-9fbb-aa3c-029d-491ec0c98999', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.793', '2022-12-10 15:59:49.501', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a1fbdaa8-3a7e-6565-7e96-f44b199dd6d8', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.609', '2022-12-10 15:59:41.697', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a215cd5a-c241-585e-9d76-22b78196c2f0', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.482', '2022-12-10 15:59:42.674', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a22b1e24-28af-e11e-0492-ebc46938474a', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.643', '2022-12-10 15:59:49.104', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a25b3514-da45-42c8-6853-948ce4e08c86', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.111', '2022-12-10 15:59:46.123', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a30adb18-c7ff-e95b-b750-efc20c12c48d', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.030', '2022-12-10 15:59:49.526', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a349ae09-7a9a-a41d-10ef-193833c46ab3', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:49.491', '2022-12-10 15:59:49.711', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a39a217d-c43f-ae14-ea41-7537e8f4f442', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.282', '2022-12-10 15:59:49.583', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a3c1f5d3-6164-6eff-fa9c-d988dcba65aa', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.592', '2022-12-10 15:59:47.733', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a4136c76-28a1-396a-1f73-a66e1c795c68', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.565', '2022-12-10 15:59:42.321', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a4a14186-df4f-78cd-5f86-87302e2d0330', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.291', '2022-12-10 15:59:42.965', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a4cdbad4-0e20-e161-b20a-567833020427', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.158', '2022-12-10 15:59:44.714', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a55e1c1b-6c7e-7880-25ac-d81fae3bbde8', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.121', '2022-12-10 15:59:41.419', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a5a11f1c-9643-8ded-678e-5cc061e844d3', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.611', '2022-12-10 15:59:48.003', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a5d8b470-158e-ccd7-24c8-68f3d7ad5ebf', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.079', '2022-12-10 15:59:42.422', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a6ecc401-42f5-5535-673b-1c43acf7d165', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:47.255', '2022-12-10 15:59:49.823', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a6ef07c9-e607-eb07-1ce3-8a5a036605d7', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.651', '2022-12-10 15:59:42.875', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a6fe856f-f9e4-37b1-bc80-193f26248034', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.830', '2022-12-10 15:59:48.241', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a7207613-c501-6e21-2519-61a184020212', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.885', '2022-12-10 15:59:44.634', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a72ee54b-b18b-a464-1ace-aa836f8b4a3e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.879', '2022-12-10 15:59:49.324', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a76460e5-dd83-ff9c-3ea2-1ffa9bb80b4e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.375', '2022-12-10 15:59:45.978', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a780fee6-a0ec-d953-e2c9-2af0d5f1f020', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.377', '2022-12-10 15:59:47.295', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a79680c2-6360-0ceb-d66c-e3fc7b3beb83', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.046', '2022-12-10 15:59:46.143', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a79cfe70-d69c-ffc7-669a-82e09c581578', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.722', '2022-12-10 15:59:48.455', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a7f3d255-ed09-5112-a0db-97b2b06d1b69', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.531', '2022-12-10 15:59:48.765', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a806f621-820c-f13b-f8b9-0c37cf946a55', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.240', '2022-12-10 15:59:41.964', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a87200ab-da79-2a03-d44a-6a860dc9d3e5', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.996', '2022-12-10 15:59:48.121', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a873c899-2bdf-c091-04f2-bf894b0b8b5d', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.689', '2022-12-10 15:59:40.778', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a8fdf0f6-8046-55fa-a7cc-681cb2b73419', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.080', '2022-12-10 15:59:44.547', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a92a67ff-349e-512b-2fc0-a03f09c7c23c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.422', '2022-12-10 15:59:46.523', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a92cecab-9492-489b-c281-bc5498064168', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.965', '2022-12-10 15:59:41.245', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a9554b60-1b91-5d44-f5c6-c4a9d4a100f4', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.021', '2022-12-10 15:59:41.499', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a95bf4fa-49d0-ebf4-0850-5857f64658e7', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.406', '2022-12-10 15:59:43.385', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a97fec89-42d2-f244-0d20-6762695bbab7', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.508', '2022-12-10 15:59:46.893', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a9a51e5f-5217-731a-5844-7b14f932b8ae', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.335', '2022-12-10 15:59:45.911', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a9e2cbeb-ef14-d9f7-e4c6-7461e98e8cb0', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.976', '2022-12-10 15:59:41.889', '1', '1', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('a9ebb6d6-0e35-2123-72f7-5aac6aa45c96', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.130', '2022-12-10 15:59:42.299', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('a9ec210c-3933-cc42-73ab-e68463696d98', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.167', '2022-12-10 15:59:41.991', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('aa5e1bd2-7e47-d519-2bcd-357d0a810f69', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.180', '2022-12-10 15:59:41.705', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('aa955953-2e00-c2d9-67ac-86370c13775d', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:48.119', '2022-12-10 15:59:41.965', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('aab90b79-c9ab-fb7e-83b7-2dba079200ac', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.567', '2022-12-10 15:59:48.006', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ab265f6a-0a1b-2dc6-6dc0-bb00bdb0f92e', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.186', '2022-12-10 15:59:48.734', '1', '2', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ab7e31fb-cc71-4df0-008f-26d019bb6f7e', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.341', '2022-12-10 15:59:47.296', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ac3615b2-091a-85f1-227d-021e829457fc', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.720', '2022-12-10 15:59:44.847', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ac7b8d34-4c4d-1d2e-1a3c-ba9b993fd46f', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.400', '2022-12-10 15:59:43.104', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('acb64a9e-bd26-eb16-1482-2c00b9e4137b', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.309', '2022-12-10 15:59:46.089', '1', '1', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('ad9e74e3-0ce1-c608-ce70-17d2c8ff7909', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:40.885', '2022-12-10 15:59:47.041', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('adb04b8c-c23a-fa9b-b0ee-4119e1d3df76', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.839', '2022-12-10 15:59:46.126', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('adb1fb29-ac80-4ccb-b6ec-53744d647ad0', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.671', '2022-12-10 15:59:44.933', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('addcc63d-a123-e680-a93d-f24b3e371ae0', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.502', '2022-12-10 15:59:44.024', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ae2ea0c1-4949-71a1-136d-88a799d84f8f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.917', '2022-12-10 15:59:46.700', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ae3658ab-dd65-0a65-366a-6471277180a2', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.706', '2022-12-10 15:59:40.710', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ae5640a2-c9ee-b279-d324-34e2f6352fd0', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.310', '2022-12-10 15:59:49.309', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('aea313be-106b-5a7b-3d18-e300a76645bc', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.771', '2022-12-10 15:59:41.078', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('aeaf90eb-ba7a-1e0f-e3ba-2e3db8f417fe', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.683', '2022-12-10 15:59:40.190', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('aec849b3-e18d-5100-6325-3a829cbf2e52', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.018', '2022-12-10 15:59:41.176', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('af4201d5-c72a-738d-03bf-711bb3f5c2cd', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.863', '2022-12-10 15:59:48.594', '1', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('afae4fbe-5b1f-43cb-ec6c-853f002dc6d4', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.874', '2022-12-10 15:59:48.121', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('afc34652-6389-9fa1-43da-cfb8c2022722', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.854', '2022-12-10 15:59:41.097', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b00b3fb4-7149-4c87-1e16-dd163b22722e', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.181', '2022-12-10 15:59:41.385', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b0417e59-b048-c18e-a7e7-afa078d1f8d2', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.430', '2022-12-10 15:59:40.116', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b0422e1b-ca44-95c9-3d65-e12b3eb10829', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.959', '2022-12-10 15:59:44.320', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b09eb1ff-0bb4-4ea2-e117-7127e0e0e9a3', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.838', '2022-12-10 15:59:41.866', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b0cc7db6-7bab-e7eb-844b-829261e7cef2', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.578', '2022-12-10 15:59:48.671', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b0f36095-e4aa-6807-4e99-976470bca52b', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.097', '2022-12-10 15:59:49.749', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b1479567-0b02-5237-bd1f-3ab47945706f', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.202', '2022-12-10 15:59:45.525', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b15ec149-0ed6-2c42-d497-79659eac7a3f', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.574', '2022-12-10 15:59:45.964', '1', '1', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('b1c22139-84a7-4f8b-626f-a7d9f4b0df8e', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:43.322', '2022-12-10 15:59:49.336', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b1da5b6c-a76c-a4a4-7b78-212617ac5cd9', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.241', '2022-12-10 15:59:44.911', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b22b96fd-9c5c-f68d-8aca-4c902c0eebe4', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.014', '2022-12-10 15:59:48.945', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b24c3125-1d11-bca4-70ae-e9d7a777f1da', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.772', '2022-12-10 15:59:48.620', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b24e7a13-50ac-2051-8d11-f0bd7c17565f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.910', '2022-12-10 15:59:42.875', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b2a8ba2b-d260-25b2-3735-661b4ed62208', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.937', '2022-12-10 15:59:49.596', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b2b0aae7-dda4-55c3-d92d-921c8eb06b43', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.283', '2022-12-10 15:59:45.420', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b324f2c0-8c43-a819-9249-6de663ba2419', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.471', '2022-12-10 15:59:42.057', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b32e4561-98a1-5d59-a9c1-8638a6ee20dc', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.291', '2022-12-10 15:59:40.478', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b33db61e-28a6-e1a9-e444-5e3e5e6451e8', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:41.137', '2022-12-10 15:59:45.760', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b354aefa-41f1-accf-da1c-34865b7940dd', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.917', '2022-12-10 15:59:43.808', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b3974246-741f-83a9-8a6e-0bb933230d3b', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.811', '2022-12-10 15:59:40.478', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b3aad300-33a4-f3d8-459e-8acb7b43b45f', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.496', '2022-12-10 15:59:41.383', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b3f33ee1-1ebc-85f6-3a21-05308ac40db3', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.977', '2022-12-10 15:59:48.148', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b4867457-3996-b9dd-bdb1-58ace798f47e', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.508', '2022-12-10 15:59:42.849', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b4d618e2-c0d0-a7cf-4a6a-0eed990fb3f4', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.208', '2022-12-10 15:59:49.542', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b51a2a50-795d-8b76-e77d-6e17223f7130', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.967', '2022-12-10 15:59:41.176', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b583dc18-0d22-a555-1a9b-90cb5c30934b', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.520', '2022-12-10 15:59:48.741', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b597ff9f-2b69-b1c0-80d2-23c76db3eace', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.553', '2022-12-10 15:59:40.796', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b5a530cd-4074-53f4-bc5a-1aca621ed570', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:47.001', '2022-12-10 15:59:49.985', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b5bcb33f-7d85-5126-15d8-026664ba4f1d', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.214', '2022-12-10 15:59:43.414', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b60e9aed-09c7-7d0a-946c-a0a0f952033a', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.187', '2022-12-10 15:59:44.482', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b62584dc-9892-c2f0-70a7-e0d9f89b9c6e', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.779', '2022-12-10 15:59:43.438', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b6432154-b1fe-52c6-b3ae-c581212289e4', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.897', '2022-12-10 15:59:41.917', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b65e83c6-85ed-f0ea-11bc-26cfd431e50b', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.177', '2022-12-10 15:59:48.616', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b67eb11c-7ea2-ff9f-fd82-80f866d31b21', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.520', '2022-12-10 15:59:41.930', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b68d4ae6-c94c-deab-f0e3-05069d4a55a9', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.507', '2022-12-10 15:59:46.193', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b6f35d45-b81e-74bd-70e9-661ef6802dd2', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.122', '2022-12-10 15:59:48.830', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b7436037-3b8d-3c5e-e5a9-801b2891e9ef', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.858', '2022-12-10 15:59:48.884', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b745edca-d233-754a-c752-ed8da609076c', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.705', '2022-12-10 15:59:41.489', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b7c2944f-7988-8e6b-3a5e-590c38cd64cf', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.611', '2022-12-10 15:59:41.025', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b7f204c4-b7d7-4abe-a4a6-3a6dc5a7d5e1', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.131', '2022-12-10 15:59:45.096', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b819df67-29ee-4faf-950a-0fc398b0f1f4', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:42.779', '2022-12-10 15:59:40.711', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b828dbcb-9238-82a2-19fc-e0e97c80873e', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.294', '2022-12-10 15:59:40.950', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b836acc4-1279-20f0-99bc-1fe1efb23e68', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.279', '2022-12-10 15:59:45.296', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b922b735-28f2-89b2-19b6-6f232d45b9a6', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.149', '2022-12-10 15:59:43.028', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b95a2d48-8b46-0984-dda3-409060e9ac3f', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.926', '2022-12-10 15:59:45.696', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b968d4dd-5d64-c6de-6dfe-1e2663d5433f', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.664', '2022-12-10 15:59:45.695', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('b9a2b7b5-4301-6a66-fd47-6e719138bbfe', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.199', '2022-12-10 15:59:45.188', '1', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('ba259419-82e2-a5fb-3d36-d3c5c04a5c05', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.116', '2022-12-10 15:59:48.550', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bab713b3-f8f3-fa05-d39f-742da9d516ab', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.079', '2022-12-10 15:59:45.944', '1', '1', '/profile/upload/2022/12/10/ng.png');
INSERT INTO `quality` VALUES ('bb3fbcff-b06f-8ae8-b4cd-1f1f9aa15e38', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.781', '2022-12-10 15:59:41.363', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bb567be3-26e3-0b62-7fe8-015ccdadba04', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.446', '2022-12-10 15:59:46.826', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bb8b3f87-8834-5004-681a-b200fe2f693d', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.995', '2022-12-10 15:59:42.437', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bbfd7f40-1385-ebc2-d83e-c69971e4b2b2', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.127', '2022-12-10 15:59:45.428', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bd599c93-14d8-5af0-67fc-0113a3197b53', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.658', '2022-12-10 15:59:49.797', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bd7894bf-e088-c85b-50f8-c58a510d98fa', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.147', '2022-12-10 15:59:47.187', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bd8c3e10-d040-6e71-e272-9127a366eb54', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.315', '2022-12-10 15:59:44.904', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bd9c4c25-d1e6-18e0-94c8-dfe45529a502', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.546', '2022-12-10 15:59:45.107', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bde499b9-e9c1-ceea-96ad-ea852a72502d', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:47.535', '2022-12-10 15:59:41.716', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('be032611-3bad-18d5-fd99-37068a1aba62', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.974', '2022-12-10 15:59:46.215', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('be8c330c-9beb-57dd-9278-5f46c45cb82b', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.527', '2022-12-10 15:59:43.158', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('be91cdd2-e450-541c-25c8-874923f264ad', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.231', '2022-12-10 15:59:43.082', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('beac9bc1-586e-23c8-3a5c-e0f098a85f30', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.820', '2022-12-10 15:59:41.474', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bf06196c-d6f2-b438-5c8b-388ddb50366c', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.232', '2022-12-10 15:59:41.354', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bf7b02d6-254f-765c-6cfc-9a73bde3c4a0', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.663', '2022-12-10 15:59:49.899', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bf81c46d-2652-c341-0534-79b507a990b9', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.804', '2022-12-10 15:59:46.376', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bf9b872b-e3bb-e04e-4d8d-5eaeeedfcf6f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.259', '2022-12-10 15:59:42.676', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('bfe06db8-4925-7266-785d-7ce742eb7e3f', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.893', '2022-12-10 15:59:44.054', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c0652e8c-da3e-272a-bef3-c9253ed5af6b', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:43.851', '2022-12-10 15:59:43.683', '1', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('c068e2d0-50e4-1b1a-655f-860c6843aedf', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.876', '2022-12-10 15:59:44.722', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c06f59fc-18dd-2dce-88dd-55ad03844330', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.042', '2022-12-10 15:59:49.137', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c08cd669-a759-ee2d-461f-0412346eeb6e', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.326', '2022-12-10 15:59:42.913', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c0994229-70c3-5d85-7da8-0c5e93e42a85', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.173', '2022-12-10 15:59:45.789', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c0f60580-3d6d-ade5-4b45-70e06e9012ab', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.954', '2022-12-10 15:59:48.078', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c13a6785-f4ce-6164-3013-31f6f95dd921', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.106', '2022-12-10 15:59:49.225', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c1a572a8-4623-45c6-0065-a1a61e2df592', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.727', '2022-12-10 15:59:49.507', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c20e4615-ec97-4de0-5e33-846c145c8c43', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:42.318', '2022-12-10 15:59:41.147', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c276a61e-334e-ae50-5414-605f0018cddf', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.023', '2022-12-10 15:59:46.253', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c2b9535b-b9fc-0374-4125-7a5c24b653bb', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.510', '2022-12-10 15:59:41.144', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c2f11cce-e0ae-6c41-fed4-5ef81147a9f9', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.616', '2022-12-10 15:59:48.300', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c343fb6e-1f9e-41b5-42d9-d85ad6bcf594', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.385', '2022-12-10 15:59:47.181', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c380d500-d18d-c94a-72b7-8355510e34c5', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.466', '2022-12-10 15:59:47.482', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c3d03279-1a96-7a1a-0891-fad60e5a3c34', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.353', '2022-12-10 15:59:49.629', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c406cb9d-47b3-924e-1996-0fd2e4473ada', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.226', '2022-12-10 15:59:41.739', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c42eb726-0188-1764-c93e-a269d0cb1d44', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.918', '2022-12-10 15:59:42.974', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c4411074-738c-46d6-91c6-62dbeaadb116', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:49.106', '2022-12-10 15:59:46.393', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c4fd3ab9-4834-3569-8c8b-ea5fa3e0a4fb', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:41.285', '2022-12-10 15:59:40.725', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c5c45c13-8eb3-6ff8-32bf-98db4cb06992', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.217', '2022-12-10 15:59:46.065', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c6af1e38-44e1-c2af-fc9d-f1f81ad8b453', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.188', '2022-12-10 15:59:43.751', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c7154887-5cde-5b49-55e3-47c7dcf759c5', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:43.275', '2022-12-10 15:59:46.059', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c7379393-760f-a102-a8d8-d491de4568f5', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.810', '2022-12-10 15:59:49.398', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c78948f2-e6f6-2f15-e2e0-2fe584037a29', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.543', '2022-12-10 15:59:43.592', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c7d301b3-ba04-2982-ef38-45fceae7092f', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.881', '2022-12-10 15:59:43.387', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c81cf2dc-a82e-1ce2-548a-22ef9c343ae0', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.133', '2022-12-10 15:59:46.528', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c8348e14-3f8d-7c1e-1040-6d9a1209aa17', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.984', '2022-12-10 15:59:45.688', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c8419ec4-ddfb-8940-fde6-b6e432c497b8', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.784', '2022-12-10 15:59:45.586', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c850bf5d-eaad-70c5-41fd-aa837b7ab520', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.537', '2022-12-10 15:59:41.286', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c857065d-1906-5eaa-523c-743843125d1c', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.231', '2022-12-10 15:59:43.721', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c8df7e92-f87c-7606-c392-98ac70f99ba6', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.157', '2022-12-10 15:59:44.847', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c90f93e5-0fd0-0b6b-b430-f1721f96ac21', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.455', '2022-12-10 15:59:43.003', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c9193ea4-29de-cfcd-8fb5-a93da7aaf565', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.001', '2022-12-10 15:59:40.866', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c9711341-e60f-e41f-65e7-677d86901b76', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.322', '2022-12-10 15:59:40.010', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c97e8a2a-02c0-c3d5-c502-3588debc3e22', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.181', '2022-12-10 15:59:49.227', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c99d3684-70ec-d353-76e4-0ad85198557f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.544', '2022-12-10 15:59:43.818', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c9a89b55-9ccc-63dd-7acd-67c89eeed49a', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.724', '2022-12-10 15:59:45.960', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c9bd89cd-1c22-0183-221f-b53837201712', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.692', '2022-12-10 15:59:45.582', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('c9c030dc-0f5f-a42e-e51f-68cf6451fcd3', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.148', '2022-12-10 15:59:43.563', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ca3e2c66-b01f-e458-39f1-f0562c646630', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.806', '2022-12-10 15:59:40.567', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ca8b3abe-e65c-7cf8-0be3-412a13307679', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.070', '2022-12-10 15:59:43.583', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('caadddfb-967a-3b50-d5ca-a338a89f50e0', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.259', '2022-12-10 15:59:44.577', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cae365cd-48be-794d-09b6-c37c493929d6', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.454', '2022-12-10 15:59:41.367', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cb1baa1b-9914-66c7-cfe6-739aaea58d52', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.697', '2022-12-10 15:59:45.501', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cb1f14c9-095e-49e3-68ea-99da5008c191', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.820', '2022-12-10 15:59:41.362', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cba64e78-3de6-b426-dd16-24a697d91f35', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.303', '2022-12-10 15:59:40.884', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cbbe035f-a752-d55c-f482-0c4a3d79d02a', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.027', '2022-12-10 15:59:42.860', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cc28697e-f698-b29a-381e-00a55df68f4f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.116', '2022-12-10 15:59:44.240', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ccf643ad-631b-ead5-26e5-2d5a8859987e', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.788', '2022-12-10 15:59:42.023', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cd27f13c-19e3-2dde-f336-abb8f3e60c0a', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:45.665', '2022-12-10 15:59:42.602', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ce04d496-58e6-2cd4-08c2-f80816b3d365', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.525', '2022-12-10 15:59:45.843', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ce82f1ce-2302-20d3-8d05-ca234a75a360', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.150', '2022-12-10 15:59:49.684', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cec80b5c-39b8-d438-0b11-3764af206a1e', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.780', '2022-12-10 15:59:43.179', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cecb2f71-a952-9c2a-d4ae-b3e3e643dd39', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.095', '2022-12-10 15:59:48.319', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cf232102-13d2-939e-ce3e-5a17ac94d824', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.668', '2022-12-10 15:59:46.142', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cfadff5f-6df9-e33d-5071-9f7b247739ee', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.614', '2022-12-10 15:59:49.301', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cfc913f9-fc1b-33e8-6bc4-7bb874b2f6fe', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.624', '2022-12-10 15:59:49.607', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('cfcfd771-37b1-f364-2c9b-7e4418cbd5bd', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:41.633', '2022-12-10 15:59:43.685', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d0098d40-a64e-0b3f-2034-ce4dc7a5e7d4', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:43.705', '2022-12-10 15:59:41.824', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d029eb24-82c4-c8cc-ac5c-db003b755380', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.241', '2022-12-10 15:59:43.871', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d02d5a83-fa7d-b90a-327d-18d89a7ef468', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.456', '2022-12-10 15:59:47.420', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d0934e7a-b95c-af85-efcb-49a2e99b3aa1', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.925', '2022-12-10 15:59:47.564', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d100e88e-c5e8-a682-e5cc-d12aec93a76c', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:44.882', '2022-12-10 15:59:41.571', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d1232856-6e1a-fc58-6737-cd2f29f1c5e6', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.008', '2022-12-10 15:59:45.485', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d1a3dd8d-5d2d-cd77-3764-97c9eeb975e2', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:45.141', '2022-12-10 15:59:41.066', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d1af995f-4435-dbc2-bd29-07a273087f5a', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.764', '2022-12-10 15:59:41.669', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d1c1c5c0-9f19-be33-a18b-dae8632930d1', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.179', '2022-12-10 15:59:46.199', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d229d847-ffd2-f1cf-5927-3b520594487f', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.041', '2022-12-10 15:59:42.060', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d2d5e57e-40e7-93a5-aa55-dc4046f01d2c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.049', '2022-12-10 15:59:43.455', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d2dde162-3e34-276f-1e34-dc48f65c2cb2', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.811', '2022-12-10 15:59:44.096', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d42ed663-78fa-6ffc-82ff-8f4ad0a2f775', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.599', '2022-12-10 15:59:41.906', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d43eae34-ac20-d8a1-9b5c-f4b37b2de606', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.062', '2022-12-10 15:59:42.399', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d489a94d-9102-b526-1d31-871a0a747805', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.616', '2022-12-10 15:59:42.442', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d4b05735-32eb-7d7d-82af-90f7bc65d3e5', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.690', '2022-12-10 15:59:43.049', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d4c2e776-fd0d-dc40-1f91-bc246a0d082b', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.566', '2022-12-10 15:59:47.518', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d4e13fce-bd56-c0c6-4de4-cd915af37fcb', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.335', '2022-12-10 15:59:46.979', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d5315808-3d80-94ff-83c1-c0888dd269d7', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.067', '2022-12-10 15:59:49.255', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d538c711-1bdf-b265-5b8a-423cf1f1c72f', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.444', '2022-12-10 15:59:41.872', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d53cd52b-334c-3dfa-cf17-01103dc6069d', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:41.343', '2022-12-10 15:59:49.794', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d567ff59-ac54-ab06-9d58-a8a5901a9811', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:41.836', '2022-12-10 15:59:48.358', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d598dfe7-b43c-4593-922e-3ed09aaa6c9e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.087', '2022-12-10 15:59:47.121', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d5d3da1e-e61a-39d1-375c-16db7b19f012', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.954', '2022-12-10 15:59:46.552', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d5f21b6b-68c2-b5c0-e61d-4e71fa009f70', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.925', '2022-12-10 15:59:45.693', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d6d1c400-48c5-1dac-d7aa-f5fb7dd45589', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.532', '2022-12-10 15:59:48.269', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d6e97b26-1a5c-9a89-d5c2-f398846ded7a', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:42.541', '2022-12-10 15:59:40.102', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d7235a4b-7ee9-e08e-05f4-db3dee15dd42', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.557', '2022-12-10 15:59:47.509', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d737cd34-b00a-6b7e-c011-6f126df29abc', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.822', '2022-12-10 15:59:46.135', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d7726b44-b1c9-d4c9-061f-2153b0f78977', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.706', '2022-12-10 15:59:40.494', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d7a30477-f281-a03e-df46-6969d48611bf', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:49.115', '2022-12-10 15:59:44.181', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d7d2a786-6fc6-31ce-bba6-8d919194303b', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.714', '2022-12-10 15:59:48.045', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d85d4cd8-33c3-90f5-90c8-99f71889a000', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.427', '2022-12-10 15:59:40.364', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d8895e8e-9f7a-bea7-2e89-974358df5fde', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.626', '2022-12-10 15:59:41.003', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('d956816a-23a5-5f20-272b-267e75078687', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.478', '2022-12-10 15:59:45.359', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('da3bda6d-7a16-b83e-8fea-2459f51afd7e', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.653', '2022-12-10 15:59:41.978', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('da4ba219-9fa7-9a73-02bb-b79ea5442819', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:46.946', '2022-12-10 15:59:42.364', '1', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('dab138ea-e70e-7362-53e0-d5a346eef3c2', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:47.740', '2022-12-10 15:59:48.327', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('db53fe59-c83f-39c0-70d0-7249385a3e45', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.161', '2022-12-10 15:59:44.142', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('dbba4b27-99ea-28a8-3ca4-0c0fba502d2f', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.414', '2022-12-10 15:59:48.769', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('dc0219aa-ce90-5071-3766-fe6e95fe1368', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.851', '2022-12-10 15:59:41.627', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('dc90da74-1eac-26b8-d672-e09a2ed9df4b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.969', '2022-12-10 15:59:40.719', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('dc95076f-128c-6818-8425-9120741b1d0c', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:43.633', '2022-12-10 15:59:41.414', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ddc94436-f02f-c7ea-a9d6-3ef9ba10d743', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.707', '2022-12-10 15:59:42.190', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ddceb93b-10a3-4264-e4eb-5aa45c336342', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:48.621', '2022-12-10 15:59:45.709', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ddd21328-efc9-0148-7e05-be5b93e3c27c', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:40.252', '2022-12-10 15:59:44.243', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('de30a9e0-47fc-cf74-04c4-fdb770963d10', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:47.305', '2022-12-10 15:59:41.801', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('de3443cf-7d8e-39e3-2127-3eb69cf3beb1', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.897', '2022-12-10 15:59:43.359', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('dec7e2f9-9864-eca6-25ef-420064fa344f', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.151', '2022-12-10 15:59:40.165', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('deef736d-7d6e-dfc8-73aa-50a6b476143f', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.994', '2022-12-10 15:59:48.934', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('df1fcd4b-7707-bb52-3098-2711fc51fbd2', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:48.102', '2022-12-10 15:59:48.794', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('df3aa329-f38c-77f8-1183-76ce86e00771', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:40.428', '2022-12-10 15:59:49.612', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('df7c97f7-3bf0-60f6-cfc0-1f6809815451', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.147', '2022-12-10 15:59:46.858', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('df9656c1-97e0-07c7-4aaf-c32f84358e5f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:45.372', '2022-12-10 15:59:41.347', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('dfb904a4-c6fb-f63f-1799-20ef5c014eca', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:46.478', '2022-12-10 15:59:43.223', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e034931d-2c81-26cc-381b-ccce899a17ea', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.628', '2022-12-10 15:59:43.674', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e0be0b7a-cbc5-5490-715f-88f0d56913e5', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.085', '2022-12-10 15:59:42.503', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e0bf808e-fc1a-6afb-aaf4-912eb61c9175', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.846', '2022-12-10 15:59:49.470', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e10fd97e-3441-0ade-61fb-94b6c9cb57de', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:44.676', '2022-12-10 15:59:46.387', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e122e6a1-a42c-3cd1-ad53-c40d8270874a', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.795', '2022-12-10 15:59:40.361', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e17775a7-05f4-f4c6-f898-aa9c1373a21e', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.433', '2022-12-10 15:59:42.669', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e18282bc-35bd-d70b-264f-23a67e106c5b', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.580', '2022-12-10 15:59:41.983', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e1cea5fc-a0e2-e063-9f98-da99737db3f3', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.689', '2022-12-10 15:59:43.625', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e256f913-121c-9cc7-7a4c-c1ce584e53a2', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.091', '2022-12-10 15:59:47.206', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e26a2277-1d45-bf4b-f3ff-f4fa071d8692', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:46.955', '2022-12-10 15:59:47.779', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e2dfc843-37d6-0e19-ee32-ccd51a3e6b66', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.437', '2022-12-10 15:59:44.449', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e30a128b-0458-e2e5-3a8c-80e5281f6464', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:41.038', '2022-12-10 15:59:47.135', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e38ded49-6fa6-3d50-2786-315259a26e7a', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:45.461', '2022-12-10 15:59:43.817', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e3baf096-e922-2b6c-992d-3c44acb890ce', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:42.825', '2022-12-10 15:59:42.540', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e464f57e-7882-0f5e-64a6-83f2914f7fe5', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.515', '2022-12-10 15:59:43.449', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e472b349-4cb8-feb4-c52f-e80f7f2e896c', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.281', '2022-12-10 15:59:48.865', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e4e02b60-d77a-f64a-bc15-6f8391064ecf', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.756', '2022-12-10 15:59:43.004', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e60ee74a-bcb6-2b9b-477a-9e386beacd1f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:46.339', '2022-12-10 15:59:48.218', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e6198591-c086-4716-1ed6-ca42e00f5240', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:48.864', '2022-12-10 15:59:48.798', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e62432bb-1363-7969-d856-72068ef48231', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.670', '2022-12-10 15:59:40.662', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e6e3fa95-6d37-39e4-199b-82f47ab71769', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:45.725', '2022-12-10 15:59:46.103', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e7266e48-f28d-08c7-a172-5f4af5b1c21e', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.958', '2022-12-10 15:59:44.688', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e7545353-5034-7dd8-ae17-8ee58b19454a', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:48.119', '2022-12-10 15:59:44.063', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e7592694-c8a2-a15c-ff33-bad920c177f8', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.381', '2022-12-10 15:59:48.002', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e79bdab7-322b-04b6-4181-857e34c2cd72', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.532', '2022-12-10 15:59:44.851', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e7a3c524-7be1-6017-dd4a-98c7779a0f2e', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:45.684', '2022-12-10 15:59:49.686', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e7d08d69-40b4-6d07-d4f4-082289c6168e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:41.760', '2022-12-10 15:59:40.907', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e7dc5e44-e09d-fce8-d801-e5cda354c1f0', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:42.706', '2022-12-10 15:59:41.600', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e807417c-57c3-1c0d-8b0e-8c6f6b6ec716', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.464', '2022-12-10 15:59:47.783', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e84018bb-e494-e522-6fc1-ce74e59d2132', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.245', '2022-12-10 15:59:44.059', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e8a4a425-de9a-d085-5f41-2e7c08130620', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.098', '2022-12-10 15:59:43.031', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e8d56b28-115f-3962-0c61-ac798aa5562e', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:44.770', '2022-12-10 15:59:40.736', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e93ad883-47fe-bf49-2c5f-2fba0da73bd3', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.100', '2022-12-10 15:59:48.246', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e95b65c7-3b1a-dc1b-23d1-9e8d53cca2f0', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.363', '2022-12-10 15:59:43.248', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e967941b-2c03-a41a-e6a8-a593a0460f3a', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:46.771', '2022-12-10 15:59:48.972', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e96ca64b-0334-0e64-cefd-08ec1cb603fb', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:49.365', '2022-12-10 15:59:47.715', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e98d040a-c57a-9ee5-67aa-2fbf202617e7', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.061', '2022-12-10 15:59:48.585', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e9a4245d-b384-f5d5-3e64-ec69fbcbcb73', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:49.652', '2022-12-10 15:59:48.885', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e9c9e459-9724-7e6a-f083-563d12b40462', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.741', '2022-12-10 15:59:48.732', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('e9deb631-61d4-bd34-bff5-e87546c9d044', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.929', '2022-12-10 15:59:47.831', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ea6507eb-86ba-64b7-e679-904be4543bd0', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:47.770', '2022-12-10 15:59:45.836', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('eaca0777-d2d4-f630-2436-436be926476a', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.826', '2022-12-10 15:59:40.068', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('eb378b86-eba0-01ff-f023-9c9932ccf22e', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.862', '2022-12-10 15:59:44.350', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('eb59fd12-c119-4269-3cfa-84e562bd8b19', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.301', '2022-12-10 15:59:41.786', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ebc83891-ff14-280b-bb4e-43ea0e020cdd', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:41.929', '2022-12-10 15:59:45.342', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ebe90c92-7d86-e0ba-ef33-c17dd2b3e2a0', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.689', '2022-12-10 15:59:43.391', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ebeee2d8-3a56-5d89-36c8-9646a7a1cf2f', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.347', '2022-12-10 15:59:43.494', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ec724613-1b10-c3fc-f0c7-4f777762412d', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.172', '2022-12-10 15:59:47.038', '1', '2', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ec7b2720-cabc-137f-9ae3-1dbb260b592b', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.312', '2022-12-10 15:59:49.844', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('eca2cd17-0259-cc90-2f24-3e42d6a23617', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.454', '2022-12-10 15:59:42.659', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ecaad21f-79c0-fb32-eb3e-84e6e8b94003', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.079', '2022-12-10 15:59:40.804', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ed03bb1f-bb76-67e1-c40f-0e9bc8136e29', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:41.071', '2022-12-10 15:59:40.562', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ed12b0c3-56eb-35ee-5118-760912b5bf19', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.395', '2022-12-10 15:59:43.409', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ed24b193-ccf5-ade1-3e95-d6910f312104', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.411', '2022-12-10 15:59:44.523', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('edad3c50-c605-5016-83c1-839647408787', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.260', '2022-12-10 15:59:40.651', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('edc5c31d-4804-6068-3d21-44b5291d3581', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:41.766', '2022-12-10 15:59:46.997', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('edf221bc-2be1-9357-5f43-b28fd416a736', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.627', '2022-12-10 15:59:45.442', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ee300cc2-eaa0-ee55-9fb9-0f052c0073ef', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.862', '2022-12-10 15:59:49.816', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ee380e4b-7685-0569-ce3e-843efafd8755', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.462', '2022-12-10 15:59:43.812', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ee9740f3-cdaf-ca5b-8b7f-81013b5a0217', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.769', '2022-12-10 15:59:45.339', '2', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ef2563f7-677c-49d2-3c1b-d6cf2c419be0', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.163', '2022-12-10 15:59:46.035', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ef3689cc-8a9b-79c4-2614-bdb28c11a6a6', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:49.127', '2022-12-10 15:59:48.589', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ef92b798-28d5-078a-5749-cba8092c5861', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.455', '2022-12-10 15:59:43.723', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('efaaa20e-2a7b-16f6-b99d-398985c71467', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.564', '2022-12-10 15:59:45.000', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f014677a-6fc1-7424-7a00-c6a9681720d6', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:44.621', '2022-12-10 15:59:49.610', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f0252365-fa4f-8fdb-0601-077e11c1ee62', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:49.602', '2022-12-10 15:59:48.970', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f084d597-2865-4629-d5ea-850ffc89ec8d', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.809', '2022-12-10 15:59:45.934', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f0972ee5-4163-b138-57db-15f14b14a4f7', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.668', '2022-12-10 15:59:47.890', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f0bede72-821b-2ced-4aa3-c1fa750a4b7f', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:43.435', '2022-12-10 15:59:47.011', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f0c3aeb3-e561-e052-1d2a-cbd18badcb3f', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.099', '2022-12-10 15:59:49.015', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f1009130-1216-396e-25bf-23ee06639be9', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:44.509', '2022-12-10 15:59:49.830', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f10e6777-129c-2dbf-0c47-2ab030aeee54', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:43.123', '2022-12-10 15:59:40.289', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f14bfaa4-b794-1eae-f473-1f7312ab22d0', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.769', '2022-12-10 15:59:44.868', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f186d06f-4dd8-95d5-27a8-cfe8486aff88', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.558', '2022-12-10 15:59:40.784', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f198af61-ada8-4cbe-a6c9-c059be6d6a9b', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:42.071', '2022-12-10 15:59:42.636', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f19be53b-edf6-86e8-7573-decab08a3eea', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.269', '2022-12-10 15:59:44.566', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f19c5790-8fbb-d20a-20db-883a19ecdd40', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:42.311', '2022-12-10 15:59:43.343', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f21e0772-198b-a005-7c15-aca805bd72b0', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.396', '2022-12-10 15:59:43.613', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f2464487-d89b-4f1e-befa-c73261bf2cc9', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:48.092', '2022-12-10 15:59:46.399', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f27cd354-b26d-d9d4-8989-33d4e91888f4', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.163', '2022-12-10 15:59:46.594', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f289b9c6-2c0b-8aa0-bdea-9a355c2835b9', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:41.285', '2022-12-10 15:59:47.060', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f2bfefc3-b541-377f-7bf7-9504b586f43c', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:42.281', '2022-12-10 15:59:43.020', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f2da4a77-3b68-6475-cd97-ae43d6bfd848', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:47.130', '2022-12-10 15:59:49.601', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f2ee3264-4187-46dc-0c4f-cc649011ddb8', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.110', '2022-12-10 15:59:49.363', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f31753a6-2bea-686f-a8f0-d78c7c8a0c15', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:46.062', '2022-12-10 15:59:41.251', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f32ae703-e50e-cd33-a36d-91356e916deb', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:49.494', '2022-12-10 15:59:40.681', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f365c36a-a140-d53e-96fb-990ea4caf70d', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:46.648', '2022-12-10 15:59:47.022', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f3814646-864d-5763-5ef4-37228d041811', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:40.133', '2022-12-10 15:59:47.411', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f41d28e5-35c2-fce8-e402-bbe36ed489a6', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.065', '2022-12-10 15:59:41.232', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f45eebd8-ec01-18ef-112c-258fa9c4f832', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:40.484', '2022-12-10 15:59:41.811', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f48d0208-6461-449c-2214-a0a146abd5b1', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:48.620', '2022-12-10 15:59:44.425', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f4ae45b9-61ad-9d20-332a-ffdee964d9e7', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.521', '2022-12-10 15:59:42.740', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f4bae76c-2074-17d2-b97c-f9346269b8ad', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.750', '2022-12-10 15:59:46.668', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f4cfac09-c197-0048-3c15-e1f243908b62', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:40.594', '2022-12-10 15:59:48.734', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f4edc39e-5061-a5b8-490f-403e199f5ec0', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:43.699', '2022-12-10 15:59:48.080', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f5b0146a-0cfc-53bc-cdaa-23399b35c6a3', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:49.996', '2022-12-10 15:59:42.124', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f5b34464-e481-b66d-915b-ade8b3aecd4d', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:46.297', '2022-12-10 15:59:49.920', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f5f676d4-f6d6-2b28-24c0-abe6fa668371', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.778', '2022-12-10 15:59:49.675', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f5fdc683-0d24-1ae0-3237-b5cf32ea6bfe', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:41.913', '2022-12-10 15:59:46.718', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f615b6ef-dcfe-b8d5-284e-484d6f11c03e', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:44.902', '2022-12-10 15:59:43.475', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f62a4fb7-ab35-8141-50f4-7acef1962338', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:45.802', '2022-12-10 15:59:40.406', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f6762eba-9cf6-d9d9-4c52-48c7217db024', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:49.315', '2022-12-10 15:59:46.682', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f7bb0a60-08fb-c790-a861-3d3e51a53978', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:43.846', '2022-12-10 15:59:48.340', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f7ff1dd2-12e9-6c0f-c68a-d1e796031850', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.958', '2022-12-10 15:59:42.256', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f82362d0-a7af-e9f8-af9e-41a0ffa6847e', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:43.921', '2022-12-10 15:59:43.273', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f8d954ed-7d6f-38ce-27da-876a65b09580', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:43.940', '2022-12-10 15:59:42.563', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f900934f-d58b-0ef4-cad3-7684f79b4575', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.896', '2022-12-10 15:59:45.132', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('f9f28434-2bfb-c8da-b58a-e9d7d0382a49', '51aa4f88-8ae3-bf1c-e661-e211821d201f', '2022-12-10 15:59:40.095', '2022-12-10 15:59:47.617', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fa37a54c-511b-9403-c9af-93c98fe7354a', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:46.360', '2022-12-10 15:59:49.086', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fb0a2c61-b163-beb7-25cf-8640fe37aee9', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:45.887', '2022-12-10 15:59:40.765', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fb4e130a-93e7-0353-5b9d-c167e90d2c7e', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:48.126', '2022-12-10 15:59:47.314', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fb5258a5-2000-7e7d-239e-284fe4450aa1', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:42.162', '2022-12-10 15:59:44.248', '2', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fbd6ebd4-d4d5-b4d1-e0c4-53bbea2a2e44', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:44.381', '2022-12-10 15:59:45.399', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fc38397c-4969-902d-a24d-5e6ee6a92b04', 'f0b0509d-6613-a0b6-9657-c57bdbd8076d', '2022-12-10 15:59:47.473', '2022-12-10 15:59:45.327', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fc5c176f-805e-ee61-dc97-dda29ffe2e03', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:43.285', '2022-12-10 15:59:46.649', '0', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fc877179-b038-ed1d-2282-fe7510cf1fcf', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:40.525', '2022-12-10 15:59:41.665', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fcb174c2-edf0-21d0-ea73-726b06cb5d7c', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:44.295', '2022-12-10 15:59:45.332', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fcef231c-4cd8-cdd5-2a88-d2bb502c72e2', 'cb13d436-6853-5e4a-e5d8-9e8543f04cc6', '2022-12-10 15:59:47.653', '2022-12-10 15:59:43.592', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fcfd342a-a2a4-0cd5-03c2-f7885c550c2a', '821e2cef-258f-0efc-fdbd-426266cb12e8', '2022-12-10 15:59:44.486', '2022-12-10 15:59:44.330', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fd40d8da-8f68-1dab-27de-d58c28392813', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:41.029', '2022-12-10 15:59:44.233', '1', '1', '/profile/upload/2022/12/10/p.png');
INSERT INTO `quality` VALUES ('fd53f775-2296-98ba-b9dd-d9b929116cc5', '40bda628-34e4-3681-0eb7-36a6dc56848c', '2022-12-10 15:59:47.209', '2022-12-10 15:59:49.818', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fd9140e9-0b8f-dfa6-2455-234331431de3', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:42.631', '2022-12-10 15:59:44.835', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fe2a439e-c23c-d575-3b7e-18c3ad53f54d', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:41.051', '2022-12-10 15:59:40.003', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fe7ece18-ae66-3a81-3282-1282c572e85a', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:47.359', '2022-12-10 15:59:41.432', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fe7fdf86-b67f-1431-0813-a814cbc11878', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.954', '2022-12-10 15:59:49.259', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fe872847-a502-9e5b-f000-533bfa0a0c67', '1d04cdb6-00ed-54bb-c8c0-0353b34059c4', '2022-12-10 15:59:42.974', '2022-12-10 15:59:49.921', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fe9bf912-72b3-9a92-66ce-8b850219fe02', 'cefd947b-5c83-9ac9-1b7e-09ce9f367a76', '2022-12-10 15:59:44.968', '2022-12-10 15:59:41.452', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fecd611d-4f64-c650-8cf2-90bbafa576a5', '7136e145-75da-afec-c443-3d56f69f52ad', '2022-12-10 15:59:40.860', '2022-12-10 15:59:42.857', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fefe2b19-ca30-5fce-306e-703e4e539c47', '2d36df84-a759-d47c-7a9c-186c9ce7795d', '2022-12-10 15:59:45.012', '2022-12-10 15:59:41.622', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('ff98a7c5-eb74-9395-11e3-152778367fba', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:49.946', '2022-12-10 15:59:40.028', '1', '1', '/profile/upload/2022/12/10/good.png');
INSERT INTO `quality` VALUES ('fffcd95a-8d99-e14f-03ce-1083e8f292ba', 'eb26e680-08d8-556e-4564-fcc398cacf92', '2022-12-10 15:59:48.443', '2022-12-10 15:59:40.353', '1', '1', '/profile/upload/2022/12/10/good.png');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-12-08 21:06:38', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-12-08 21:06:38', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-12-08 21:06:38', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2022-12-08 21:06:38', 'admin', '2022-12-08 21:12:13', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-12-08 21:06:38', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-12-08 21:06:38', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-08 21:11:47');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-08 21:12:16');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-08 21:12:19');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-09 12:55:04');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2022-12-09 12:55:30');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 11:19:11');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 12:11:49');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 12:13:12');
INSERT INTO `sys_logininfor` VALUES (108, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 12:13:16');
INSERT INTO `sys_logininfor` VALUES (109, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 12:27:01');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 12:27:08');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 12:55:53');
INSERT INTO `sys_logininfor` VALUES (112, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 12:55:56');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2022-12-10 12:58:50');
INSERT INTO `sys_logininfor` VALUES (114, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 13:52:27');
INSERT INTO `sys_logininfor` VALUES (115, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 13:52:28');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2022-12-10 14:27:37');
INSERT INTO `sys_logininfor` VALUES (117, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 14:40:45');
INSERT INTO `sys_logininfor` VALUES (118, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 14:47:08');
INSERT INTO `sys_logininfor` VALUES (119, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 14:47:23');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2022-12-10 15:21:50');
INSERT INTO `sys_logininfor` VALUES (121, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 16:17:00');
INSERT INTO `sys_logininfor` VALUES (122, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 16:17:03');
INSERT INTO `sys_logininfor` VALUES (123, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 16:55:22');
INSERT INTO `sys_logininfor` VALUES (124, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 18:40:49');
INSERT INTO `sys_logininfor` VALUES (125, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 18:51:35');
INSERT INTO `sys_logininfor` VALUES (126, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 18:51:38');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2022-12-10 18:56:25');
INSERT INTO `sys_logininfor` VALUES (128, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 18:58:35');
INSERT INTO `sys_logininfor` VALUES (129, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 18:58:38');
INSERT INTO `sys_logininfor` VALUES (130, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 19:24:40');
INSERT INTO `sys_logininfor` VALUES (131, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 19:24:45');
INSERT INTO `sys_logininfor` VALUES (132, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 19:26:59');
INSERT INTO `sys_logininfor` VALUES (133, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 19:27:05');
INSERT INTO `sys_logininfor` VALUES (134, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 19:38:01');
INSERT INTO `sys_logininfor` VALUES (135, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 19:38:19');
INSERT INTO `sys_logininfor` VALUES (136, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 20:40:19');
INSERT INTO `sys_logininfor` VALUES (137, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 20:43:04');
INSERT INTO `sys_logininfor` VALUES (138, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 20:43:17');
INSERT INTO `sys_logininfor` VALUES (139, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-10 21:00:04');
INSERT INTO `sys_logininfor` VALUES (140, 'quality', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-10 21:01:02');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2029 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-12-08 21:06:38', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-12-08 21:06:38', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-12-08 21:06:38', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '1', '0', '', 'guide', 'admin', '2022-12-08 21:06:38', 'admin', '2022-12-08 21:15:27', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-12-08 21:06:38', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-12-08 21:06:38', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-12-08 21:06:38', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-12-08 21:06:38', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-12-08 21:06:38', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-12-08 21:06:38', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-12-08 21:06:38', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-12-08 21:06:38', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-12-08 21:06:38', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-12-08 21:06:38', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-12-08 21:06:38', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-12-08 21:06:38', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-12-08 21:06:38', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-12-08 21:06:38', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2022-12-08 21:06:38', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-12-08 21:06:38', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-12-08 21:06:38', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-12-08 21:06:38', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-12-08 21:06:38', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-12-08 21:06:38', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '芯片质量检测', 0, 100, '/quality', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'validCode', 'admin', '2022-12-08 21:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '检查日志', 2000, 1, 'Quality', 'system/quality/index', NULL, 1, 0, 'M', '0', '0', 'system:quality:list', 'bug', 'admin', '2022-12-09 12:55:59', 'admin', '2022-12-10 19:05:50', '检查菜单');
INSERT INTO `sys_menu` VALUES (2002, '检查查询', 2001, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:quality:query', '#', 'admin', '2022-12-09 12:55:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '检查新增', 2001, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:quality:add', '#', 'admin', '2022-12-09 12:55:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '检查修改', 2001, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:quality:edit', '#', 'admin', '2022-12-09 12:55:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '检查删除', 2001, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:quality:remove', '#', 'admin', '2022-12-09 12:55:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '检查导出', 2001, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:quality:export', '#', 'admin', '2022-12-09 12:55:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '产业线管理', 2000, 1, 'line', 'system/line/index', NULL, 1, 0, 'C', '0', '0', 'system:line:list', 'list', 'admin', '2022-12-09 13:12:20', 'admin', '2022-12-10 11:29:43', '产业线管理菜单');
INSERT INTO `sys_menu` VALUES (2008, '产业线管理查询', 2007, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:line:query', '#', 'admin', '2022-12-09 13:12:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '产业线管理新增', 2007, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:line:add', '#', 'admin', '2022-12-09 13:12:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '产业线管理修改', 2007, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:line:edit', '#', 'admin', '2022-12-09 13:12:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '产业线管理删除', 2007, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:line:remove', '#', 'admin', '2022-12-09 13:12:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '产业线管理导出', 2007, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:line:export', '#', 'admin', '2022-12-09 13:12:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '数据面板', 0, 1001, 'http://localhost:50401/dashboard/show/e4ace06ac184f1737eac/', NULL, NULL, 0, 0, 'M', '0', '0', '', 'chart', 'admin', '2022-12-10 11:27:06', 'admin', '2022-12-10 11:27:25', '');
INSERT INTO `sys_menu` VALUES (2014, '分类识别日志', 2000, 1, 'classify', 'system/classify/index', NULL, 1, 0, 'C', '0', '0', 'system:classify:list', 'log', 'admin', '2022-12-10 13:29:10', 'admin', '2022-12-10 13:46:47', '分类识别日志菜单');
INSERT INTO `sys_menu` VALUES (2015, '分类识别日志查询', 2014, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:classify:query', '#', 'admin', '2022-12-10 13:29:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '分类识别日志新增', 2014, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:classify:add', '#', 'admin', '2022-12-10 13:29:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '分类识别日志修改', 2014, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:classify:edit', '#', 'admin', '2022-12-10 13:29:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '分类识别日志删除', 2014, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:classify:remove', '#', 'admin', '2022-12-10 13:29:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '分类识别日志导出', 2014, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:classify:export', '#', 'admin', '2022-12-10 13:29:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '针脚检测日志', 2000, 1, 'pin', 'system/pin/index', NULL, 1, 0, 'C', '0', '0', 'system:pin:list', 'log', 'admin', '2022-12-10 13:32:16', 'admin', '2022-12-10 13:46:58', '针脚检测日志菜单');
INSERT INTO `sys_menu` VALUES (2021, '针脚检测日志查询', 2020, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:pin:query', '#', 'admin', '2022-12-10 13:32:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '针脚检测日志新增', 2020, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:pin:add', '#', 'admin', '2022-12-10 13:32:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '针脚检测日志修改', 2020, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:pin:edit', '#', 'admin', '2022-12-10 13:32:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '针脚检测日志删除', 2020, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:pin:remove', '#', 'admin', '2022-12-10 13:32:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '针脚检测日志导出', 2020, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:pin:export', '#', 'admin', '2022-12-10 13:32:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, 'Temp', 0, 1001, '/temp', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'people', 'admin', '2022-12-10 15:22:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, 'Temp', 2026, 1002, '/temp', 'system/temp/loading', NULL, 1, 0, 'C', '0', '0', '', 'bug', 'admin', '2022-12-10 15:23:28', 'admin', '2022-12-10 15:24:27', '');
INSERT INTO `sys_menu` VALUES (2028, '芯片识别', 2000, 0, '/xs', 'system/temp/loading', NULL, 1, 0, 'C', '0', '0', NULL, 'eye-open', 'admin', '2022-12-10 18:58:19', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-12-08 21:06:38', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-12-08 21:06:38', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:06:38\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-08 21:12:13');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"quality,assembly_line,microchip_classify_log\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-08 21:13:05');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"quality\",\"className\":\"Quality\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AssemblyLineId\",\"columnComment\":\"流水线id\",\"columnId\":14,\"columnName\":\"assembly_line_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"assemblyLineId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SamplingTime\",\"columnComment\":\"采样时间\",\"columnId\":15,\"columnName\":\"sampling_time\",\"columnType\":\"datetime(3)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"samplingTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DistinguishTime\",\"columnComment\":\"识别时间\",\"columnId\":16,\"columnName\":\"distinguish_time\",\"columnType\":\"datetime(3)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"distin', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-08 21:14:11');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"validCode\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"芯片质量检测\",\"menuType\":\"M\",\"orderNum\":100,\"params\":{},\"path\":\"/quality\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-08 21:15:01');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2022-12-08 21:15:21');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-12-08 21:06:38\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-08 21:15:27');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"quality\",\"className\":\"Quality\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-12-08 21:14:11\",\"usableColumn\":false},{\"capJavaField\":\"AssemblyLineId\",\"columnComment\":\"流水线id\",\"columnId\":14,\"columnName\":\"assembly_line_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"assemblyLineId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-12-08 21:14:11\",\"usableColumn\":false},{\"capJavaField\":\"SamplingTime\",\"columnComment\":\"采样时间\",\"columnId\":15,\"columnName\":\"sampling_time\",\"columnType\":\"datetime(3)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"samplingTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-12-08 21:14:11\",\"usableColumn\":false},{\"capJavaField\":\"DistinguishTime\",\"columnComment\":\"识别时间\",\"columnId\":16,\"columnName\":\"distinguish_time\",\"columnType\":\"datetime(3)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-08 21:15:52');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-12-08 21:15:55');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"quality\",\"className\":\"Quality\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-12-08 21:15:52\",\"usableColumn\":false},{\"capJavaField\":\"AssemblyLineId\",\"columnComment\":\"流水线id\",\"columnId\":14,\"columnName\":\"assembly_line_id\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"assemblyLineId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-12-08 21:15:52\",\"usableColumn\":false},{\"capJavaField\":\"SamplingTime\",\"columnComment\":\"采样时间\",\"columnId\":15,\"columnName\":\"sampling_time\",\"columnType\":\"datetime(3)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"samplingTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-12-08 21:15:52\",\"usableColumn\":false},{\"capJavaField\":\"DistinguishTime\",\"columnComment\":\"识别时间\",\"columnId\":16,\"columnName\":\"distinguish_time\",\"columnType\":\"datetime(3)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-08 21:18:08');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-12-08 21:18:15');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-12-09 12:55:18');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"line\",\"className\":\"AssemblyLine\",\"columns\":[{\"capJavaField\":\"UId\",\"columnComment\":\"UID\",\"columnId\":1,\"columnName\":\"uid\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"uId\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ALCode\",\"columnComment\":\"流水线编号\",\"columnId\":2,\"columnName\":\"a_l_code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"aLCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ALName\",\"columnComment\":\"流水线名\",\"columnId\":3,\"columnName\":\"a_l_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"aLName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"VentCode\",\"functionName\":\"产业线管理\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.system.line\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"流水线管理\",\"tableId\":1,\"tableName\":\"assembly_line\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-09 13:02:36');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-12-09 13:02:45');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/quality/index\",\"createTime\":\"2022-12-09 12:55:59\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"检查\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"http://localhost:50401/dashboard/show/e4ace06ac184f1737eac/\",\"perms\":\"system:quality:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 11:26:22');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"数据面板\",\"menuType\":\"M\",\"orderNum\":1001,\"params\":{},\"parentId\":0,\"path\":\"http://localhost:50401/dashboard/show/e4ace06ac184f1737eac/\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 11:27:06');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-12-10 11:27:06\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":2013,\"menuName\":\"数据面板\",\"menuType\":\"M\",\"orderNum\":1001,\"params\":{},\"parentId\":0,\"path\":\"http://localhost:50401/dashboard/show/e4ace06ac184f1737eac/\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 11:27:25');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/quality/index\",\"createTime\":\"2022-12-09 12:55:59\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"检查\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"Quality\",\"perms\":\"system:quality:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 11:28:58');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/quality/index\",\"createTime\":\"2022-12-09 12:55:59\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"检查\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"Quality\",\"perms\":\"system:quality:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 11:29:32');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/line/index\",\"createTime\":\"2022-12-09 13:12:20\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"产业线管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"line\",\"perms\":\"system:line:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 11:29:43');
INSERT INTO `sys_oper_log` VALUES (119, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,111,112,113,114,2000,2007,2008,2009,2010,2011,2012,2001,2002,2003,2004,2005,2006,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"quality\",\"roleName\":\"quality\",\"roleSort\":\"100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 12:12:42');
INSERT INTO `sys_oper_log` VALUES (120, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"quality\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":100,\"userName\":\"quality\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 12:12:56');
INSERT INTO `sys_oper_log` VALUES (121, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'quality', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/12/10/blob_20221210122637A001.png\",\"code\":200}', 0, NULL, '2022-12-10 12:26:37');
INSERT INTO `sys_oper_log` VALUES (122, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', NULL, '/system/user/export', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2022-12-10 12:27:18');
INSERT INTO `sys_oper_log` VALUES (123, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', NULL, 1, '导入用户数据不能为空！', '2022-12-10 12:27:31');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"microchip_pin_log\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 12:59:12');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"log\",\"className\":\"MicrochipPinLog\",\"columns\":[{\"capJavaField\":\"Uid\",\"columnId\":20,\"columnName\":\"uid\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"uid\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Threshold\",\"columnComment\":\"调用阈值\",\"columnId\":21,\"columnName\":\"threshold\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"threshold\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Result\",\"columnId\":22,\"columnName\":\"result\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"result\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Confidence\",\"columnComment\":\"分类或检测的置信度\",\"columnId\":23,\"columnName\":\"confidence\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"confidence\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"que', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:00:11');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"log\",\"className\":\"MicrochipClassifyLog\",\"columns\":[{\"capJavaField\":\"Uid\",\"columnId\":4,\"columnName\":\"uid\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"uid\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Threshold\",\"columnComment\":\"调佣阈值\",\"columnId\":5,\"columnName\":\"threshold\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"threshold\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Confidence\",\"columnComment\":\"分类或检测的置信度\",\"columnId\":6,\"columnName\":\"confidence\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"confidence\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Index\",\"columnComment\":\"分类或检测的类别\",\"columnId\":7,\"columnName\":\"index\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"index\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"que', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:17:25');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"classify\",\"className\":\"MicrochipClassifyLog\",\"columns\":[{\"capJavaField\":\"Uid\",\"columnComment\":\"UID\",\"columnId\":4,\"columnName\":\"uid\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"uid\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:17:25\",\"usableColumn\":false},{\"capJavaField\":\"Threshold\",\"columnComment\":\"调佣阈值\",\"columnId\":5,\"columnName\":\"threshold\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"threshold\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:17:25\",\"usableColumn\":false},{\"capJavaField\":\"Confidence\",\"columnComment\":\"分类或检测的置信度\",\"columnId\":6,\"columnName\":\"confidence\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"confidence\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:17:25\",\"usableColumn\":false},{\"capJavaField\":\"Index\",\"columnComment\":\"分类或检测的类别\",\"columnId\":7,\"columnName\":\"index\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:25:58');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-12-10 13:26:22');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"Pin\",\"className\":\"MicrochipPinLog\",\"columns\":[{\"capJavaField\":\"Uid\",\"columnComment\":\"UID\",\"columnId\":20,\"columnName\":\"uid\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"uid\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:00:11\",\"usableColumn\":false},{\"capJavaField\":\"Threshold\",\"columnComment\":\"调用阈值\",\"columnId\":21,\"columnName\":\"threshold\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"threshold\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:00:11\",\"usableColumn\":false},{\"capJavaField\":\"Result\",\"columnComment\":\"返回结果\",\"columnId\":22,\"columnName\":\"result\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"result\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:00:11\",\"usableColumn\":false},{\"capJavaField\":\"Confidence\",\"columnComment\":\"分类或检测的置信度\",\"columnId\":23,\"columnName\":\"confidence\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:27:16');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pin\",\"className\":\"MicrochipPinLog\",\"columns\":[{\"capJavaField\":\"Uid\",\"columnComment\":\"UID\",\"columnId\":20,\"columnName\":\"uid\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"uid\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"Threshold\",\"columnComment\":\"调用阈值\",\"columnId\":21,\"columnName\":\"threshold\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"threshold\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"Result\",\"columnComment\":\"返回结果\",\"columnId\":22,\"columnName\":\"result\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"result\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"Confidence\",\"columnComment\":\"分类或检测的置信度\",\"columnId\":23,\"columnName\":\"confidence\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:59:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:30:06');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-12-10 13:30:12');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"classify\",\"className\":\"MicrochipClassifyLog\",\"columns\":[{\"capJavaField\":\"Uid\",\"columnComment\":\"UID\",\"columnId\":4,\"columnName\":\"uid\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"uid\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:25:58\",\"usableColumn\":false},{\"capJavaField\":\"Threshold\",\"columnComment\":\"调佣阈值\",\"columnId\":5,\"columnName\":\"threshold\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"threshold\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:25:58\",\"usableColumn\":false},{\"capJavaField\":\"Confidence\",\"columnComment\":\"分类或检测的置信度\",\"columnId\":6,\"columnName\":\"confidence\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"confidence\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-12-10 13:25:58\",\"usableColumn\":false},{\"capJavaField\":\"Index\",\"columnComment\":\"分类或检测的类别\",\"columnId\":7,\"columnName\":\"index\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2022-12-08 21:13:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:40:28');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/classify/index\",\"createTime\":\"2022-12-10 13:29:10\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"分类识别日志\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"classify\",\"perms\":\"system:classify:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:46:47');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/pin/index\",\"createTime\":\"2022-12-10 13:32:16\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"针脚检测日志\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"pin\",\"perms\":\"system:pin:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:46:58');
INSERT INTO `sys_oper_log` VALUES (135, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-12-10 12:12:42\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,111,112,113,114,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"quality\",\"roleName\":\"quality\",\"roleSort\":\"100\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:51:40');
INSERT INTO `sys_oper_log` VALUES (136, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"/profile/avatar/2022/12/10/blob_20221210122637A001.png\",\"createBy\":\"admin\",\"createTime\":\"2022-12-10 12:12:56\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2022-12-10 12:55:56\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"quality\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"quality\",\"roleName\":\"quality\",\"roleSort\":\"100\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"quality\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:52:06');
INSERT INTO `sys_oper_log` VALUES (137, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-12-10 12:12:42\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,111,112,113,114,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"quality\",\"roleName\":\"quality\",\"roleSort\":\"100\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 13:52:18');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"Temp\",\"menuType\":\"M\",\"orderNum\":1001,\"params\":{},\"path\":\"/temp\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 15:22:34');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"Temp\",\"menuType\":\"M\",\"orderNum\":1002,\"params\":{},\"parentId\":2026,\"path\":\"/temp\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 15:23:28');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"/system/temp/loading\",\"createTime\":\"2022-12-10 15:23:28\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2027,\"menuName\":\"Temp\",\"menuType\":\"C\",\"orderNum\":1002,\"params\":{},\"parentId\":2026,\"path\":\"/temp\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 15:23:59');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/temp/loading\",\"createTime\":\"2022-12-10 15:23:28\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2027,\"menuName\":\"Temp\",\"menuType\":\"C\",\"orderNum\":1002,\"params\":{},\"parentId\":2026,\"path\":\"/temp\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 15:24:27');
INSERT INTO `sys_oper_log` VALUES (142, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-12-10 12:12:42\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,111,112,113,114,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2013,2026,2027],\"params\":{},\"roleId\":100,\"roleKey\":\"quality\",\"roleName\":\"quality\",\"roleSort\":\"100\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 15:24:50');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/temp/loading\",\"createTime\":\"2022-12-08 21:15:01\",\"icon\":\"eye-open\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"芯片识别\",\"menuType\":\"C\",\"orderNum\":100,\"params\":{},\"parentId\":2000,\"path\":\"/quality\",\"perms\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'芯片识别\'失败，上级菜单不能选择自己\",\"code\":500}', 0, NULL, '2022-12-10 18:57:29');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/temp/loading\",\"createBy\":\"admin\",\"icon\":\"eye-open\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"芯片识别\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"/xs\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 18:58:19');
INSERT INTO `sys_oper_log` VALUES (145, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-12-10 12:12:42\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,111,112,113,114,2000,2028,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2013,2026,2027],\"params\":{},\"roleId\":100,\"roleKey\":\"quality\",\"roleName\":\"quality\",\"roleSort\":\"100\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 18:58:31');
INSERT INTO `sys_oper_log` VALUES (146, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-12-10 12:12:42\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,111,112,113,114,2000,2028,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"quality\",\"roleName\":\"quality\",\"roleSort\":\"100\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 19:04:29');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/quality/index\",\"createTime\":\"2022-12-09 12:55:59\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"检查日志\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"Quality\",\"perms\":\"system:quality:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-10 19:05:50');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-12-08 21:06:38', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-12-08 21:06:38', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-12-08 21:06:38', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, 'quality', 'quality', 100, '1', 1, 1, '0', '0', 'admin', '2022-12-10 12:12:42', 'admin', '2022-12-10 19:04:29', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 111);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 113);
INSERT INTO `sys_role_menu` VALUES (100, 114);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2028);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-12-10 18:56:26', 'admin', '2022-12-08 21:06:38', '', '2022-12-10 18:56:25', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-12-08 21:06:38', 'admin', '2022-12-08 21:06:38', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'quality', 'quality', '00', '', '', '0', '/profile/avatar/2022/12/10/blob_20221210122637A001.png', '$2a$10$wGdy9aihzXpqsxtnES80Ke/diMAjtQcxSKAY/M9.aN6RSHK9Ijigu', '0', '0', '127.0.0.1', '2022-12-10 21:01:02', 'admin', '2022-12-10 12:12:56', 'admin', '2022-12-10 21:01:02', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);

-- ----------------------------
-- Table structure for test_table
-- ----------------------------
DROP TABLE IF EXISTS `test_table`;
CREATE TABLE `test_table`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `a_time` datetime(6) NULL DEFAULT NULL,
  `a_ts` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_table
-- ----------------------------
INSERT INTO `test_table` VALUES (1, '2022-12-08 14:38:12.774680', '2022-12-08 14:38:12.819183');
INSERT INTO `test_table` VALUES (2, '2022-12-08 14:38:12.819183', '2022-12-08 14:38:13.828183');

SET FOREIGN_KEY_CHECKS = 1;
