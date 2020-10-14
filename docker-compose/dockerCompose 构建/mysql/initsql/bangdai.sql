/*
 Navicat Premium Data Transfer

 Source Server         : 114.115.179.0
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 114.115.179.0:3306
 Source Schema         : bangdai

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 16/05/2020 20:25:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ask_order_step
-- ----------------------------
DROP TABLE IF EXISTS `ask_order_step`;
CREATE TABLE `ask_order_step`  (
  `id` int(11) NULL DEFAULT NULL,
  `step_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prompt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ask_order_step
-- ----------------------------
INSERT INTO `ask_order_step` VALUES (1, '帮带人已同意', '是否帮忙带货');
INSERT INTO `ask_order_step` VALUES (2, '求带人已同意', '求带人是否同意');
INSERT INTO `ask_order_step` VALUES (3, '帮带人已发货', '帮带人是否将货物带到');
INSERT INTO `ask_order_step` VALUES (4, '求带人已同意收货', '求带人是否收到货物');
INSERT INTO `ask_order_step` VALUES (5, '评价（默认五星好评）', '请为对方的服务评价');

-- ----------------------------
-- Table structure for chat_message
-- ----------------------------
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `chat_id` bigint(11) NULL DEFAULT NULL,
  `send_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `send_id` int(11) NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `read_` int(11) NULL DEFAULT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_message
-- ----------------------------
INSERT INTO `chat_message` VALUES (1, 1, 'admin', 1, 'hello', 0, 'admin', '2020-04-16 17:32:55', 'admin', '2020-04-16 17:32:55', NULL);
INSERT INTO `chat_message` VALUES (2, 1, 'admin', 1, '哈哈哈哈', 0, 'admin', '2020-04-16 17:35:04', 'admin', '2020-04-16 17:35:04', NULL);
INSERT INTO `chat_message` VALUES (3, 1, 'user', 2, 'hello', 0, 'user', '2020-04-16 17:48:04', 'user', '2020-04-16 17:48:04', NULL);
INSERT INTO `chat_message` VALUES (4, 1, 'user', 2, '12312', 0, 'user', '2020-04-16 17:49:56', 'user', '2020-04-16 17:49:56', NULL);
INSERT INTO `chat_message` VALUES (5, 1, 'admin', 1, '上山打老虎，一二三四五', 0, 'admin', '2020-04-16 18:11:45', 'admin', '2020-04-16 18:11:45', NULL);
INSERT INTO `chat_message` VALUES (6, 1, 'user', 2, '老虎不在家', 0, 'user', '2020-04-16 18:12:39', 'user', '2020-04-16 18:12:39', NULL);

-- ----------------------------
-- Table structure for chat_room
-- ----------------------------
DROP TABLE IF EXISTS `chat_room`;
CREATE TABLE `chat_room`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_room
-- ----------------------------
INSERT INTO `chat_room` VALUES (1, '2020-04-16 00:00:00', 'user', '2020-04-16 00:00:00', 'user', NULL);

-- ----------------------------
-- Table structure for chat_room_user
-- ----------------------------
DROP TABLE IF EXISTS `chat_room_user`;
CREATE TABLE `chat_room_user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `chat_id` bigint(11) NULL DEFAULT NULL,
  `user_id` bigint(11) NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_room_user
-- ----------------------------
INSERT INTO `chat_room_user` VALUES (1, 1, 2, 'user', 'user', '2020-04-16 00:00:00', 'user', '2020-04-16 00:00:00', NULL);
INSERT INTO `chat_room_user` VALUES (2, 1, 1, 'admin', 'admin', '2020-04-16 00:00:00', 'admin', '2020-04-16 00:00:00', NULL);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for geocode_relation
-- ----------------------------
DROP TABLE IF EXISTS `geocode_relation`;
CREATE TABLE `geocode_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `relation_key` bigint(20) NULL DEFAULT NULL COMMENT '表关联的唯一键',
  `sendSite_longitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '发送地经度',
  `sendSite_latitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '发送第纬度',
  `sendSite_geohash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发送地经纬度编码',
  `receSite_longitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '接收地经度',
  `receSite_latitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '接收地纬度',
  `receSite_geohash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '接收地经纬度编码',
  `stoppage_longitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '中转地经度',
  `stoppage_latitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '中转地纬度',
  `stoppage_geohash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '中转地经纬度编码',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '类型 0 订单 1 行程',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0存在 2删除',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `geo_index`(`sendSite_geohash`, `receSite_geohash`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for help_order_step
-- ----------------------------
DROP TABLE IF EXISTS `help_order_step`;
CREATE TABLE `help_order_step`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prompt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of help_order_step
-- ----------------------------
INSERT INTO `help_order_step` VALUES (1, '求带人已同意', '求带人是否同意本次交易');
INSERT INTO `help_order_step` VALUES (2, '帮带人已同意', '帮带人是否同意本次交易');
INSERT INTO `help_order_step` VALUES (3, '求带人已收货', '帮带人是否将货物带到');
INSERT INTO `help_order_step` VALUES (4, '帮带人同意收货', '求带人是否收到货物');
INSERT INTO `help_order_step` VALUES (5, '评价（默认五星好评）', '请为对方的服务评价');

-- ----------------------------
-- Table structure for order_step_info
-- ----------------------------
DROP TABLE IF EXISTS `order_step_info`;
CREATE TABLE `order_step_info`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `help_user_id` bigint(11) NULL DEFAULT NULL COMMENT '帮带人ID',
  `ask_user_id` bigint(11) NULL DEFAULT NULL COMMENT '求带人ID',
  `step_status` int(11) NULL DEFAULT NULL,
  `order_step` int(11) NULL DEFAULT NULL COMMENT '订单执行到第几步',
  `order_type` int(5) NULL DEFAULT NULL COMMENT '1.求带人挂单，2.帮带人挂单',
  `order_no` bigint(11) NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言信息',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除/取消 标志 0未同意  1已同意  2已取消',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_step_info
-- ----------------------------
INSERT INTO `order_step_info` VALUES (1, NULL, NULL, 1, 1, NULL, 12345, NULL, 0, '2020-03-11 18:57:26', NULL, '2020-03-11 19:12:04', NULL, NULL);
INSERT INTO `order_step_info` VALUES (2, NULL, NULL, 1, 2, NULL, 12345, NULL, 0, '2020-03-11 18:57:28', NULL, '2020-03-11 19:12:05', NULL, NULL);
INSERT INTO `order_step_info` VALUES (3, NULL, NULL, 1, 3, NULL, 12345, NULL, 0, '2020-03-11 18:57:31', NULL, '2020-03-13 12:23:55', NULL, NULL);
INSERT INTO `order_step_info` VALUES (4, 1, 1, 1, 1, 1, 1234567, 'j8', 0, '2020-03-12 00:00:00', 'admin', '2020-03-13 11:58:17', 'admin', NULL);
INSERT INTO `order_step_info` VALUES (5, 1, 1, 0, 2, 1, 1234567, 'j8', 0, '2020-03-12 00:00:00', 'admin', '2020-03-12 00:00:00', 'admin', NULL);
INSERT INTO `order_step_info` VALUES (6, NULL, NULL, 1, 4, NULL, 12345, NULL, 0, NULL, NULL, '2020-03-13 12:24:19', NULL, NULL);
INSERT INTO `order_step_info` VALUES (7, NULL, NULL, 1, 5, NULL, 12345, '4', 0, NULL, NULL, '2020-03-13 12:59:50', NULL, NULL);
INSERT INTO `order_step_info` VALUES (8, NULL, NULL, 1, 1, 0, 33, '', 0, '2020-03-19 00:00:00', 'user', '2020-03-19 00:00:00', 'user', NULL);
INSERT INTO `order_step_info` VALUES (9, NULL, NULL, 0, 2, 0, 33, '', 0, '2020-03-19 00:00:00', 'user', '2020-03-19 00:00:00', 'user', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '帮帮带', 0, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-24 17:22:08');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '保密', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别保密');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 0, '未开始', '0', 'user_order_status', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:52:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (30, 0, '已开始', '1', 'user_order_status', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:52:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 0, '已取消', '2', 'user_order_status', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:52:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 0, '交易完成', '3', 'user_order_status', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:52:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 1, '人民币 ¥', '1', 'order_amount_type', NULL, NULL, 'N', '0', 'admin', '2020-05-16 02:29:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (34, 2, '欧元 €', '2', 'order_amount_type', NULL, NULL, 'N', '0', 'admin', '2020-05-16 02:29:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 3, '法郎 ₣', '3', 'order_amount_type', NULL, NULL, 'N', '0', 'admin', '2020-05-16 02:30:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 4, '英镑 ￡', '4', 'order_amount_type', NULL, NULL, 'N', '0', 'admin', '2020-05-16 02:30:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 5, '美元 $', '5', 'order_amount_type', NULL, NULL, 'N', '0', 'admin', '2020-05-16 02:30:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 6, '俄罗斯卢布 руб', '6', 'order_amount_type', NULL, NULL, 'N', '0', 'admin', '2020-05-16 02:31:06', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-03 23:43:07', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '订单状态', 'user_order_status', '0', 'admin', '2020-03-03 23:50:58', '', NULL, '订单状态枚举');
INSERT INTO `sys_dict_type` VALUES (12, '货币类型', 'order_amount_type', '0', 'admin', '2020-05-16 02:29:09', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 18:40:23');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 18:58:45');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 19:50:46');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 10:19:03');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-03 10:30:14');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 10:30:22');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 12:29:27');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 12:29:49');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 12:43:30');
INSERT INTO `sys_logininfor` VALUES (10, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 12:48:29');
INSERT INTO `sys_logininfor` VALUES (11, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 13:00:20');
INSERT INTO `sys_logininfor` VALUES (12, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 13:02:26');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 14:23:24');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 16:07:14');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 16:58:12');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 16:58:37');
INSERT INTO `sys_logininfor` VALUES (17, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 17:03:30');
INSERT INTO `sys_logininfor` VALUES (18, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 17:07:05');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 17:07:25');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 18:07:27');
INSERT INTO `sys_logininfor` VALUES (21, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 18:08:34');
INSERT INTO `sys_logininfor` VALUES (22, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 19:04:12');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 19:04:22');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 19:04:44');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 19:10:18');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 19:10:50');
INSERT INTO `sys_logininfor` VALUES (27, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 19:10:58');
INSERT INTO `sys_logininfor` VALUES (28, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 19:11:56');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 19:12:04');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 19:22:07');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 19:24:01');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 19:24:19');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 10:16:58');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 14:04:09');
INSERT INTO `sys_logininfor` VALUES (35, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 15:02:22');
INSERT INTO `sys_logininfor` VALUES (36, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-08 15:13:52');
INSERT INTO `sys_logininfor` VALUES (37, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 16:41:16');
INSERT INTO `sys_logininfor` VALUES (38, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-08 16:58:05');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 16:58:18');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-08 17:47:10');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 11:46:21');
INSERT INTO `sys_logininfor` VALUES (42, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 14:30:59');
INSERT INTO `sys_logininfor` VALUES (43, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 14:57:29');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 15:00:06');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 15:13:45');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 15:15:46');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-15 16:43:21');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-15 18:12:35');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-15 18:35:16');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-15 18:35:58');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-15 18:36:06');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-15 18:41:18');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-15 18:58:40');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-15 19:13:11');
INSERT INTO `sys_logininfor` VALUES (55, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-04-15 19:13:21');
INSERT INTO `sys_logininfor` VALUES (56, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-15 19:13:31');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 14:48:26');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 15:50:31');
INSERT INTO `sys_logininfor` VALUES (59, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:13:34');
INSERT INTO `sys_logininfor` VALUES (60, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:13:49');
INSERT INTO `sys_logininfor` VALUES (61, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:32:35');
INSERT INTO `sys_logininfor` VALUES (62, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:32:46');
INSERT INTO `sys_logininfor` VALUES (63, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:33:16');
INSERT INTO `sys_logininfor` VALUES (64, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:33:25');
INSERT INTO `sys_logininfor` VALUES (65, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:33:44');
INSERT INTO `sys_logininfor` VALUES (66, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:34:44');
INSERT INTO `sys_logininfor` VALUES (67, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:41:18');
INSERT INTO `sys_logininfor` VALUES (68, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:41:27');
INSERT INTO `sys_logininfor` VALUES (69, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:41:38');
INSERT INTO `sys_logininfor` VALUES (70, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:44:38');
INSERT INTO `sys_logininfor` VALUES (71, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:46:51');
INSERT INTO `sys_logininfor` VALUES (72, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:47:47');
INSERT INTO `sys_logininfor` VALUES (73, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 18:10:54');
INSERT INTO `sys_logininfor` VALUES (74, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:11:05');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 18:12:02');
INSERT INTO `sys_logininfor` VALUES (76, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:12:13');
INSERT INTO `sys_logininfor` VALUES (77, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 18:21:24');
INSERT INTO `sys_logininfor` VALUES (78, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:21:40');
INSERT INTO `sys_logininfor` VALUES (79, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 19:00:55');
INSERT INTO `sys_logininfor` VALUES (80, 'admin', '192.168.56.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-29 04:35:31');
INSERT INTO `sys_logininfor` VALUES (81, 'admin', '219.145.1.56', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-29 04:39:06');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '219.145.1.56', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-29 04:43:20');
INSERT INTO `sys_logininfor` VALUES (83, 'admin', '219.145.1.56', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-29 04:43:26');
INSERT INTO `sys_logininfor` VALUES (84, 'admin', '219.145.1.56', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-29 04:46:07');
INSERT INTO `sys_logininfor` VALUES (85, 'admin', '219.145.1.51', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 13:55:06');
INSERT INTO `sys_logininfor` VALUES (86, 'admin', '219.145.1.186', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 02:28:04');
INSERT INTO `sys_logininfor` VALUES (87, '1024867667@qq.com', '219.145.1.186', '', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-16 02:56:29');
INSERT INTO `sys_logininfor` VALUES (88, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-05-16 03:03:00');
INSERT INTO `sys_logininfor` VALUES (89, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 03:03:13');
INSERT INTO `sys_logininfor` VALUES (90, 'bruce', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-16 03:44:11');
INSERT INTO `sys_logininfor` VALUES (91, 'bruce', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '退出成功', '2020-05-16 03:44:14');
INSERT INTO `sys_logininfor` VALUES (92, 'bruce', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-16 03:44:43');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 04:21:57');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 04:22:17');
INSERT INTO `sys_logininfor` VALUES (95, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 04:47:45');
INSERT INTO `sys_logininfor` VALUES (96, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 04:51:29');
INSERT INTO `sys_logininfor` VALUES (97, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 04:51:41');
INSERT INTO `sys_logininfor` VALUES (98, '8615289283795', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 05:02:28');
INSERT INTO `sys_logininfor` VALUES (99, 'bruce', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 05:04:37');
INSERT INTO `sys_logininfor` VALUES (100, '8615289283795', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 05:04:59');
INSERT INTO `sys_logininfor` VALUES (101, 'bruce', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 05:05:14');
INSERT INTO `sys_logininfor` VALUES (102, '8615289283795', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 05:05:34');
INSERT INTO `sys_logininfor` VALUES (103, 'bruce', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 05:05:50');
INSERT INTO `sys_logininfor` VALUES (104, '1024867667@qq.com', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 05:11:56');
INSERT INTO `sys_logininfor` VALUES (105, 'bruce', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 05:12:13');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 06:12:07');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 06:13:32');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 06:13:40');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 06:23:37');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 06:27:48');
INSERT INTO `sys_logininfor` VALUES (111, '1024867667@qq.com', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 06:41:52');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 08:58:40');
INSERT INTO `sys_logininfor` VALUES (113, 'user', '127.0.0.1', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 09:46:59');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '46.69.175.233', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 09:52:37');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '219.145.1.186', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 10:50:43');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '219.145.1.186', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 10:51:04');
INSERT INTO `sys_logininfor` VALUES (117, 'user', '219.145.1.186', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 10:51:14');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '219.145.1.186', '', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 12:25:14');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '219.145.1.186', '', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 12:25:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1086 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 'M', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 'M', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 'M', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 'C', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 'C', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 'C', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 'C', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 'C', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 'C', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 'C', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 'C', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', 'system/log/index', 1, 'M', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 'C', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 'C', '1', 'monitor:job:list', 'job', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-07 15:32:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 'C', '0', 'monitor:druid:list', 'druid', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 'C', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 'C', '1', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-07 15:31:48', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 'C', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-15 16:44:06', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 'C', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 'C', '0', 'monitor:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 'C', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 'F', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 'F', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 'F', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 'F', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 'F', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 'F', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 'F', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 'F', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 'F', '0', 'monitor:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 'F', '0', 'monitor:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 'F', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 'F', '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 114, 1, '#', '', 1, 'F', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 114, 2, '#', '', 1, 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 114, 3, '#', '', 1, 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 114, 2, '#', '', 1, 'F', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 114, 4, '#', '', 1, 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 114, 5, '#', '', 1, 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '订单管理', 1, 10, 'order', 'system/order/index', 1, 'C', '0', 'system:order:list', 'table', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-24 18:46:47', '订单管理菜单');
INSERT INTO `sys_menu` VALUES (1062, '订单管理查询', 1061, 1, '#', '', 1, 'F', '0', 'system:order:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1063, '订单管理新增', 1061, 2, '#', '', 1, 'F', '0', 'system:order:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1064, '订单管理修改', 1061, 3, '#', '', 1, 'F', '0', 'system:order:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1065, '订单管理删除', 1061, 4, '#', '', 1, 'F', '0', 'system:order:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1066, '订单管理导出', 1061, 5, '#', '', 1, 'F', '0', 'system:order:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1067, '订单明细', 1, 11, 'orderItem', 'system/orderItem/index', 1, 'C', '0', 'system:orderItem:list', 'build', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-24 18:47:03', '订单明细菜单');
INSERT INTO `sys_menu` VALUES (1068, '订单明细查询', 1067, 1, '#', '', 1, 'F', '0', 'system:orderItem:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1069, '订单明细新增', 1067, 2, '#', '', 1, 'F', '0', 'system:orderItem:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1070, '订单明细修改', 1067, 3, '#', '', 1, 'F', '0', 'system:orderItem:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1071, '订单明细删除', 1067, 4, '#', '', 1, 'F', '0', 'system:orderItem:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1072, '订单明细导出', 1067, 5, '#', '', 1, 'F', '0', 'system:orderItem:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1079, '用户评分', 1, 12, 'userScore', 'system/userScore/index', 1, 'C', '0', 'system:userScore:list', 'star', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-24 18:47:20', '用户评分菜单');
INSERT INTO `sys_menu` VALUES (1080, '用户评分查询', 1079, 1, '#', '', 1, 'F', '0', 'system:userScore:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1081, '用户评分新增', 1079, 2, '#', '', 1, 'F', '0', 'system:userScore:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1082, '用户评分修改', 1079, 3, '#', '', 1, 'F', '0', 'system:userScore:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1083, '用户评分删除', 1079, 4, '#', '', 1, 'F', '0', 'system:userScore:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1084, '用户评分导出', 1079, 5, '#', '', 1, 'F', '0', 'system:userScore:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1085, '聊天记录', 1, 14, 'system:chat:index', 'system/chat/index', 1, 'C', '0', '', 'excel', 'admin', '2020-04-29 04:45:31', 'admin', '2020-04-29 04:46:00', '');

-- ----------------------------
-- Table structure for sys_narrative
-- ----------------------------
DROP TABLE IF EXISTS `sys_narrative`;
CREATE TABLE `sys_narrative`  (
  `narrative_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '故事ID',
  `narrative_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '故事内容',
  `image_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '图片链接',
  `create_location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '地理位置',
  `create_author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`narrative_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '故事表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_narrativeinfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_narrativeinfo`;
CREATE TABLE `sys_narrativeinfo`  (
  `narrative_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '故事ID',
  `narrative_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '故事类型',
  `create_author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `content_title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容标题',
  `narrative_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '故事内容',
  `create_location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '地理位置',
  `share_num` int(100) NULL DEFAULT NULL COMMENT '分享次数',
  `comment_num` int(100) NULL DEFAULT NULL COMMENT '评论次数',
  `comment_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `status` int(10) NULL DEFAULT NULL COMMENT '故事状态：0正常 1关闭',
  `image_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`narrative_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '故事表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (2, '登陆日志', 9, 'com.ruoyi.project.monitor.controller.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/logininfor/clean', '127.0.0.1', '127.0.0.1', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-02 17:53:08');
INSERT INTO `sys_oper_log` VALUES (3, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"asd\",\"contentTitle\":\"asd\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-02 19:54:40');
INSERT INTO `sys_oper_log` VALUES (4, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"1\",\"contentTitle\":\"1\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:30:41');
INSERT INTO `sys_oper_log` VALUES (5, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"2\",\"contentTitle\":\"2\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:30:43');
INSERT INTO `sys_oper_log` VALUES (6, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"3\",\"contentTitle\":\"3\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:30:46');
INSERT INTO `sys_oper_log` VALUES (7, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"4\",\"contentTitle\":\"4\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:30:49');
INSERT INTO `sys_oper_log` VALUES (8, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"5\",\"contentTitle\":\"5\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:30:52');
INSERT INTO `sys_oper_log` VALUES (9, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"6\",\"contentTitle\":\"6\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:30:55');
INSERT INTO `sys_oper_log` VALUES (10, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"7\",\"contentTitle\":\"7\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:30:59');
INSERT INTO `sys_oper_log` VALUES (11, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"8\",\"contentTitle\":\"8\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:31:02');
INSERT INTO `sys_oper_log` VALUES (12, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"9\",\"contentTitle\":\"9\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:31:06');
INSERT INTO `sys_oper_log` VALUES (13, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"10\",\"contentTitle\":\"10\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:31:11');
INSERT INTO `sys_oper_log` VALUES (14, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'admin', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"admin\",\"narrativeContent\":\"11\",\"contentTitle\":\"11\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-04-03 10:31:26');
INSERT INTO `sys_oper_log` VALUES (15, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.220444,\"recesiteLongitude\":121.9318879,\"senderId\":1,\"orderAmount\":\"99.9\",\"sendSite\":\"Xi\'an, Shaanxi, China\",\"expectData\":1586102399000,\"recesiteLatitude\":31.2699895,\"sendsiteLongitude\":109.1115059,\"items\":[{\"totalAmount\":\"100\",\"singleInsured\":\"100\",\"goodsName\":\"化妆品\",\"goodsNum\":1,\"goodsWeight\":\"3\"}],\"receSite\":\"Shanghai\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-03 12:31:12');
INSERT INTO `sys_oper_log` VALUES (16, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', 'null', 1, '', '2020-04-03 17:12:48');
INSERT INTO `sys_oper_log` VALUES (17, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', 'null', 1, '', '2020-04-03 17:13:09');
INSERT INTO `sys_oper_log` VALUES (18, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', 'null', 1, '', '2020-04-03 17:14:24');
INSERT INTO `sys_oper_log` VALUES (19, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', 'null', 1, '', '2020-04-03 17:15:19');
INSERT INTO `sys_oper_log` VALUES (20, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', 'null', 1, '', '2020-04-03 17:19:55');
INSERT INTO `sys_oper_log` VALUES (21, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', 'null', 1, '', '2020-04-03 17:20:04');
INSERT INTO `sys_oper_log` VALUES (22, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', 'null', 1, '', '2020-04-03 17:20:54');
INSERT INTO `sys_oper_log` VALUES (23, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239200,\"params\":{}}', '{\"msg\":\"该订单未查询到,请刷新订单列表重试\",\"code\":500}', 0, NULL, '2020-04-03 17:24:07');
INSERT INTO `sys_oper_log` VALUES (24, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239122,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-03 17:28:33');
INSERT INTO `sys_oper_log` VALUES (25, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"orderNo\":2020040312311239122,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-03 17:32:09');
INSERT INTO `sys_oper_log` VALUES (26, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.editReveiver()', 'PUT', 1, 'admin', NULL, '/system/order/editReveiver', '127.0.0.1', '127.0.0.1', '{\"journeyId\":1,\"receiverId\":2,\"updateBy\":\"admin\",\"orderNo\":2020040312311239122,\"updateTime\":1585906552563,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-03 17:35:52');
INSERT INTO `sys_oper_log` VALUES (27, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":40.2514373,\"recesiteLongitude\":109.1115059,\"senderId\":1,\"orderAmount\":\"6\",\"sendSite\":\"Beijing\",\"expectData\":1586275199000,\"recesiteLatitude\":34.220444,\"sendsiteLongitude\":116.6283074,\"items\":[{\"totalAmount\":\"3\",\"singleInsured\":\"3\",\"goodsName\":\"化妆品\",\"goodsNum\":1,\"goodsWeight\":\"2.5\"}],\"receSite\":\"Xi\'an, Shaanxi, China\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-03 17:45:21');
INSERT INTO `sys_oper_log` VALUES (28, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":40.2514373,\"remark\":\"asdasd\",\"recesiteLatitude\":23.5489463,\"recesiteLongitude\":108.7918553,\"senderId\":1,\"orderAmount\":\"5\",\"sendSite\":\"Beijing\",\"expectData\":1586275199000,\"sendsiteLongitude\":116.6283074,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"化妆品,奶粉\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"Guangxi\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-03 17:59:50');
INSERT INTO `sys_oper_log` VALUES (29, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":51.473454000000004,\"recesiteLatitude\":39.5113035,\"recesiteLongitude\":116.410748,\"senderId\":2,\"orderAmount\":\"5\",\"sendSite\":\"伦敦希思罗机场, Nelson Rd, 豪恩斯洛, 英格兰 TW6 1NB, 英国\",\"expectData\":1586620799000,\"sendsiteLongitude\":-0.4618685,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"化妆品,奶粉\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"北京大兴国际机场, 廊坊市 中华人民共和国\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-08 15:02:25');
INSERT INTO `sys_oper_log` VALUES (30, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.44281,\"recesiteLatitude\":40.7648,\"recesiteLongitude\":-73.9808,\"senderId\":1,\"orderAmount\":\"0\",\"sendSite\":\"西安咸阳国际机场, Airport Rd  空港大道, 咸阳市, 陕西省, 中华人民共和国\",\"expectData\":1587398399000,\"sendsiteLongitude\":108.754052,\"items\":[{\"totalAmount\":\"0\",\"singleInsured\":\"0\",\"goodsName\":\"\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"纽约, 纽约州, 美国\"}', 'null', 1, '{goodsName=物品名称不能为空}', '2020-04-14 12:08:38');
INSERT INTO `sys_oper_log` VALUES (31, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.26667,\"recesiteLatitude\":31.16667,\"recesiteLongitude\":121.46667,\"senderId\":1,\"orderAmount\":\"10\",\"sendSite\":\"中华人民共和国陕西省西安市\",\"expectData\":1587398399000,\"sendsiteLongitude\":108.9,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"化妆品,文件\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"中华人民共和国上海市\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-14 12:14:32');
INSERT INTO `sys_oper_log` VALUES (32, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '127.0.0.1', '{\"visible\":\"0\",\"icon\":\"code\",\"orderNum\":\"2\",\"menuName\":\"代码生成\",\"params\":{},\"parentId\":3,\"path\":\"gen\",\"component\":\"tool/gen/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":114,\"menuType\":\"C\",\"perms\":\"tool:gen:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-15 16:44:06');
INSERT INTO `sys_oper_log` VALUES (33, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '127.0.0.1', 'user_order_img', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-15 16:49:47');
INSERT INTO `sys_oper_log` VALUES (34, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '127.0.0.1', '{\"functionAuthor\":\"bangdai\",\"columns\":[{\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1586940587000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":87,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderNo\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1586940587000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"order_no\"},{\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"imgId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1586940587000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"img_id\"}],\"businessName\":\"img\",\"moduleName\":\"system\",\"className\":\"UserOrderImg\",\"tableName\":\"user_order_img\",\"crud\":true,\"options\":\"{}\",\"packageName\":\"com.ruoyi.project.system\",\"functionName\":\"订单图片关联\",\"tree\":false,\"tableComment\":\"订单图片关联表\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-15 16:53:00');
INSERT INTO `sys_oper_log` VALUES (35, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '127.0.0.1', '{}', 'null', 0, NULL, '2020-04-15 16:53:17');
INSERT INTO `sys_oper_log` VALUES (36, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/6', '127.0.0.1', '127.0.0.1', '{tableIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-15 16:53:32');
INSERT INTO `sys_oper_log` VALUES (37, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/5', '127.0.0.1', '127.0.0.1', '{tableIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-15 16:53:39');
INSERT INTO `sys_oper_log` VALUES (38, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.26667,\"uploadKey\":\"679c1325-3c2e-4c65-809a-869fed87cdba\",\"recesiteLatitude\":40.7648,\"recesiteLongitude\":-73.9808,\"senderId\":1,\"orderAmount\":\"20\",\"sendSite\":\"中华人民共和国陕西省西安市\",\"expectData\":1587225599000,\"sendsiteLongitude\":108.9,\"items\":[{\"totalAmount\":\"5\",\"singleInsured\":\"5\",\"goodsName\":\"文件,化妆品,奶粉\",\"goodsNum\":1,\"goodsWeight\":\"3\"}],\"receSite\":\"纽约, 纽约州, 美国\"}', 'null', 1, 'java.lang.Integer cannot be cast to java.lang.Long', '2020-04-15 17:05:04');
INSERT INTO `sys_oper_log` VALUES (39, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.26667,\"uploadKey\":\"74b5a4c0-e851-4376-8b42-409d8071069d\",\"recesiteLatitude\":40.7648,\"recesiteLongitude\":-73.9808,\"senderId\":1,\"orderAmount\":\"20\",\"sendSite\":\"中华人民共和国陕西省西安市\",\"expectData\":1587225599000,\"sendsiteLongitude\":108.9,\"items\":[{\"totalAmount\":\"5\",\"singleInsured\":\"5\",\"goodsName\":\"文件,化妆品,奶粉\",\"goodsNum\":1,\"goodsWeight\":\"3\"}],\"receSite\":\"纽约, 纽约州, 美国\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-15 17:24:07');
INSERT INTO `sys_oper_log` VALUES (40, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.26667,\"uploadKey\":\"c7b70f32-5dad-4b05-900f-49544292daa3\",\"recesiteLatitude\":40.7648,\"recesiteLongitude\":-73.9808,\"senderId\":1,\"orderAmount\":\"7\",\"sendSite\":\"中华人民共和国陕西省西安市\",\"expectData\":1587398399000,\"sendsiteLongitude\":108.9,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"化妆品,文件\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"纽约, 纽约州, 美国\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.system.mapper.UserOrderImgMapper.insertUserOrderImg-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into user_order_img          ( order_no,             img_id )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-04-15 17:27:40');
INSERT INTO `sys_oper_log` VALUES (41, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.26667,\"uploadKey\":\"692df2e4-e3d0-4f1d-a293-339ea8ded3f9\",\"recesiteLatitude\":40.7648,\"recesiteLongitude\":-73.9808,\"senderId\":1,\"orderAmount\":\"7\",\"sendSite\":\"中华人民共和国陕西省西安市\",\"expectData\":1587398399000,\"sendsiteLongitude\":108.9,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"化妆品,文件\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"纽约, 纽约州, 美国\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-15 17:38:40');
INSERT INTO `sys_oper_log` VALUES (42, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '127.0.0.1', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/04/15/6b2b542ab204ba5301bd12ff63ac78d8.jpeg\",\"code\":200}', 0, NULL, '2020-04-15 17:51:27');
INSERT INTO `sys_oper_log` VALUES (43, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":31.16667,\"uploadKey\":\"62132b02-1b87-4407-b33b-2fa12612f929\",\"recesiteLatitude\":39.905,\"recesiteLongitude\":116.39139,\"senderId\":2,\"orderAmount\":\"3\",\"sendSite\":\"中华人民共和国上海市\",\"expectData\":1587398399000,\"sendsiteLongitude\":121.46667,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"化妆品,奶粉\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"中华人民共和国北京市\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-16 17:32:15');
INSERT INTO `sys_oper_log` VALUES (44, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.receiveOrder()', 'POST', 1, 'admin', NULL, '/system/order/receiveOrder/2020041617321557281', '127.0.0.1', '127.0.0.1', '2020041617321557281 3', '{\"msg\":\"接收订单成功\",\"code\":200}', 0, NULL, '2020-04-16 17:35:06');
INSERT INTO `sys_oper_log` VALUES (45, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":39.905,\"uploadKey\":\"d200b1d2-f154-406c-b47c-e6ba4e56e7b3\",\"recesiteLatitude\":31.16667,\"recesiteLongitude\":121.46667,\"senderId\":1,\"orderAmount\":\"3\",\"sendSite\":\"中华人民共和国北京市\",\"expectData\":1587830399000,\"sendsiteLongitude\":116.39139,\"items\":[{\"totalAmount\":\"3\",\"singleInsured\":\"3\",\"goodsName\":\"奶粉,酒类\",\"goodsNum\":1,\"goodsWeight\":\"1.5\"}],\"receSite\":\"中华人民共和国上海市\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-16 17:44:51');
INSERT INTO `sys_oper_log` VALUES (46, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"sendsiteLatitude\":34.26667,\"uploadKey\":\"bad4f511-c291-4a95-823d-0777a3a172cf\",\"recesiteLatitude\":39.905,\"recesiteLongitude\":116.39139,\"senderId\":1,\"orderAmount\":\"5\",\"sendSite\":\"中华人民共和国陕西省西安市\",\"expectData\":1587398399000,\"sendsiteLongitude\":108.9,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"奶粉,酒类\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"中华人民共和国北京市\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-04-16 17:46:31');
INSERT INTO `sys_oper_log` VALUES (47, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.receiveOrder()', 'POST', 1, 'user', NULL, '/system/order/receiveOrder/2020041617445185734', '127.0.0.1', '127.0.0.1', '2020041617445185734 1', '{\"msg\":\"接收订单成功\",\"code\":200}', 0, NULL, '2020-04-16 17:48:09');
INSERT INTO `sys_oper_log` VALUES (48, '订单管理', 2, 'com.ruoyi.project.system.controller.UserOrderController.receiveOrder()', 'POST', 1, 'user', NULL, '/system/order/receiveOrder/2020041617463133265', '127.0.0.1', '127.0.0.1', '2020041617463133265 2', '{\"msg\":\"接收订单成功\",\"code\":200}', 0, NULL, '2020-04-16 17:49:58');
INSERT INTO `sys_oper_log` VALUES (49, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '219.145.1.56', '219.145.1.56', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"14\",\"menuName\":\"聊天记录\",\"params\":{},\"parentId\":1,\"path\":\"system/chat/index\",\"component\":\"system:chat:index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-29 04:45:31');
INSERT INTO `sys_oper_log` VALUES (50, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '219.145.1.56', '219.145.1.56', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"14\",\"menuName\":\"聊天记录\",\"params\":{},\"parentId\":1,\"path\":\"system:chat:index\",\"component\":\"system/chat/index\",\"children\":[],\"createTime\":1588106731000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1085,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-04-29 04:46:00');
INSERT INTO `sys_oper_log` VALUES (51, '发送邮件', 0, 'com.ruoyi.project.utils.MailUtil.sendMail()', 'GET', 1, 'admin', NULL, '/changeEmail', '219.145.1.51', '219.145.1.51', '{}', 'null', 0, NULL, '2020-05-15 13:55:27');
INSERT INTO `sys_oper_log` VALUES (52, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '219.145.1.186', '219.145.1.186', '{\"params\":{},\"dictType\":\"order_amount_type\",\"createBy\":\"admin\",\"dictName\":\"货币类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:29:09');
INSERT INTO `sys_oper_log` VALUES (53, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '219.145.1.186', '219.145.1.186', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"order_amount_type\",\"dictLabel\":\"人民币 ¥\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:29:44');
INSERT INTO `sys_oper_log` VALUES (54, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '219.145.1.186', '219.145.1.186', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"order_amount_type\",\"dictLabel\":\"欧元 €\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:29:57');
INSERT INTO `sys_oper_log` VALUES (55, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '219.145.1.186', '219.145.1.186', '{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"order_amount_type\",\"dictLabel\":\"法郎 ₣\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:30:20');
INSERT INTO `sys_oper_log` VALUES (56, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '219.145.1.186', '219.145.1.186', '{\"dictValue\":\"4\",\"dictSort\":4,\"params\":{},\"dictType\":\"order_amount_type\",\"dictLabel\":\"英镑 ￡\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:30:35');
INSERT INTO `sys_oper_log` VALUES (57, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '219.145.1.186', '219.145.1.186', '{\"dictValue\":\"5\",\"dictSort\":5,\"params\":{},\"dictType\":\"order_amount_type\",\"dictLabel\":\"美元 $\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:30:50');
INSERT INTO `sys_oper_log` VALUES (58, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '219.145.1.186', '219.145.1.186', '{\"dictValue\":\"6\",\"dictSort\":6,\"params\":{},\"dictType\":\"order_amount_type\",\"dictLabel\":\"俄罗斯卢布 руб\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:31:06');
INSERT INTO `sys_oper_log` VALUES (59, '发送邮件', 0, 'com.ruoyi.project.utils.MailUtil.sendMail()', 'POST', 1, NULL, NULL, '/register', '219.145.1.186', '219.145.1.186', '1024867667@qq.com 帮带邮箱验证 点击此链接认证邮箱<a href=\'http://114.115.179.0:8080/checkEmail?code=eyJhbGciOiJIUzUxMiJ9.eyJlbWFpbF91dWlkIjoiOGJlZTg3ZjdlZTFhNDRhMWIwZGNiNDVlMWI0ZTFkZGUifQ.2pHPz7emDoSq2eleNaTTHswkDUP4T-z0Z5ZDCe_3py4--Dpu907Eov5ZufTUjvUFOX1kFFokri1DXKbct_F2jA\' style=\'color:red;\'>开始认证</a>', 'null', 0, NULL, '2020-05-16 02:56:22');
INSERT INTO `sys_oper_log` VALUES (60, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'bruce', NULL, '/system/user/profile', '219.145.1.186', '219.145.1.186', '{\"phonenumber\":\"\",\"admin\":false,\"email\":\"\",\"nickName\":\"钢铁侠\",\"sex\":\"0\",\"params\":{},\"userName\":\"\",\"userId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 02:57:06');
INSERT INTO `sys_oper_log` VALUES (61, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '127.0.0.1', '{\"phonenumber\":\"\",\"admin\":true,\"email\":\"\",\"nickName\":\"\",\"sex\":\"0\",\"params\":{},\"userName\":\"\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-05-16 06:12:19');
INSERT INTO `sys_oper_log` VALUES (62, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'admin', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"amountType\":1,\"sendsiteLatitude\":-34.0,\"uploadKey\":\"56afa90b-c0ff-4f70-b74e-2c2a74d1ead6\",\"recesiteLatitude\":-25.0,\"recesiteLongitude\":135.0,\"senderId\":1,\"orderAmount\":\"2\",\"sendSite\":\"阿根廷\",\"expectData\":1590854399000,\"sendsiteLongitude\":-64.0,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"奶粉,保健品\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"澳大利亚\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-05-16 06:15:53');
INSERT INTO `sys_oper_log` VALUES (63, '发送邮件', 0, 'com.ruoyi.project.utils.MailUtil.sendMail()', 'GET', 1, NULL, NULL, '/sendEmailCaptchaSms', '127.0.0.1', '127.0.0.1', '{}', 'null', 0, NULL, '2020-05-16 07:34:30');
INSERT INTO `sys_oper_log` VALUES (64, '发送邮件', 0, 'com.ruoyi.project.utils.MailUtil.sendMail()', 'GET', 1, NULL, NULL, '/sendEmailCaptchaSms', '127.0.0.1', '127.0.0.1', '{}', 'null', 0, NULL, '2020-05-16 07:51:44');
INSERT INTO `sys_oper_log` VALUES (65, '发送邮件', 0, 'com.ruoyi.project.utils.MailUtil.sendMail()', 'GET', 1, NULL, NULL, '/sendEmailCaptchaSms', '127.0.0.1', '127.0.0.1', '{}', 'null', 0, NULL, '2020-05-16 07:58:50');
INSERT INTO `sys_oper_log` VALUES (66, '发送邮件', 0, 'com.ruoyi.project.utils.MailUtil.sendMail()', 'GET', 1, NULL, NULL, '/sendEmailCaptchaSms', '127.0.0.1', '127.0.0.1', '{}', 'null', 0, NULL, '2020-05-16 08:06:38');
INSERT INTO `sys_oper_log` VALUES (67, '发送邮件', 0, 'com.ruoyi.project.utils.MailUtil.sendMail()', 'GET', 1, NULL, NULL, '/sendEmailCaptchaSms', '127.0.0.1', '127.0.0.1', '{}', 'null', 0, NULL, '2020-05-16 08:15:01');
INSERT INTO `sys_oper_log` VALUES (68, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"amountType\":1,\"sendsiteLatitude\":-11.0,\"uploadKey\":\"e3bc0c71-bc4f-4959-af08-0a383fd40352\",\"recesiteLatitude\":-6.5,\"recesiteLongitude\":106.25,\"senderId\":2,\"orderAmount\":\"2\",\"sendSite\":\"巴西\",\"expectData\":1590595199000,\"sendsiteLongitude\":-53.0,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"奶粉,保健品\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"印度尼西亚万丹省\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-05-16 09:47:12');
INSERT INTO `sys_oper_log` VALUES (69, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"amountType\":1,\"sendsiteLatitude\":37.0,\"uploadKey\":\"fff2c755-8a5f-4d32-bfbf-c7741a723bf5\",\"recesiteLatitude\":56.0,\"recesiteLongitude\":-109.0,\"senderId\":2,\"orderAmount\":\"3\",\"sendSite\":\"美国加利福尼亚州\",\"expectData\":1590681599000,\"sendsiteLongitude\":-120.0,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"奶粉\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"加拿大\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-05-16 09:47:48');
INSERT INTO `sys_oper_log` VALUES (70, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"amountType\":1,\"sendsiteLatitude\":-34.59972,\"uploadKey\":\"ae8a4cf5-83da-4d96-8055-d76681208616\",\"recesiteLatitude\":51.0,\"recesiteLongitude\":10.0,\"senderId\":2,\"orderAmount\":\"3\",\"sendSite\":\"阿根廷布宜诺斯艾利斯\",\"expectData\":1590681599000,\"sendsiteLongitude\":-58.38194,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"酒类,食品\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"德国\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-05-16 09:48:23');
INSERT INTO `sys_oper_log` VALUES (71, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"amountType\":1,\"sendsiteLatitude\":19.41944,\"uploadKey\":\"57e2939f-ccd4-43f6-baa4-0b6b953fca80\",\"recesiteLatitude\":51.0,\"recesiteLongitude\":10.0,\"senderId\":2,\"orderAmount\":\"1\",\"sendSite\":\"墨西哥墨西哥城\",\"expectData\":1590767999000,\"sendsiteLongitude\":-99.14556,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"酒类,产品样品\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"德国\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-05-16 10:15:49');
INSERT INTO `sys_oper_log` VALUES (72, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"amountType\":1,\"sendsiteLatitude\":19.0,\"uploadKey\":\"d5ee3b33-a024-4edc-8dc2-4e2c63d9c215\",\"recesiteLatitude\":-25.0,\"recesiteLongitude\":135.0,\"senderId\":2,\"orderAmount\":\"2\",\"sendSite\":\"沙特阿拉伯阿西尔省\",\"expectData\":1590854399000,\"sendsiteLongitude\":43.0,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"酒类,产品样品\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"澳大利亚\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-05-16 10:16:15');
INSERT INTO `sys_oper_log` VALUES (73, '订单管理', 1, 'com.ruoyi.project.system.controller.UserOrderController.createOrder()', 'POST', 1, 'user', NULL, '/system/order/createOrder', '127.0.0.1', '127.0.0.1', '{\"amountType\":1,\"sendsiteLatitude\":39.0,\"uploadKey\":\"b5c17aa8-64b8-498d-a2f6-5ff7ca26bce2\",\"recesiteLatitude\":40.0,\"recesiteLongitude\":-100.0,\"senderId\":2,\"orderAmount\":\"1\",\"sendSite\":\"土耳其\",\"expectData\":1590854399000,\"sendsiteLongitude\":36.0,\"items\":[{\"totalAmount\":\"1\",\"singleInsured\":\"1\",\"goodsName\":\"奶粉,酒类\",\"goodsNum\":1,\"goodsWeight\":\"1\"}],\"receSite\":\"美国\"}', '{\"msg\":\"下单成功\",\"code\":200}', 0, NULL, '2020-05-16 10:30:38');
INSERT INTO `sys_oper_log` VALUES (74, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'user', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"user\",\"narrativeContent\":\"123\",\"contentTitle\":\"1\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-05-16 11:04:06');
INSERT INTO `sys_oper_log` VALUES (75, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'user', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"user\",\"narrativeContent\":\"123\",\"contentTitle\":\"123\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-05-16 11:04:10');
INSERT INTO `sys_oper_log` VALUES (76, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'user', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"user\",\"narrativeContent\":\"21\",\"contentTitle\":\"321\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-05-16 11:04:13');
INSERT INTO `sys_oper_log` VALUES (77, '故事信息', 1, 'com.ruoyi.project.system.controller.NarrativeController.add()', 'POST', 1, 'user', NULL, '/system/narrativeInfo/add', '127.0.0.1', '127.0.0.1', '{\"createAuthor\":\"user\",\"narrativeContent\":\"31\",\"contentTitle\":\"12331\",\"narrativeType\":\"1\",\"params\":{},\"shareNum\":0,\"commentNum\":0,\"status\":0}', '{\"msg\":\"新增成功\",\"code\":200}', 0, NULL, '2020-05-16 11:04:18');

-- ----------------------------
-- Table structure for sys_personaljourney
-- ----------------------------
DROP TABLE IF EXISTS `sys_personaljourney`;
CREATE TABLE `sys_personaljourney`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `STATE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '行程状态 0：未开始  1：进行中 2：行程结束',
  `USER_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '被委托人用户名',
  `USER_ID` bigint(20) NULL DEFAULT NULL COMMENT '被委托人ID',
  `PLACE_LEAVE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '出发地',
  `PLACE_ARRIVE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '到达地',
  `PLACE_LEAVE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '出发时间',
  `PLACE_ARRIVE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '到达时间',
  `TRIP_MODEL` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '出行方式',
  `AIRPLANE_NUMMBER` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '航班号',
  `STOP_PAGE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '经停地点\r\n',
  `CREATE_USER_ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_USER_ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `PACKAGE_WEIGHT` double NULL DEFAULT NULL COMMENT '背包容量',
  `GOODS_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物品名称',
  `USERFUL_WEIGHT` double NULL DEFAULT NULL COMMENT '可用容量',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, '001', '超级管理员', 1, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-07 15:21:53', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-07 15:23:24', '');
INSERT INTO `sys_post` VALUES (3, '3', '普通人员', 0, '0', 'admin', '2020-03-03 21:03:24', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_praise
-- ----------------------------
DROP TABLE IF EXISTS `sys_praise`;
CREATE TABLE `sys_praise`  (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '点赞的id',
  `narrative_id` bigint(100) NULL DEFAULT NULL COMMENT '故事id',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点赞的用户',
  `praise_time` datetime(0) NULL DEFAULT NULL COMMENT '点赞的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-03 21:00:36', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

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
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
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
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
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
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (2, 1062);
INSERT INTO `sys_role_menu` VALUES (2, 1063);
INSERT INTO `sys_role_menu` VALUES (2, 1064);
INSERT INTO `sys_role_menu` VALUES (2, 1065);
INSERT INTO `sys_role_menu` VALUES (2, 1066);
INSERT INTO `sys_role_menu` VALUES (2, 1067);
INSERT INTO `sys_role_menu` VALUES (2, 1068);
INSERT INTO `sys_role_menu` VALUES (2, 1069);
INSERT INTO `sys_role_menu` VALUES (2, 1070);
INSERT INTO `sys_role_menu` VALUES (2, 1071);
INSERT INTO `sys_role_menu` VALUES (2, 1072);
INSERT INTO `sys_role_menu` VALUES (2, 1079);
INSERT INTO `sys_role_menu` VALUES (2, 1080);
INSERT INTO `sys_role_menu` VALUES (2, 1081);
INSERT INTO `sys_role_menu` VALUES (2, 1082);
INSERT INTO `sys_role_menu` VALUES (2, 1083);
INSERT INTO `sys_role_menu` VALUES (2, 1084);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '帮带', '00', 'ma.mingqi@hellosvs.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'admin', '2020-05-16 06:12:19', '管理员');
INSERT INTO `sys_user` VALUES (2, 100, 'user', '求带', '00', 'qd@163.com', '15888888889', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '', NULL, '', NULL, 'admin', '2020-04-01 19:31:10', NULL);
INSERT INTO `sys_user` VALUES (3, 100, 'bruce', '钢铁侠', '00', '1024867667@qq.com', '8615289283795', '3', '', '$2a$10$6V/.pYmb07Cb.WovIzZ7N.cEg.3g7K9DiS71918ytpVmcUsyl1WGG', '0', '0', '', NULL, '', '2020-05-16 02:56:22', '', '2020-05-16 02:59:35', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 1);

-- ----------------------------
-- Table structure for upload_info
-- ----------------------------
DROP TABLE IF EXISTS `upload_info`;
CREATE TABLE `upload_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传后的文件名',
  `file_origin_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `file_path` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传后的路径',
  `file_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `upload_time` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for upload_user_img
-- ----------------------------
DROP TABLE IF EXISTS `upload_user_img`;
CREATE TABLE `upload_user_img`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `img_id` bigint(11) NULL DEFAULT NULL,
  `img_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(11) NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `card_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pon` int(5) NULL DEFAULT NULL COMMENT '正反面：1正面   2反面',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` bigint(20) NULL DEFAULT NULL COMMENT '订单编号',
  `sender_id` bigint(20) NULL DEFAULT NULL COMMENT '发起人ID',
  `receiver_id` bigint(20) NULL DEFAULT NULL COMMENT '接收人ID',
  `journey_id` bigint(20) NULL DEFAULT NULL COMMENT '行程ID',
  `send_site` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配送地',
  `rece_site` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地',
  `expect_data` datetime(0) NULL DEFAULT NULL COMMENT '期望到货时间',
  `actual_data` datetime(0) NULL DEFAULT NULL COMMENT '实际到货时间',
  `trade_status` int(10) NULL DEFAULT NULL COMMENT '交易状态',
  `pay_status` int(10) NULL DEFAULT NULL COMMENT '支付状态',
  `order_amount` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单佣金',
  `amount_type` int(10) NULL DEFAULT NULL COMMENT '金额类型',
  `pay_channel` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付渠道',
  `pay_no` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付单号',
  `pay_sn` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付流水号',
  `is_score` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否评价 0否 1是',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0存在 2删除',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_item_fk`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_order_img
-- ----------------------------
DROP TABLE IF EXISTS `user_order_img`;
CREATE TABLE `user_order_img`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` bigint(20) NULL DEFAULT NULL,
  `journey_id` bigint(20) NULL DEFAULT NULL,
  `img_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_order_item
-- ----------------------------
DROP TABLE IF EXISTS `user_order_item`;
CREATE TABLE `user_order_item`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` bigint(20) NULL DEFAULT NULL COMMENT '订单编号',
  `order_item_no` bigint(20) NULL DEFAULT NULL COMMENT '订单明细编号',
  `goods_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品名称',
  `goods_type` int(10) NULL DEFAULT NULL COMMENT '物品类型',
  `goods_num` int(10) NULL DEFAULT NULL COMMENT '物品数量',
  `goods_weight` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品重量',
  `single_insured` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单个物品保价',
  `total_amount` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总金额',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0存在 2删除',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_order_type
-- ----------------------------
DROP TABLE IF EXISTS `user_order_type`;
CREATE TABLE `user_order_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` bigint(20) NULL DEFAULT NULL,
  `order_type` int(5) NULL DEFAULT NULL COMMENT '1求带人挂单  2 帮带人挂单',
  `del_flag` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_score
-- ----------------------------
DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `impression_score` decimal(10, 2) NULL DEFAULT NULL COMMENT '印象分数',
  `service_score` decimal(10, 2) NULL DEFAULT NULL COMMENT '服务分数',
  `bangdai_count` int(250) NULL DEFAULT NULL COMMENT '带货次数',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0存在 2删除',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
