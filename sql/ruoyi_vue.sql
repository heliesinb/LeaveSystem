/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : ruoyi_vue

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 04/05/2022 19:38:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'sys_leave', '请假信息表', NULL, NULL, 'SysLeave', 'crud', 'com.ruoyi.system', 'system', 'leave', '请假信息', 'cVzhanshi', '0', '/', '{\"parentMenuId\":1}', 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (39, '3', 'leave_id', '请假ID', 'bigint(20)', 'Long', 'leaveId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (40, '3', 'user_id', '请假人id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (41, '3', 'user_name', '请假人', 'varchar(30)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (42, '3', 'leave_type', '请假类型', 'char(1)', 'String', 'leaveType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_leave_type', 4, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (43, '3', 'leave_time_type', '请假时长类型', 'char(1)', 'String', 'leaveTimeType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_leave_time_type', 5, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (44, '3', 'start_time', '开始时间', 'datetime', 'Date', 'startTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (45, '3', 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (46, '3', 'is_leave_school', '是否离校', 'char(1)', 'String', 'isLeaveSchool', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_is_leave_school', 8, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (47, '3', 'address', '离校目的地地址', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (48, '3', 'reason', '请假原因', 'varchar(255)', 'String', 'reason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (49, '3', 'ecp_phone', '紧急联系人', 'varchar(11)', 'String', 'ecpPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (50, '3', 'approval_id', '审批人id', 'bigint(20)', 'Long', 'approvalId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (51, '3', 'approval_name', '审批人', 'varchar(30)', 'String', 'approvalName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (52, '3', 'approval_type', '审批类型', 'char(1)', 'String', 'approvalType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_approval_type', 14, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (53, '3', 'leave_status', '销假状态', 'char(1)', 'String', 'leaveStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_leave_status', 15, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (54, '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (55, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (56, '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (57, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (58, '3', 'deleted', '是否删除', 'char(1)', 'String', 'deleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', 'sys_deleted', 20, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');
INSERT INTO `gen_table_column` VALUES (59, '3', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 21, 'admin', '2022-04-19 21:32:58', '', '2022-04-19 21:34:36');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-03-25 16:05:40', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-03-25 16:05:40', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-03-25 16:05:40', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-03-25 16:05:40', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2022-03-25 16:05:40', 'admin', '2022-05-01 22:38:29', '是否开启注册用户功能（true开启，false关闭）');

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
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'Github', 0, '老王', '15888888888', 'laowang@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:36:48');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', 'A校区', 1, '老李', '15888888888', 'laoli@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:37:20');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', 'B校区', 2, '老沈', '15888888888', 'laoshen@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:37:38');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '信息学院', 1, '老连', '15888888888', 'cvzhanshi@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:39:11');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '土测学院', 2, '老土', '15888888888', 'laotu@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:39:32');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '理学院', 3, '老理', '15888888888', 'laoli2@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:39:53');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '机电学院', 4, '老机', '15888888888', 'laoji@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:41:13');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '电气学院', 5, '老店', '15888888888', 'laodian@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:41:43');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '外国语学院', 1, '老龚', '15888888888', 'laogong@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:38:08');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '经管学院', 2, '老白', '15888888888', 'laobai@qq.com', '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-14 09:38:38');
INSERT INTO `sys_dept` VALUES (110, 102, '0,100,102', '法学院', 3, '老孟', '15888888888', 'laomeng@qq.com', '0', '0', 'admin', '2022-04-14 09:42:25', 'admin', '2022-04-14 10:24:52');
INSERT INTO `sys_dept` VALUES (111, 102, '0,100,102', '应急管理学院', 4, '蓝帆', '15888888888', 'laofan@qq.com', '0', '0', 'admin', '2022-04-14 10:24:03', '', NULL);
INSERT INTO `sys_dept` VALUES (112, 103, '0,100,101,103', '计算机184', 1, '连', '15888888888', 'cvzhanshi@163.com', '0', '0', 'admin', '2022-04-14 11:13:15', '', NULL);
INSERT INTO `sys_dept` VALUES (113, 103, '0,100,101,103', '计算机183', 2, '连', '15988888888', 'cvzshi@163.com', '0', '0', 'admin', '2022-04-14 11:16:06', '', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '一天以内', '1', 'sys_leave_time_type', NULL, 'default', 'N', '0', 'admin', '2022-04-18 15:08:07', 'admin', '2022-04-18 15:09:00', '一天以内');
INSERT INTO `sys_dict_data` VALUES (30, 2, '一天到三天', '2', 'sys_leave_time_type', NULL, 'default', 'N', '0', 'admin', '2022-04-18 15:08:23', 'admin', '2022-04-18 15:09:05', '一天到三天');
INSERT INTO `sys_dict_data` VALUES (31, 3, '三天以上', '3', 'sys_leave_time_type', NULL, 'default', 'N', '0', 'admin', '2022-04-18 15:08:37', 'admin', '2022-04-18 15:09:09', '三天以上');
INSERT INTO `sys_dict_data` VALUES (32, 1, '待审批', '1', 'sys_approval_type', NULL, 'default', 'N', '0', 'admin', '2022-04-18 15:10:47', '', NULL, '待审批');
INSERT INTO `sys_dict_data` VALUES (33, 2, '审批通过', '2', 'sys_approval_type', NULL, 'default', 'N', '0', 'admin', '2022-04-18 15:11:02', 'admin', '2022-04-18 15:11:34', '审批成功');
INSERT INTO `sys_dict_data` VALUES (34, 3, '审批驳回', '3', 'sys_approval_type', NULL, 'default', 'N', '0', 'admin', '2022-04-18 15:11:51', '', NULL, '审批驳回');
INSERT INTO `sys_dict_data` VALUES (35, 1, '事假', '1', 'sys_leave_type', NULL, 'default', 'N', '0', 'admin', '2022-04-19 17:12:43', '', NULL, '事假');
INSERT INTO `sys_dict_data` VALUES (36, 2, '病假', '2', 'sys_leave_type', NULL, 'default', 'N', '0', 'admin', '2022-04-19 17:12:53', '', NULL, '病假');
INSERT INTO `sys_dict_data` VALUES (37, 3, '其他', '3', 'sys_leave_type', NULL, 'default', 'N', '0', 'admin', '2022-04-19 17:13:02', '', NULL, '其他');
INSERT INTO `sys_dict_data` VALUES (38, 1, '未销假', '1', 'sys_leave_status', NULL, 'default', 'N', '0', 'admin', '2022-04-19 17:15:33', 'admin', '2022-04-19 17:15:58', '未销假');
INSERT INTO `sys_dict_data` VALUES (39, 2, '已销假', '2', 'sys_leave_status', NULL, 'default', 'N', '0', 'admin', '2022-04-19 17:15:54', '', NULL, '已销假');
INSERT INTO `sys_dict_data` VALUES (40, 1, '是', '1', 'sys_is_leave_school', NULL, 'default', 'N', '0', 'admin', '2022-04-19 19:51:54', '', NULL, '是');
INSERT INTO `sys_dict_data` VALUES (41, 2, '否', '2', 'sys_is_leave_school', NULL, 'default', 'N', '0', 'admin', '2022-04-19 19:52:10', '', NULL, '否');
INSERT INTO `sys_dict_data` VALUES (42, 1, '删除', '1', 'sys_deleted', NULL, 'default', 'N', '0', 'admin', '2022-04-19 19:53:32', '', NULL, '进行逻辑删除');
INSERT INTO `sys_dict_data` VALUES (43, 2, '未删除', '2', 'sys_deleted', NULL, 'default', 'N', '0', 'admin', '2022-04-19 19:53:56', '', NULL, '未删除');

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-03-25 16:05:40', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '请假时长类型', 'sys_leave_time_type', '0', 'admin', '2022-04-15 14:45:10', 'admin', '2022-04-19 17:11:15', '请假时长类型列表');
INSERT INTO `sys_dict_type` VALUES (12, '审批类型', 'sys_approval_type', '0', 'admin', '2022-04-15 14:48:05', '', NULL, '审批类型列表');
INSERT INTO `sys_dict_type` VALUES (13, '请假类型', 'sys_leave_type', '0', 'admin', '2022-04-19 17:11:47', '', NULL, '请假类型列表');
INSERT INTO `sys_dict_type` VALUES (14, '销假状态', 'sys_leave_status', '0', 'admin', '2022-04-19 17:15:15', '', NULL, '销假状态');
INSERT INTO `sys_dict_type` VALUES (15, '是否离校', 'sys_is_leave_school', '0', 'admin', '2022-04-19 19:49:23', '', NULL, '是否离校1-是2-否');
INSERT INTO `sys_dict_type` VALUES (16, '逻辑删除', 'sys_deleted', '0', 'admin', '2022-04-19 19:52:57', '', NULL, '是否进行逻辑删除');

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
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-03-25 16:05:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-03-25 16:05:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-03-25 16:05:40', '', NULL, '');

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
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_leave
-- ----------------------------
DROP TABLE IF EXISTS `sys_leave`;
CREATE TABLE `sys_leave`  (
  `leave_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '请假ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '请假人id',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假人',
  `leave_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假类型',
  `leave_time_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假时长类型',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `is_leave_school` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否离校',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '离校目的地地址',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假原因',
  `ecp_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急联系人',
  `approval_id` bigint(20) NULL DEFAULT NULL COMMENT '审批人id',
  `approval_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人',
  `approval_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '审批类型',
  `approval_advice` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批意见',
  `leave_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '销假状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否删除',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`leave_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '请假信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_leave
-- ----------------------------
INSERT INTO `sys_leave` VALUES (2, 3, '连灵辉', '1', '1', '2022-04-20 00:00:00', '2022-04-22 00:00:00', '1', '54', '4533', '15970387607', 2, '郑老师', '2', '注意安全', '2', 'admin', '2022-04-20 13:57:40', 'cVzhanshi', '2022-04-21 00:20:46', '0', '4534');
INSERT INTO `sys_leave` VALUES (3, 3, '连灵辉', '1', '2', '2022-04-20 00:00:00', '2022-04-22 00:00:00', '1', '上饶', '回家', '15970387607', 2, '郑老师', '2', 'a', '2', 'cVzhanshi', '2022-04-20 14:07:44', 'cVzhanshi', '2022-04-21 10:49:25', '0', '123');
INSERT INTO `sys_leave` VALUES (4, 3, '连灵辉', '1', '1', '2022-04-20 00:00:00', '2022-04-20 00:00:00', '1', '564', '64567', '15970387607', 2, '郑老师', '2', NULL, '1', 'cVzhanshi', '2022-04-20 14:13:33', 'zheng', '2022-04-21 23:45:11', '0', '453');
INSERT INTO `sys_leave` VALUES (5, 3, '连灵辉', '1', '1', '2022-04-20 00:00:00', '2022-04-20 00:00:00', '1', 'SFDG', 'dsgfda', '15970387607', 2, '郑老师', '1', NULL, '1', 'cVzhanshi', '2022-04-20 14:17:30', NULL, NULL, '0', '53453');
INSERT INTO `sys_leave` VALUES (6, 3, '连灵辉', '1', '1', '2022-04-20 00:00:00', '2022-04-20 00:00:00', '1', '324', '5435', '15970387607', 2, '郑老师', '3', NULL, '1', 'cVzhanshi', '2022-04-20 14:33:40', NULL, NULL, '0', NULL);
INSERT INTO `sys_leave` VALUES (7, 3, '连灵辉', '1', '1', '2022-04-20 00:00:00', '2022-04-20 00:00:00', '1', '324', '543534', '15970387607', 1, 'cVzhanshi', '1', NULL, '1', 'cVzhanshi', '2022-04-20 14:34:33', 'cVzhanshi', '2022-04-21 20:37:40', '0', NULL);
INSERT INTO `sys_leave` VALUES (8, 3, '连灵辉', '1', '1', '2022-04-20 00:00:00', '2022-04-20 00:00:00', '1', '432', 'dhjasd', '15970387607', 2, '郑老师', '1', NULL, '1', 'cVzhanshi', '2022-04-20 15:00:06', 'cVzhanshi', '2022-04-21 10:54:57', '0', NULL);
INSERT INTO `sys_leave` VALUES (9, 4, '龚文倩', '1', '1', '2022-04-20 00:00:00', '2022-04-20 00:00:00', '1', '5435', '546', '15970387607', 2, '郑老师', '1', NULL, '1', 'bulijojo', '2022-04-20 23:52:09', NULL, NULL, '0', '45');
INSERT INTO `sys_leave` VALUES (10, 3, '连灵辉', '1', '1', '2022-04-21 00:00:00', '2022-04-21 00:00:00', '1', '65476', '4567547', '15970387607', 2, '郑老师', '2', '注意安全', '2', 'cVzhanshi', '2022-04-21 09:45:57', 'cVzhanshi', '2022-04-21 20:38:41', '0', '2254说');
INSERT INTO `sys_leave` VALUES (12, 3, '连灵辉', '3', '3', '2022-04-21 00:00:00', '2022-04-24 00:00:00', '1', '4324', '5435', '15970387607', 1, 'cVzhanshi', '1', NULL, '1', 'cVzhanshi', '2022-04-21 09:49:41', NULL, NULL, '0', '453');
INSERT INTO `sys_leave` VALUES (13, 4, '龚文倩', '1', '1', '2022-04-21 00:00:00', '2022-04-21 00:00:00', '2', '4234', '5435', '15970387607', 2, '郑老师', '1', NULL, '1', 'bulijojo', '2022-04-21 15:18:33', 'bulijojo', '2022-04-21 15:20:43', '0', '3423');
INSERT INTO `sys_leave` VALUES (14, 2, '郑老师', '1', '1', '2022-04-21 00:00:00', '2022-04-21 00:00:00', '1', 'rgkj', 'gfdg', '15970387607', 7, '温老师', '2', '同意', '2', 'zheng', '2022-04-21 23:35:13', 'zheng', '2022-04-21 23:50:31', '0', '423');
INSERT INTO `sys_leave` VALUES (15, 3, '连灵辉', '1', '1', '2022-04-22 00:00:00', '2022-04-22 00:00:00', '1', '3423', '42342', '15970387607', 5, '魏志成', '2', '注意安全', '2', 'cVzhanshi', '2022-04-22 17:26:26', 'cVzhanshi', '2022-04-22 17:27:39', '0', '423');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 247 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-13 23:08:13');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-13 23:13:19');
INSERT INTO `sys_logininfor` VALUES (3, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-13 23:13:38');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-14 09:36:00');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-14 11:26:10');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-14 11:26:22');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-14 17:03:51');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-14 18:00:49');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-14 19:08:13');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-14 19:09:01');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-15 11:49:11');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-15 14:42:38');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-15 14:42:45');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-15 15:49:07');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-16 16:00:02');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 10:57:45');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-18 14:59:36');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 14:59:40');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 11:17:28');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:17:32');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:22:18');
INSERT INTO `sys_logininfor` VALUES (22, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 11:22:32');
INSERT INTO `sys_logininfor` VALUES (23, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:22:40');
INSERT INTO `sys_logininfor` VALUES (24, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:24:14');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:24:27');
INSERT INTO `sys_logininfor` VALUES (26, 'bulijojo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:47:04');
INSERT INTO `sys_logininfor` VALUES (27, 'bulijojo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 13:47:21');
INSERT INTO `sys_logininfor` VALUES (28, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 13:47:31');
INSERT INTO `sys_logininfor` VALUES (29, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:47:37');
INSERT INTO `sys_logininfor` VALUES (30, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 13:48:27');
INSERT INTO `sys_logininfor` VALUES (31, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:48:31');
INSERT INTO `sys_logininfor` VALUES (32, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 13:48:50');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:48:57');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 16:46:58');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 19:07:45');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 19:41:59');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 21:17:08');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 21:49:34');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 22:36:04');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:13:52');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-20 00:13:57');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:14:02');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:15:41');
INSERT INTO `sys_logininfor` VALUES (44, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：test 不存在', '2022-04-20 00:15:55');
INSERT INTO `sys_logininfor` VALUES (45, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-20 00:16:04');
INSERT INTO `sys_logininfor` VALUES (46, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:16:11');
INSERT INTO `sys_logininfor` VALUES (47, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:16:28');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:16:36');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:16:58');
INSERT INTO `sys_logininfor` VALUES (50, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:17:08');
INSERT INTO `sys_logininfor` VALUES (51, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:24:12');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:24:20');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 12:24:25');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 12:28:19');
INSERT INTO `sys_logininfor` VALUES (55, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 12:28:25');
INSERT INTO `sys_logininfor` VALUES (56, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 12:31:16');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 12:31:22');
INSERT INTO `sys_logininfor` VALUES (58, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 13:13:13');
INSERT INTO `sys_logininfor` VALUES (59, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 16:42:24');
INSERT INTO `sys_logininfor` VALUES (60, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 17:09:30');
INSERT INTO `sys_logininfor` VALUES (61, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-20 17:09:43');
INSERT INTO `sys_logininfor` VALUES (62, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-20 17:09:57');
INSERT INTO `sys_logininfor` VALUES (63, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 17:10:00');
INSERT INTO `sys_logininfor` VALUES (64, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 17:10:19');
INSERT INTO `sys_logininfor` VALUES (65, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 17:10:31');
INSERT INTO `sys_logininfor` VALUES (66, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 17:12:16');
INSERT INTO `sys_logininfor` VALUES (67, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 17:12:24');
INSERT INTO `sys_logininfor` VALUES (68, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 17:15:49');
INSERT INTO `sys_logininfor` VALUES (69, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 17:15:54');
INSERT INTO `sys_logininfor` VALUES (70, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 20:33:33');
INSERT INTO `sys_logininfor` VALUES (71, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 20:45:33');
INSERT INTO `sys_logininfor` VALUES (72, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 20:45:39');
INSERT INTO `sys_logininfor` VALUES (73, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 23:22:07');
INSERT INTO `sys_logininfor` VALUES (74, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 23:37:44');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 23:37:50');
INSERT INTO `sys_logininfor` VALUES (76, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 23:51:26');
INSERT INTO `sys_logininfor` VALUES (77, 'bulijojo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 23:51:36');
INSERT INTO `sys_logininfor` VALUES (78, 'bulijojo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 23:52:18');
INSERT INTO `sys_logininfor` VALUES (79, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 23:52:28');
INSERT INTO `sys_logininfor` VALUES (80, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 23:54:02');
INSERT INTO `sys_logininfor` VALUES (81, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 23:54:15');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 23:55:51');
INSERT INTO `sys_logininfor` VALUES (83, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 23:55:59');
INSERT INTO `sys_logininfor` VALUES (84, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 00:01:58');
INSERT INTO `sys_logininfor` VALUES (85, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 00:02:05');
INSERT INTO `sys_logininfor` VALUES (86, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 00:02:22');
INSERT INTO `sys_logininfor` VALUES (87, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 00:02:33');
INSERT INTO `sys_logininfor` VALUES (88, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 00:06:28');
INSERT INTO `sys_logininfor` VALUES (89, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 00:06:39');
INSERT INTO `sys_logininfor` VALUES (90, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 00:23:54');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 00:24:02');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 09:06:56');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:07:01');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 09:23:38');
INSERT INTO `sys_logininfor` VALUES (95, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:23:50');
INSERT INTO `sys_logininfor` VALUES (96, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 09:32:46');
INSERT INTO `sys_logininfor` VALUES (97, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:32:52');
INSERT INTO `sys_logininfor` VALUES (98, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 09:45:00');
INSERT INTO `sys_logininfor` VALUES (99, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:45:08');
INSERT INTO `sys_logininfor` VALUES (100, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 09:46:38');
INSERT INTO `sys_logininfor` VALUES (101, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:46:47');
INSERT INTO `sys_logininfor` VALUES (102, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 09:48:28');
INSERT INTO `sys_logininfor` VALUES (103, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:48:38');
INSERT INTO `sys_logininfor` VALUES (104, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 09:54:22');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:54:31');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 09:57:23');
INSERT INTO `sys_logininfor` VALUES (107, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:57:32');
INSERT INTO `sys_logininfor` VALUES (108, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 10:20:16');
INSERT INTO `sys_logininfor` VALUES (109, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 10:20:32');
INSERT INTO `sys_logininfor` VALUES (110, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 10:22:39');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 10:22:45');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 10:23:39');
INSERT INTO `sys_logininfor` VALUES (113, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 10:23:48');
INSERT INTO `sys_logininfor` VALUES (114, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 10:34:35');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 10:34:41');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 10:35:27');
INSERT INTO `sys_logininfor` VALUES (117, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 10:35:34');
INSERT INTO `sys_logininfor` VALUES (118, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 11:15:03');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 11:15:09');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 11:28:54');
INSERT INTO `sys_logininfor` VALUES (121, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 11:29:03');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:17:24');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:28:06');
INSERT INTO `sys_logininfor` VALUES (124, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:28:16');
INSERT INTO `sys_logininfor` VALUES (125, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:31:27');
INSERT INTO `sys_logininfor` VALUES (126, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:31:31');
INSERT INTO `sys_logininfor` VALUES (127, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:34:39');
INSERT INTO `sys_logininfor` VALUES (128, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:34:45');
INSERT INTO `sys_logininfor` VALUES (129, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:36:17');
INSERT INTO `sys_logininfor` VALUES (130, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:36:24');
INSERT INTO `sys_logininfor` VALUES (131, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:37:07');
INSERT INTO `sys_logininfor` VALUES (132, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:37:11');
INSERT INTO `sys_logininfor` VALUES (133, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:38:28');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:38:35');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:39:46');
INSERT INTO `sys_logininfor` VALUES (136, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 13:39:51');
INSERT INTO `sys_logininfor` VALUES (137, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 13:40:19');
INSERT INTO `sys_logininfor` VALUES (138, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-21 14:50:28');
INSERT INTO `sys_logininfor` VALUES (139, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 14:50:31');
INSERT INTO `sys_logininfor` VALUES (140, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 14:52:50');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 14:52:56');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 14:53:15');
INSERT INTO `sys_logininfor` VALUES (143, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 14:53:21');
INSERT INTO `sys_logininfor` VALUES (144, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 14:53:30');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 14:53:35');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 14:53:55');
INSERT INTO `sys_logininfor` VALUES (147, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-21 14:54:03');
INSERT INTO `sys_logininfor` VALUES (148, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 14:54:11');
INSERT INTO `sys_logininfor` VALUES (149, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 14:54:13');
INSERT INTO `sys_logininfor` VALUES (150, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 15:12:07');
INSERT INTO `sys_logininfor` VALUES (151, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 15:12:21');
INSERT INTO `sys_logininfor` VALUES (152, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 15:18:05');
INSERT INTO `sys_logininfor` VALUES (153, 'bulijojo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 15:18:12');
INSERT INTO `sys_logininfor` VALUES (154, 'bulijojo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 15:20:47');
INSERT INTO `sys_logininfor` VALUES (155, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 15:21:05');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-21 20:25:07');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:25:13');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:31:42');
INSERT INTO `sys_logininfor` VALUES (159, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:31:48');
INSERT INTO `sys_logininfor` VALUES (160, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:32:37');
INSERT INTO `sys_logininfor` VALUES (161, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:32:44');
INSERT INTO `sys_logininfor` VALUES (162, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:33:07');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:33:11');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:33:33');
INSERT INTO `sys_logininfor` VALUES (165, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:33:38');
INSERT INTO `sys_logininfor` VALUES (166, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:38:59');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 20:39:03');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:39:06');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:56:31');
INSERT INTO `sys_logininfor` VALUES (170, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:56:51');
INSERT INTO `sys_logininfor` VALUES (171, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:57:05');
INSERT INTO `sys_logininfor` VALUES (172, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:57:24');
INSERT INTO `sys_logininfor` VALUES (173, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:57:57');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 20:58:03');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:58:09');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 20:58:52');
INSERT INTO `sys_logininfor` VALUES (177, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:58:58');
INSERT INTO `sys_logininfor` VALUES (178, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 21:21:06');
INSERT INTO `sys_logininfor` VALUES (179, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 21:21:14');
INSERT INTO `sys_logininfor` VALUES (180, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 21:24:33');
INSERT INTO `sys_logininfor` VALUES (181, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 21:24:38');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 22:41:47');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:00:18');
INSERT INTO `sys_logininfor` VALUES (184, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:00:23');
INSERT INTO `sys_logininfor` VALUES (185, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:06:42');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 23:06:49');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:06:55');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:21:55');
INSERT INTO `sys_logininfor` VALUES (189, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:22:03');
INSERT INTO `sys_logininfor` VALUES (190, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:23:03');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:23:09');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:23:24');
INSERT INTO `sys_logininfor` VALUES (193, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 23:23:36');
INSERT INTO `sys_logininfor` VALUES (194, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:23:41');
INSERT INTO `sys_logininfor` VALUES (195, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:23:58');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 23:24:06');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 23:24:09');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-21 23:24:18');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:24:22');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:24:37');
INSERT INTO `sys_logininfor` VALUES (201, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:24:47');
INSERT INTO `sys_logininfor` VALUES (202, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:48:01');
INSERT INTO `sys_logininfor` VALUES (203, 'wen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:48:07');
INSERT INTO `sys_logininfor` VALUES (204, 'wen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:49:45');
INSERT INTO `sys_logininfor` VALUES (205, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:49:57');
INSERT INTO `sys_logininfor` VALUES (206, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:50:44');
INSERT INTO `sys_logininfor` VALUES (207, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:50:54');
INSERT INTO `sys_logininfor` VALUES (208, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:51:11');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:51:21');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:52:44');
INSERT INTO `sys_logininfor` VALUES (211, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:52:52');
INSERT INTO `sys_logininfor` VALUES (212, 'zheng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-21 23:53:16');
INSERT INTO `sys_logininfor` VALUES (213, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 23:53:26');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 12:48:33');
INSERT INTO `sys_logininfor` VALUES (215, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 17:25:37');
INSERT INTO `sys_logininfor` VALUES (216, 'cVzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 17:26:43');
INSERT INTO `sys_logininfor` VALUES (217, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 17:26:49');
INSERT INTO `sys_logininfor` VALUES (218, 'wei', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 17:27:15');
INSERT INTO `sys_logininfor` VALUES (219, 'cvzhanshi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 17:27:20');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 17:04:14');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 20:00:20');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 22:55:10');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-24 23:25:38');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 23:25:47');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 14:04:27');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-05-01 22:28:49');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-01 22:28:54');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-01 22:37:34');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-01 22:38:16');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-01 22:38:34');
INSERT INTO `sys_logininfor` VALUES (231, 'test22', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '注册成功', '2022-05-01 22:39:02');
INSERT INTO `sys_logininfor` VALUES (232, 'test22', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-01 22:39:14');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-01 22:39:25');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-02 11:56:09');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-02 15:43:46');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-02 17:13:58');
INSERT INTO `sys_logininfor` VALUES (237, 'yangb', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-05-02 17:14:03');
INSERT INTO `sys_logininfor` VALUES (238, 'yangb', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-02 17:14:09');
INSERT INTO `sys_logininfor` VALUES (239, 'yangb', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-02 17:14:42');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-02 17:14:49');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-02 19:16:39');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-02 20:13:16');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-03 13:26:45');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-05-03 15:48:45');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-03 15:48:49');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-03 19:47:13');

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
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1085 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-03-25 16:05:39', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-20 17:02:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-20 17:02:03', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-03-25 16:05:39', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 5, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 09:55:11', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 6, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 09:55:19', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '学院管理', 1, 7, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 09:55:29', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '职称管理', 1, 8, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 09:55:39', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 11, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-23 17:06:40', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 10, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 09:56:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 9, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-23 17:06:46', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 12, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 09:56:16', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-03-25 16:05:39', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-03-25 16:05:39', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-03-25 16:05:39', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-03-25 16:05:39', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-03-25 16:05:39', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-03-25 16:05:39', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-03-25 16:05:39', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-03-25 16:05:39', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-03-25 16:05:39', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-03-25 16:05:39', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '学院查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:42:28', '');
INSERT INTO `sys_menu` VALUES (1018, '学院新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:42:33', '');
INSERT INTO `sys_menu` VALUES (1019, '学院修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:42:37', '');
INSERT INTO `sys_menu` VALUES (1020, '学院删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:42:43', '');
INSERT INTO `sys_menu` VALUES (1021, '职称查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:43:09', '');
INSERT INTO `sys_menu` VALUES (1022, '职称新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:43:15', '');
INSERT INTO `sys_menu` VALUES (1023, '职称修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:43:19', '');
INSERT INTO `sys_menu` VALUES (1024, '职称删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:43:24', '');
INSERT INTO `sys_menu` VALUES (1025, '职称导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-21 22:43:31', '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-03-25 16:05:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '请假管理', 1, 2, 'leave', 'system/leave/index', NULL, 1, 0, 'C', '0', '0', 'system:leave:list', 'list', 'admin', '2022-04-19 21:41:45', 'admin', '2022-04-20 17:03:31', '请假信息菜单');
INSERT INTO `sys_menu` VALUES (1068, '请假信息查询', 1067, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:leave:query', '#', 'admin', '2022-04-19 21:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '请假信息新增', 1067, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:leave:add', '#', 'admin', '2022-04-19 21:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '请假信息修改', 1067, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:leave:edit', '#', 'admin', '2022-04-19 21:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1071, '请假信息删除', 1067, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:leave:remove', '#', 'admin', '2022-04-19 21:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1072, '请假信息导出', 1067, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:leave:export', '#', 'admin', '2022-04-19 21:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1074, '审批管理', 1, 3, 'approval', 'system/approval/index', NULL, 1, 0, 'C', '0', '0', 'system:approval:list', 'checkbox', 'admin', '2022-04-20 17:06:21', 'admin', '2022-04-21 09:54:46', '');
INSERT INTO `sys_menu` VALUES (1075, '审批信息查询', 1074, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:approval:query', '#', 'admin', '2022-04-20 17:14:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '审批信息修改', 1074, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:approval:edit', '#', 'admin', '2022-04-20 17:17:01', 'admin', '2022-04-20 17:17:19', '');
INSERT INTO `sys_menu` VALUES (1077, '审批信息删除', 1074, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:approval:remove', '#', 'admin', '2022-04-20 17:18:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1078, '审批信息导出', 1074, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:approval:export', '#', 'admin', '2022-04-20 17:18:40', 'admin', '2022-04-20 17:18:51', '');
INSERT INTO `sys_menu` VALUES (1079, '销假管理', 1, 4, 'cancel', 'system/cancel/index', NULL, 1, 0, 'C', '0', '0', 'system:cancel:list', 'log', 'admin', '2022-04-20 23:32:38', 'admin', '2022-04-21 09:54:54', '');
INSERT INTO `sys_menu` VALUES (1080, '销假信息查询', 1079, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:cancel:query', '#', 'admin', '2022-04-20 23:33:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1081, '销假信息修改', 1079, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:cancel:edit', '#', 'admin', '2022-04-20 23:34:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1082, '销假信息删除', 1079, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:cancel:remove', '#', 'admin', '2022-04-20 23:34:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1083, '销假信息导出', 1079, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:cancel:export', '#', 'admin', '2022-04-20 23:35:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1084, '用户停用', 100, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:user:stop', '#', 'admin', '2022-04-21 10:23:10', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (3, '论文初稿5月9号交', '1', 0x3C703E7364667364663C2F703E, '0', 'admin', '2022-04-23 17:09:19', '', NULL, NULL);

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
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 297 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15970387607\",\"admin\":false,\"password\":\"$2a$10$uUJumL27smbKsuSnZZHGEuUEhBUUkNcuA1A5oMi9Jq1u6v6584qES\",\"postIds\":[2],\"email\":\"cvzhanshi@163.com\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":107,\"params\":{},\"userName\":\"test\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-13 23:10:14');
INSERT INTO `sys_oper_log` VALUES (2, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15970387607\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"cvzhanshi@163.com\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"若依\",\"deptId\":107,\"orderNum\":\"5\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1649862614000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-13 23:11:19');
INSERT INTO `sys_oper_log` VALUES (3, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"江西理工大学\",\"leader\":\"老王\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"laowang@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:36:48');
INSERT INTO `sys_oper_log` VALUES (4, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"三江校区\",\"leader\":\"老李\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"laoli@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:37:20');
INSERT INTO `sys_oper_log` VALUES (5, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"红旗校区\",\"leader\":\"老沈\",\"deptId\":102,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"laoshen@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:37:38');
INSERT INTO `sys_oper_log` VALUES (6, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"外国语学院\",\"leader\":\"老龚\",\"deptId\":108,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"email\":\"laogong@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:38:08');
INSERT INTO `sys_oper_log` VALUES (7, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"经管学院\",\"leader\":\"老白\",\"deptId\":109,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"email\":\"laobai@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:38:38');
INSERT INTO `sys_oper_log` VALUES (8, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"cvzhanshi@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:39:11');
INSERT INTO `sys_oper_log` VALUES (9, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"土测学院\",\"leader\":\"老土\",\"deptId\":104,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"laotu@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:39:32');
INSERT INTO `sys_oper_log` VALUES (10, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"理学院\",\"leader\":\"老理\",\"deptId\":105,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"laoli2@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:39:53');
INSERT INTO `sys_oper_log` VALUES (11, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"机电学院\",\"leader\":\"老机\",\"deptId\":106,\"orderNum\":\"4\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"laoji@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:41:13');
INSERT INTO `sys_oper_log` VALUES (12, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"电气学院\",\"leader\":\"老店\",\"deptId\":107,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648195539000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"laodian@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:41:43');
INSERT INTO `sys_oper_log` VALUES (13, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"法学院\",\"leader\":\"老孟\",\"orderNum\":\"2\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15888888888\",\"ancestors\":\"0,100,102\",\"email\":\"laomeng@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:42:25');
INSERT INTO `sys_oper_log` VALUES (14, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-04-14 09:48:18');
INSERT INTO `sys_oper_log` VALUES (15, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:48:28');
INSERT INTO `sys_oper_log` VALUES (16, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:48:33');
INSERT INTO `sys_oper_log` VALUES (17, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tree\",\"orderNum\":4,\"menuName\":\"学院管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 09:59:02');
INSERT INTO `sys_oper_log` VALUES (18, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"应急管理学院\",\"leader\":\"蓝帆\",\"orderNum\":\"4\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15888888888\",\"ancestors\":\"0,100,102\",\"email\":\"laofan@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:24:03');
INSERT INTO `sys_oper_log` VALUES (19, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"法学院\",\"leader\":\"老孟\",\"deptId\":110,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649900545000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"email\":\"laomeng@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:24:52');
INSERT INTO `sys_oper_log` VALUES (20, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:50:15');
INSERT INTO `sys_oper_log` VALUES (21, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"教职工\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:51:05');
INSERT INTO `sys_oper_log` VALUES (22, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:52:02');
INSERT INTO `sys_oper_log` VALUES (23, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"remark\":\"辅导员\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"instructor\",\"roleName\":\"辅导员\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:52:35');
INSERT INTO `sys_oper_log` VALUES (24, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"remark\":\"学院级别领导\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"y_level_leaders\",\"roleName\":\"院级领导\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:53:42');
INSERT INTO `sys_oper_log` VALUES (25, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"remark\":\"学校级别的领导\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"school_level_leaders\",\"roleName\":\"校级领导\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 10:54:18');
INSERT INTO `sys_oper_log` VALUES (26, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"计算机184\",\"leader\":\"连\",\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15888888888\",\"ancestors\":\"0,100,101,103\",\"email\":\"cvzhanshi@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 11:13:15');
INSERT INTO `sys_oper_log` VALUES (27, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"计算机183\",\"leader\":\"连\",\"orderNum\":\"2\",\"params\":{},\"parentId\":103,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15988888888\",\"ancestors\":\"0,100,101,103\",\"email\":\"cvzshi@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 11:16:06');
INSERT INTO `sys_oper_log` VALUES (28, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1649862818000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"理学院\",\"leader\":\"老理\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[3,4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 18:02:41');
INSERT INTO `sys_oper_log` VALUES (29, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15970387607\",\"admin\":false,\"remark\":\"学生\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"cvzhanshi@163.com\",\"nickName\":\"学生\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1649862614000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2022-04-14 18:04:28');
INSERT INTO `sys_oper_log` VALUES (30, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15970387607\",\"admin\":false,\"remark\":\"学生\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"cvzha@163.com\",\"nickName\":\"学生\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1649862614000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 18:04:35');
INSERT INTO `sys_oper_log` VALUES (31, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"remark\":\"学校级别的领导\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":1649904857000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"x_level_leaders\",\"roleName\":\"校级领导\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 18:07:09');
INSERT INTO `sys_oper_log` VALUES (32, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"status\":\"0\"},{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1649862818000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"理学院\",\"leader\":\"老理\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[3,4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-14 19:08:48');
INSERT INTO `sys_oper_log` VALUES (33, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15970387607\",\"admin\":false,\"remark\":\"学生\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"cvzha@163.com\",\"nickName\":\"学生\",\"sex\":\"0\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1649862614000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-15 11:49:28');
INSERT INTO `sys_oper_log` VALUES (34, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"请假类型\",\"remark\":\"请假类型\",\"params\":{},\"dictType\":\"sys_leave_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-15 14:45:10');
INSERT INTO `sys_oper_log` VALUES (35, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-15 14:46:21');
INSERT INTO `sys_oper_log` VALUES (36, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"审批类型\",\"remark\":\"审批类型\",\"params\":{},\"dictType\":\"sys_approval_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-15 14:48:05');
INSERT INTO `sys_oper_log` VALUES (37, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"超级管理员\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1648195539000,\"updateBy\":\"admin\",\"postName\":\"超级管理员\",\"postCode\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 10:59:52');
INSERT INTO `sys_oper_log` VALUES (38, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"教授\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1648195539000,\"updateBy\":\"admin\",\"postName\":\"教授\",\"postCode\":\"professor\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 11:01:52');
INSERT INTO `sys_oper_log` VALUES (39, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"3\",\"flag\":false,\"remark\":\"副教授\",\"postId\":3,\"params\":{},\"createBy\":\"admin\",\"createTime\":1648195539000,\"updateBy\":\"admin\",\"postName\":\"副教授\",\"postCode\":\"associate_professor\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 11:02:32');
INSERT INTO `sys_oper_log` VALUES (40, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"4\",\"flag\":false,\"remark\":\"讲师\",\"postId\":4,\"params\":{},\"createBy\":\"admin\",\"createTime\":1648195539000,\"updateBy\":\"admin\",\"postName\":\"讲师\",\"postCode\":\"lecturer\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 11:02:59');
INSERT INTO `sys_oper_log` VALUES (41, '岗位管理', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"5\",\"flag\":false,\"remark\":\"助教\",\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"postName\":\"助教\",\"postCode\":\"assistant\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 11:03:25');
INSERT INTO `sys_oper_log` VALUES (42, '岗位管理', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"6\",\"flag\":false,\"remark\":\"学生\",\"postId\":6,\"params\":{},\"createBy\":\"admin\",\"postName\":\"学生\",\"postCode\":\"student\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 11:03:39');
INSERT INTO `sys_oper_log` VALUES (43, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"post\",\"orderNum\":5,\"menuName\":\"职称管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 11:04:22');
INSERT INTO `sys_oper_log` VALUES (44, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"一天以内\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:08:07');
INSERT INTO `sys_oper_log` VALUES (45, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"一天到三天\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:08:23');
INSERT INTO `sys_oper_log` VALUES (46, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"三天以上\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:08:37');
INSERT INTO `sys_oper_log` VALUES (47, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"一天以内\",\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"一天以内\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1650265687000,\"dictCode\":29,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:09:00');
INSERT INTO `sys_oper_log` VALUES (48, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"一天到三天\",\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"一天到三天\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1650265703000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:09:05');
INSERT INTO `sys_oper_log` VALUES (49, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":3,\"remark\":\"三天以上\",\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"三天以上\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1650265717000,\"dictCode\":31,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:09:09');
INSERT INTO `sys_oper_log` VALUES (50, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"待审批\",\"params\":{},\"dictType\":\"sys_approval_type\",\"dictLabel\":\"待审批\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:10:47');
INSERT INTO `sys_oper_log` VALUES (51, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"审批成功\",\"params\":{},\"dictType\":\"sys_approval_type\",\"dictLabel\":\"审批成功\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:11:02');
INSERT INTO `sys_oper_log` VALUES (52, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"审批成功\",\"params\":{},\"dictType\":\"sys_approval_type\",\"dictLabel\":\"审批通过\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1650265862000,\"dictCode\":33,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:11:34');
INSERT INTO `sys_oper_log` VALUES (53, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"remark\":\"审批驳回\",\"params\":{},\"dictType\":\"sys_approval_type\",\"dictLabel\":\"审批驳回\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-18 15:11:51');
INSERT INTO `sys_oper_log` VALUES (54, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15970387607\",\"admin\":false,\"remark\":\"学生\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"\",\"email\":\"cvzha@163.com\",\"nickName\":\"学生\",\"sex\":\"0\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1649862614000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 11:18:15');
INSERT INTO `sys_oper_log` VALUES (55, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15888889898\",\"admin\":false,\"password\":\"$2a$10$L8RENbqAoEtAAbKxf1hIgu/hB.0Wi3/bk9Tb7alU/yrPajDNGI1uC\",\"postIds\":[6],\"email\":\"cvzhani@163.com\",\"nickName\":\"龚文倩\",\"sex\":\"1\",\"deptId\":112,\"params\":{},\"userName\":\"bulijojo\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 11:19:26');
INSERT INTO `sys_oper_log` VALUES (56, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 11:22:03');
INSERT INTO `sys_oper_log` VALUES (57, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/3', '127.0.0.1', '内网IP', '{roleIds=3}', NULL, 1, '教职工已分配,不能删除', '2022-04-19 11:25:16');
INSERT INTO `sys_oper_log` VALUES (58, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"status\":\"0\"},{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1649862818000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 11:25:32');
INSERT INTO `sys_oper_log` VALUES (59, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/3', '127.0.0.1', '内网IP', '{roleIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 11:25:40');
INSERT INTO `sys_oper_log` VALUES (60, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 13:48:13');
INSERT INTO `sys_oper_log` VALUES (61, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15970387607\",\"admin\":false,\"loginDate\":1650338560000,\"remark\":\"学生\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"127.0.0.1\",\"email\":\"cvzha@163.com\",\"nickName\":\"连灵辉\",\"sex\":\"0\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1649862614000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 16:47:21');
INSERT INTO `sys_oper_log` VALUES (62, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1650005110000,\"updateBy\":\"admin\",\"dictName\":\"请假时长类型\",\"remark\":\"请假时长类型列表\",\"dictId\":11,\"params\":{},\"dictType\":\"sys_leave_time_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:11:15');
INSERT INTO `sys_oper_log` VALUES (63, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"请假类型\",\"remark\":\"请假类型列表\",\"params\":{},\"dictType\":\"sys_leave_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:11:47');
INSERT INTO `sys_oper_log` VALUES (64, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"事假\",\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"事假\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:12:43');
INSERT INTO `sys_oper_log` VALUES (65, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"病假\",\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"病假\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:12:53');
INSERT INTO `sys_oper_log` VALUES (66, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"remark\":\"其他\",\"params\":{},\"dictType\":\"sys_leave_type\",\"dictLabel\":\"其他\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:13:02');
INSERT INTO `sys_oper_log` VALUES (67, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"销假状态\",\"remark\":\"销假状态\",\"params\":{},\"dictType\":\"sys_leave_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:15:15');
INSERT INTO `sys_oper_log` VALUES (68, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":0,\"remark\":\"未销假\",\"params\":{},\"dictType\":\"sys_leave_status\",\"dictLabel\":\"未销假\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:15:33');
INSERT INTO `sys_oper_log` VALUES (69, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"已销假\",\"params\":{},\"dictType\":\"sys_leave_status\",\"dictLabel\":\"已销假\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:15:54');
INSERT INTO `sys_oper_log` VALUES (70, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"未销假\",\"params\":{},\"dictType\":\"sys_leave_status\",\"dictLabel\":\"未销假\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1650359733000,\"dictCode\":38,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 17:15:59');
INSERT INTO `sys_oper_log` VALUES (71, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_leave', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:44:05');
INSERT INTO `sys_oper_log` VALUES (72, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:45:53');
INSERT INTO `sys_oper_log` VALUES (73, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"是否离校\",\"remark\":\"是否离校1-是2-否\",\"params\":{},\"dictType\":\"sys_is_leave_school\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:49:23');
INSERT INTO `sys_oper_log` VALUES (74, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"是\",\"params\":{},\"dictType\":\"sys_is_leave_school\",\"dictLabel\":\"是\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:51:54');
INSERT INTO `sys_oper_log` VALUES (75, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"否\",\"params\":{},\"dictType\":\"sys_is_leave_school\",\"dictLabel\":\"否\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:52:10');
INSERT INTO `sys_oper_log` VALUES (76, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"逻辑删除\",\"remark\":\"是否进行逻辑删除\",\"params\":{},\"dictType\":\"sys_deleted\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:52:57');
INSERT INTO `sys_oper_log` VALUES (77, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"进行逻辑删除\",\"params\":{},\"dictType\":\"sys_deleted\",\"dictLabel\":\"删除\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:53:32');
INSERT INTO `sys_oper_log` VALUES (78, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"未删除\",\"params\":{},\"dictType\":\"sys_deleted\",\"dictLabel\":\"未删除\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:53:56');
INSERT INTO `sys_oper_log` VALUES (79, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_leave', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:56:40');
INSERT INTO `sys_oper_log` VALUES (80, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"cVzhanshi\",\"columns\":[{\"capJavaField\":\"LeaveId\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"leaveId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"请假信息id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650369400000,\"tableId\":2,\"pk\":true,\"columnName\":\"leave_id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户id(请假人的用户id)\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650369400000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"LeaveType\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"sys_leave_type\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"leaveType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"请假类型1-事假2-病假3-其他\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650369400000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"leave_type\"},{\"capJavaField\":\"LeaveTimeType\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"sys_leave_time_type\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"leaveTimeType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"请假时长类型1-一天以内2-一天到三天-3三天以上\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 19:59:22');
INSERT INTO `sys_oper_log` VALUES (81, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-19 20:00:00');
INSERT INTO `sys_oper_log` VALUES (82, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":2,\"menuName\":\"请假信息\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"leave\",\"component\":\"system/leave/index\",\"children\":[],\"createTime\":1650370477000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1061,\"menuType\":\"C\",\"perms\":\"system:leave:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 20:22:08');
INSERT INTO `sys_oper_log` VALUES (83, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2', '127.0.0.1', '内网IP', '{tableIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 21:32:55');
INSERT INTO `sys_oper_log` VALUES (84, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_leave', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 21:32:58');
INSERT INTO `sys_oper_log` VALUES (85, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"cVzhanshi\",\"columns\":[{\"capJavaField\":\"LeaveId\",\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"leaveId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"请假ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650375178000,\"tableId\":3,\"pk\":true,\"columnName\":\"leave_id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":40,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"请假人id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650375178000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"UserName\",\"usableColumn\":false,\"columnId\":41,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"请假人\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650375178000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"user_name\"},{\"capJavaField\":\"LeaveType\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"sys_leave_type\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"leaveType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"请假类型\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"crea', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 21:34:36');
INSERT INTO `sys_oper_log` VALUES (86, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-19 21:34:49');
INSERT INTO `sys_oper_log` VALUES (87, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":1,\"menuName\":\"请假信息\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"leave\",\"component\":\"system/leave/index\",\"children\":[],\"createTime\":1650375705000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1067,\"menuType\":\"C\",\"perms\":\"system:leave:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 21:52:57');
INSERT INTO `sys_oper_log` VALUES (88, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":2,\"menuName\":\"请假信息\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"leave\",\"component\":\"system/leave/index\",\"children\":[],\"createTime\":1650375705000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1067,\"menuType\":\"C\",\"perms\":\"system:leave:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 21:53:11');
INSERT INTO `sys_oper_log` VALUES (89, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'admin', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"ecpPhone\":\"34\",\"remark\":\"34\",\"params\":{},\"leaveType\":\"1\",\"createTime\":1650379077693,\"leaveId\":1,\"leaveStatus\":\"0\",\"isLeaveSchool\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 22:37:57');
INSERT INTO `sys_oper_log` VALUES (90, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'admin', NULL, '/system/leave/1', '127.0.0.1', '内网IP', '{leaveIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 22:38:05');
INSERT INTO `sys_oper_log` VALUES (91, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1067,1068,1069,1070,1071,1072,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:16:54');
INSERT INTO `sys_oper_log` VALUES (92, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650347311000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:26:00');
INSERT INTO `sys_oper_log` VALUES (93, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650347311000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[4,3],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 12:31:43');
INSERT INTO `sys_oper_log` VALUES (94, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"543\",\"address\":\"er\",\"ecpPhone\":\"15970387607\",\"remark\":\"45\",\"params\":{},\"leaveType\":\"1\",\"createTime\":1650434000943,\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":1,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"0\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 13:53:21');
INSERT INTO `sys_oper_log` VALUES (95, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/1', '127.0.0.1', '内网IP', '{leaveIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 13:57:22');
INSERT INTO `sys_oper_log` VALUES (96, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"leaveType\":\"1\",\"createTime\":1650434259850,\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"0\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 13:57:39');
INSERT INTO `sys_oper_log` VALUES (97, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"回家\",\"address\":\"上饶\",\"ecpPhone\":\"15970387607\",\"remark\":\"123\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650434863851,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"2\",\"approvalId\":2,\"leaveId\":3,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"0\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 14:08:15');
INSERT INTO `sys_oper_log` VALUES (98, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650435213164,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"0\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 14:13:33');
INSERT INTO `sys_oper_log` VALUES (99, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"dsgfda\",\"address\":\"SFDG\",\"ecpPhone\":\"15970387607\",\"remark\":\"53453\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650435450063,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":5,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"0\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 14:17:30');
INSERT INTO `sys_oper_log` VALUES (100, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"324\",\"ecpPhone\":\"15970387607\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650436419850,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":6,\"startTime\":1650384000000,\"endTime\":1650384000000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 14:33:40');
INSERT INTO `sys_oper_log` VALUES (101, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"543534\",\"address\":\"324\",\"ecpPhone\":\"15970387607\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"2\",\"createTime\":1650436472904,\"approvalName\":\"cVzhanshi\",\"leaveTimeType\":\"1\",\"approvalId\":1,\"leaveId\":7,\"startTime\":1650384000000,\"endTime\":1650384000000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 14:34:33');
INSERT INTO `sys_oper_log` VALUES (102, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"dhjasd\",\"address\":\"432\",\"ecpPhone\":\"15970387607\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650438005521,\"approvalName\":\"cVzhanshi\",\"leaveTimeType\":\"1\",\"approvalId\":1,\"leaveId\":8,\"startTime\":1650384000000,\"endTime\":1650297600000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 15:00:05');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":2,\"menuName\":\"请假管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 16:59:09');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":3,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 16:59:27');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":4,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 16:59:32');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":2,\"menuName\":\"请假信息\",\"params\":{},\"parentId\":1073,\"isCache\":\"0\",\"path\":\"leave\",\"component\":\"system/leave/index\",\"children\":[],\"createTime\":1650375705000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1067,\"menuType\":\"C\",\"perms\":\"system:leave:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 16:59:51');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":2,\"menuName\":\"请假信息\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"leave\",\"component\":\"system/leave/index\",\"children\":[],\"createTime\":1650375705000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1067,\"menuType\":\"C\",\"perms\":\"system:leave:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:01:08');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/1073', '127.0.0.1', '内网IP', '{menuId=1073}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:01:55');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":2,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:02:00');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":3,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:02:03');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":2,\"menuName\":\"请假管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"leave\",\"component\":\"system/leave/index\",\"children\":[],\"createTime\":1650375705000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1067,\"menuType\":\"C\",\"perms\":\"system:leave:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:03:00');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":2,\"menuName\":\"请假管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"leave\",\"component\":\"system/leave/index\",\"children\":[],\"createTime\":1650375705000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1067,\"menuType\":\"C\",\"perms\":\"system:leave:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:03:31');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":2,\"menuName\":\"审批管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"approval\",\"component\":\"system/approval/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"system:approval:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:06:21');
INSERT INTO `sys_oper_log` VALUES (114, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1067,1068,1069,1070,1071,1072,1074,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:12:12');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'zheng', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"审批信息查询\",\"params\":{},\"parentId\":1074,\"isCache\":\"0\",\"createBy\":\"zheng\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:approval:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:14:06');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":2,\"menuName\":\"审批信息修改\",\"params\":{},\"parentId\":1074,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:approval:update\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:17:01');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":2,\"menuName\":\"审批信息修改\",\"params\":{},\"parentId\":1074,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1650446221000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1076,\"menuType\":\"F\",\"perms\":\"system:approval:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:17:19');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":3,\"menuName\":\"审批信息删除\",\"params\":{},\"parentId\":1074,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:approval:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:18:11');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"审批信息导出\",\"params\":{},\"parentId\":1074,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:approval:s\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:18:40');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":4,\"menuName\":\"审批信息导出\",\"params\":{},\"parentId\":1074,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1650446320000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1078,\"menuType\":\"F\",\"perms\":\"system:approval:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 17:18:51');
INSERT INTO `sys_oper_log` VALUES (121, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 20:45:29');
INSERT INTO `sys_oper_log` VALUES (122, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'zheng', NULL, '/system/leave/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 20:57:44');
INSERT INTO `sys_oper_log` VALUES (123, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'zheng', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650461626444,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 21:33:46');
INSERT INTO `sys_oper_log` VALUES (124, '请假信息', 5, 'com.ruoyi.web.controller.system.SysLeaveController.export()', 'POST', 1, 'zheng', NULL, '/system/leave/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-20 21:41:40');
INSERT INTO `sys_oper_log` VALUES (125, '请假信息', 5, 'com.ruoyi.web.controller.system.SysLeaveController.export()', 'POST', 1, 'zheng', NULL, '/system/leave/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-20 21:49:00');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":2,\"menuName\":\"销假管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"cancel\",\"component\":\"system/cancel/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"system:cancel:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:32:39');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"销假信息查询\",\"params\":{},\"parentId\":1079,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:cancel:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:33:39');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":2,\"menuName\":\"销假信息修改\",\"params\":{},\"parentId\":1079,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:cancel:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:34:11');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":3,\"menuName\":\"销假信息删除\",\"params\":{},\"parentId\":1079,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:cancel:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:34:41');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"销假信息导出\",\"params\":{},\"parentId\":1079,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:cancel:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:35:09');
INSERT INTO `sys_oper_log` VALUES (131, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1067,1068,1069,1070,1071,1072,1079,1080,1081,1082,1083,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:37:27');
INSERT INTO `sys_oper_log` VALUES (132, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'bulijojo', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"546\",\"address\":\"5435\",\"ecpPhone\":\"15970387607\",\"remark\":\"45\",\"params\":{},\"userName\":\"龚文倩\",\"userId\":4,\"createBy\":\"bulijojo\",\"leaveType\":\"1\",\"createTime\":1650469928927,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":9,\"startTime\":1650384000000,\"endTime\":1650384000000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:52:09');
INSERT INTO `sys_oper_log` VALUES (133, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 23:54:38');
INSERT INTO `sys_oper_log` VALUES (134, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1067,1068,1069,1070,1071,1072,1079,1080,1081,1082,1083,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 00:02:16');
INSERT INTO `sys_oper_log` VALUES (135, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"回家\",\"address\":\"上饶\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"123\",\"updateTime\":1650470732157,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434864000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"2\",\"approvalId\":2,\"leaveId\":3,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"a\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 00:05:32');
INSERT INTO `sys_oper_log` VALUES (136, '请假信息', 3, 'com.ruoyi.web.controller.system.SysApprovalController.remove()', 'DELETE', 1, 'zheng', NULL, '/system/approval/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 00:05:46');
INSERT INTO `sys_oper_log` VALUES (137, '请假信息', 5, 'com.ruoyi.web.controller.system.SysLeaveController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-21 00:09:12');
INSERT INTO `sys_oper_log` VALUES (138, '请假信息', 5, 'com.ruoyi.web.controller.system.SysLeaveController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-21 00:09:33');
INSERT INTO `sys_oper_log` VALUES (139, '请假信息', 5, 'com.ruoyi.web.controller.system.SysLeaveController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-21 00:10:05');
INSERT INTO `sys_oper_log` VALUES (140, '请假信息', 5, 'com.ruoyi.web.controller.system.SysLeaveController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-21 00:10:29');
INSERT INTO `sys_oper_log` VALUES (141, '销假信息', 5, 'com.ruoyi.web.controller.system.SysCancelController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/cancel/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-21 00:11:31');
INSERT INTO `sys_oper_log` VALUES (142, '请假信息', 3, 'com.ruoyi.web.controller.system.SysCancelController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/cancel/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 00:12:29');
INSERT INTO `sys_oper_log` VALUES (143, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650471281894,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 00:14:41');
INSERT INTO `sys_oper_log` VALUES (144, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650471645649,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 00:20:45');
INSERT INTO `sys_oper_log` VALUES (145, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'admin', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"dhjasd\",\"address\":\"432\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"updateTime\":1650472095477,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650438006000,\"updateBy\":\"admin\",\"approvalName\":\"cVzhanshi\",\"leaveTimeType\":\"1\",\"approvalId\":1,\"leaveId\":8,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 00:28:15');
INSERT INTO `sys_oper_log` VALUES (146, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1001,1005,1007,1067,1068,1069,1070,1071,1072,1079,1080,1081,1082,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:23:32');
INSERT INTO `sys_oper_log` VALUES (147, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:34:28');
INSERT INTO `sys_oper_log` VALUES (148, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4567547\",\"address\":\"65476\",\"ecpPhone\":\"15970387607\",\"remark\":\"2254说\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650505558209,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":11,\"startTime\":1650470400000,\"endTime\":1650470400000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:45:59');
INSERT INTO `sys_oper_log` VALUES (149, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4567547\",\"address\":\"65476\",\"ecpPhone\":\"15970387607\",\"remark\":\"2254说\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650505557099,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":10,\"startTime\":1650470400000,\"endTime\":1650470400000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:45:59');
INSERT INTO `sys_oper_log` VALUES (150, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"4567547\",\"address\":\"65476\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"2254说\",\"updateTime\":1650505636346,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650505557000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":10,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:47:16');
INSERT INTO `sys_oper_log` VALUES (151, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"4324\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"3\",\"createTime\":1650505781085,\"approvalName\":\"cVzhanshi\",\"leaveTimeType\":\"3\",\"approvalId\":1,\"leaveId\":12,\"startTime\":1650470400000,\"endTime\":1650729600000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:49:42');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":3,\"menuName\":\"审批管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"approval\",\"component\":\"system/approval/index\",\"children\":[],\"createTime\":1650445581000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1074,\"menuType\":\"C\",\"perms\":\"system:approval:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:54:46');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":4,\"menuName\":\"销假管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"cancel\",\"component\":\"system/cancel/index\",\"children\":[],\"createTime\":1650468758000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1079,\"menuType\":\"C\",\"perms\":\"system:cancel:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:54:54');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"peoples\",\"orderNum\":5,\"menuName\":\"角色管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"role\",\"component\":\"system/role/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":101,\"menuType\":\"C\",\"perms\":\"system:role:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:55:11');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tree-table\",\"orderNum\":6,\"menuName\":\"菜单管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"menu\",\"component\":\"system/menu/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":102,\"menuType\":\"C\",\"perms\":\"system:menu:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:55:19');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tree\",\"orderNum\":7,\"menuName\":\"学院管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:55:29');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"post\",\"orderNum\":8,\"menuName\":\"职称管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:55:39');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"dict\",\"orderNum\":9,\"menuName\":\"字典管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dict\",\"component\":\"system/dict/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":105,\"menuType\":\"C\",\"perms\":\"system:dict:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:55:45');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"edit\",\"orderNum\":10,\"menuName\":\"参数设置\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"config\",\"component\":\"system/config/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":106,\"menuType\":\"C\",\"perms\":\"system:config:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:56:00');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"message\",\"orderNum\":11,\"menuName\":\"通知公告\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:56:09');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"log\",\"orderNum\":12,\"menuName\":\"日志管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"log\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":108,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:56:16');
INSERT INTO `sys_oper_log` VALUES (162, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1001,1005,1067,1068,1069,1070,1071,1072,1079,1080,1081,1082,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 09:57:19');
INSERT INTO `sys_oper_log` VALUES (163, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:05:18');
INSERT INTO `sys_oper_log` VALUES (164, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:08:56');
INSERT INTO `sys_oper_log` VALUES (165, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 10:10:26');
INSERT INTO `sys_oper_log` VALUES (166, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/3,4', '127.0.0.1', '内网IP', '{leaveIds=3,4}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 10:10:39');
INSERT INTO `sys_oper_log` VALUES (167, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"回家\",\"address\":\"上饶\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"123\",\"updateTime\":1650507457404,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434864000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":3,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"a\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"流程中，不能修改\",\"code\":500}', 0, NULL, '2022-04-21 10:17:37');
INSERT INTO `sys_oper_log` VALUES (168, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'cVzhanshi', NULL, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '123456 admin123', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:20:07');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":8,\"menuName\":\"用户停用\",\"params\":{},\"parentId\":100,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:user:stop\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:23:10');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:23:32');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:23:34');
INSERT INTO `sys_oper_log` VALUES (172, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1079,1001,1005,1067,1068,1069,1070,1071,1072,1080,1081,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:35:11');
INSERT INTO `sys_oper_log` VALUES (173, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:35:25');
INSERT INTO `sys_oper_log` VALUES (174, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650508637173,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 10:37:17');
INSERT INTO `sys_oper_log` VALUES (175, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650508649134,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 10:37:29');
INSERT INTO `sys_oper_log` VALUES (176, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"回家\",\"address\":\"上饶\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"123\",\"updateTime\":1650508772107,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434864000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"2\",\"approvalId\":2,\"leaveId\":3,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"a\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 10:39:32');
INSERT INTO `sys_oper_log` VALUES (177, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"回家\",\"address\":\"上饶\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"123\",\"updateTime\":1650509324633,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434864000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"2\",\"approvalId\":2,\"leaveId\":3,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"a\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 10:48:44');
INSERT INTO `sys_oper_log` VALUES (178, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"回家\",\"address\":\"上饶\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"123\",\"updateTime\":1650509364918,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434864000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"2\",\"approvalId\":2,\"leaveId\":3,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"a\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:49:25');
INSERT INTO `sys_oper_log` VALUES (179, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"回家\",\"address\":\"上饶\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"123\",\"updateTime\":1650509436378,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434864000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"2\",\"approvalId\":2,\"leaveId\":3,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"a\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"流程中，不能修改\",\"code\":500}', 0, NULL, '2022-04-21 10:50:36');
INSERT INTO `sys_oper_log` VALUES (180, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 10:51:18');
INSERT INTO `sys_oper_log` VALUES (181, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/10', '127.0.0.1', '内网IP', '{leaveIds=10}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 10:51:26');
INSERT INTO `sys_oper_log` VALUES (182, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/12', '127.0.0.1', '内网IP', '{leaveIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:51:44');
INSERT INTO `sys_oper_log` VALUES (183, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/10', '127.0.0.1', '内网IP', '{leaveIds=10}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 10:51:49');
INSERT INTO `sys_oper_log` VALUES (184, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/10', '127.0.0.1', '内网IP', '{leaveIds=10}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 10:53:09');
INSERT INTO `sys_oper_log` VALUES (185, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 10:54:27');
INSERT INTO `sys_oper_log` VALUES (186, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"dhjasd\",\"address\":\"432\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"updateTime\":1650509696828,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650438006000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"cVzhanshi\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":8,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:54:56');
INSERT INTO `sys_oper_log` VALUES (187, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4567547\",\"address\":\"65476\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"2254说\",\"updateTime\":1650509705975,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650505557000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":1,\"leaveId\":10,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"流程中，不能修改\",\"code\":500}', 0, NULL, '2022-04-21 10:55:05');
INSERT INTO `sys_oper_log` VALUES (188, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650509902213,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 10:58:22');
INSERT INTO `sys_oper_log` VALUES (189, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650510061424,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 11:01:01');
INSERT INTO `sys_oper_log` VALUES (190, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650510123320,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"暂未审批,无法销假\",\"code\":500}', 0, NULL, '2022-04-21 11:02:03');
INSERT INTO `sys_oper_log` VALUES (191, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"324\",\"approvalType\":\"3\",\"ecpPhone\":\"15970387607\",\"updateTime\":1650510467995,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650436420000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":6,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 11:07:48');
INSERT INTO `sys_oper_log` VALUES (192, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"324\",\"approvalType\":\"3\",\"ecpPhone\":\"15970387607\",\"updateTime\":1650510475075,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650436420000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":6,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 11:07:55');
INSERT INTO `sys_oper_log` VALUES (193, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"324\",\"approvalType\":\"3\",\"ecpPhone\":\"15970387607\",\"updateTime\":1650510524894,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650436420000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":6,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"审批驳回,无需销假\",\"code\":500}', 0, NULL, '2022-04-21 11:08:44');
INSERT INTO `sys_oper_log` VALUES (194, '请假信息', 3, 'com.ruoyi.web.controller.system.SysCancelController.remove()', 'DELETE', 1, 'admin', NULL, '/system/cancel/9', '127.0.0.1', '内网IP', '{leaveIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 11:17:07');
INSERT INTO `sys_oper_log` VALUES (195, '请假信息', 3, 'com.ruoyi.web.controller.system.SysCancelController.remove()', 'DELETE', 1, 'admin', NULL, '/system/cancel/4', '127.0.0.1', '内网IP', '{leaveIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 11:28:34');
INSERT INTO `sys_oper_log` VALUES (196, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650511757352,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"流程中，不能修改\",\"code\":500}', 0, NULL, '2022-04-21 11:29:17');
INSERT INTO `sys_oper_log` VALUES (197, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 11:29:28');
INSERT INTO `sys_oper_log` VALUES (198, '请假信息', 5, 'com.ruoyi.web.controller.system.SysLeaveController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave/export', '127.0.0.1', '内网IP', '{\"params\":{},\"userId\":3}', NULL, 0, NULL, '2022-04-21 11:31:56');
INSERT INTO `sys_oper_log` VALUES (199, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 11:37:21');
INSERT INTO `sys_oper_log` VALUES (200, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650512244282,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"流程中，不能修改\",\"code\":500}', 0, NULL, '2022-04-21 11:37:24');
INSERT INTO `sys_oper_log` VALUES (201, '销假信息', 5, 'com.ruoyi.web.controller.system.SysCancelController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/cancel/export', '127.0.0.1', '内网IP', '{\"params\":{},\"userId\":3}', NULL, 0, NULL, '2022-04-21 11:51:01');
INSERT INTO `sys_oper_log` VALUES (202, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15888889898\",\"admin\":false,\"loginDate\":1650469896000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"127.0.0.1\",\"email\":\"cvzhani@163.com\",\"nickName\":\"龚文倩\",\"sex\":\"1\",\"deptId\":113,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"bulijojo\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650338366000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:18:10');
INSERT INTO `sys_oper_log` VALUES (203, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:21:37');
INSERT INTO `sys_oper_log` VALUES (204, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:22:12');
INSERT INTO `sys_oper_log` VALUES (205, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'zheng', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"教职工\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649904665000,\"menuCheckStrictly\":true,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:37:00');
INSERT INTO `sys_oper_log` VALUES (206, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'zheng', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"status\":\"0\"},{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650519431000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"zheng\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:38:13');
INSERT INTO `sys_oper_log` VALUES (207, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'zheng', NULL, '/system/role/3', '127.0.0.1', '内网IP', '{roleIds=3}', NULL, 1, '没有权限访问角色数据！', '2022-04-21 13:38:20');
INSERT INTO `sys_oper_log` VALUES (208, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"params\":{},\"deptCheckStrictly\":false,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:38:46');
INSERT INTO `sys_oper_log` VALUES (209, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650519431000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:39:34');
INSERT INTO `sys_oper_log` VALUES (210, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"params\":{},\"deptCheckStrictly\":false,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:39:38');
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650519431000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[4,3],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 13:39:44');
INSERT INTO `sys_oper_log` VALUES (212, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15888889898\",\"admin\":false,\"loginDate\":1650469896000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"127.0.0.1\",\"email\":\"cvzhani@163.com\",\"nickName\":\"龚文倩\",\"sex\":\"1\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机183\",\"leader\":\"连\",\"deptId\":113,\"orderNum\":\"2\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"bulijojo\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650338366000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 14:53:12');
INSERT INTO `sys_oper_log` VALUES (213, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15888889898\",\"admin\":false,\"loginDate\":1650469896000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"127.0.0.1\",\"email\":\"cvzhani@163.com\",\"nickName\":\"龚文倩\",\"sex\":\"1\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"土测学院\",\"leader\":\"老土\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"bulijojo\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650338366000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 14:53:46');
INSERT INTO `sys_oper_log` VALUES (214, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'cVzhanshi', NULL, '/system/user/export', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{\"dataScope\":\" AND (d.dept_id IN ( SELECT dept_id FROM sys_dept WHERE dept_id = 112 or find_in_set( 112 , ancestors ) ))\"}}', NULL, 0, NULL, '2022-04-21 14:54:27');
INSERT INTO `sys_oper_log` VALUES (215, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'bulijojo', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"4234\",\"ecpPhone\":\"15970387607\",\"remark\":\"3423\",\"params\":{},\"userName\":\"龚文倩\",\"userId\":4,\"createBy\":\"bulijojo\",\"leaveType\":\"1\",\"createTime\":1650525513161,\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":13,\"startTime\":1650470400000,\"endTime\":1650470400000,\"isLeaveSchool\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 15:18:33');
INSERT INTO `sys_oper_log` VALUES (216, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'bulijojo', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"4234\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"3423\",\"updateTime\":1650525614396,\"params\":{},\"userName\":\"龚文倩\",\"userId\":4,\"createBy\":\"bulijojo\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650525513000,\"updateBy\":\"bulijojo\",\"approvalName\":\"cVzhanshi\",\"leaveTimeType\":\"1\",\"approvalId\":1,\"leaveId\":13,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 15:20:14');
INSERT INTO `sys_oper_log` VALUES (217, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'bulijojo', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"4234\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"3423\",\"updateTime\":1650525642639,\"params\":{},\"userName\":\"龚文倩\",\"userId\":4,\"createBy\":\"bulijojo\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650525513000,\"updateBy\":\"bulijojo\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":13,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 15:20:42');
INSERT INTO `sys_oper_log` VALUES (218, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/4', '127.0.0.1', '内网IP', '{leaveIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 15:25:30');
INSERT INTO `sys_oper_log` VALUES (219, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650526043382,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"暂未审批,无法销假\",\"code\":500}', 0, NULL, '2022-04-21 15:27:23');
INSERT INTO `sys_oper_log` VALUES (220, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15888883854\",\"admin\":false,\"password\":\"$2a$10$6q.5Q9NJQ7musfBNpdZUY.5fYx05noPFpk8CvWM4QOvW3d.VcFxXu\",\"postIds\":[4],\"email\":\"123@163.com\",\"nickName\":\"魏志成\",\"sex\":\"0\",\"deptId\":103,\"params\":{},\"userName\":\"wei\",\"userId\":5,\"createBy\":\"admin\",\"roleIds\":[5],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:27:39');
INSERT INTO `sys_oper_log` VALUES (221, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"17834345656\",\"admin\":false,\"password\":\"$2a$10$DXucMoHbBkn7AsyIgj0k4OYFZNNIE7I8/GHg43kCprW1OeS5Ns6E2\",\"postIds\":[2],\"email\":\"34@qq.com\",\"nickName\":\"杨老师\",\"sex\":\"0\",\"deptId\":103,\"params\":{},\"userName\":\"yang\",\"userId\":6,\"createBy\":\"admin\",\"roleIds\":[6],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:29:11');
INSERT INTO `sys_oper_log` VALUES (222, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18989898989\",\"admin\":false,\"password\":\"$2a$10$WbSoeT0sb59Hq3Lldhpcc.LmKWdZIg8T2SU8brfTQTWsr1UnsYMH6\",\"postIds\":[2],\"email\":\"345@qq.com\",\"nickName\":\"温老师\",\"sex\":\"0\",\"deptId\":101,\"params\":{},\"userName\":\"wen\",\"userId\":7,\"createBy\":\"admin\",\"roleIds\":[7],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:30:14');
INSERT INTO `sys_oper_log` VALUES (223, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15667676767\",\"admin\":false,\"password\":\"$2a$10$CwQJQrfVSCjH5Tz9WalYReMSqYHXLrDW7J8eSIVo4c6V9HcHqaSMG\",\"postIds\":[2],\"email\":\"24@qq.com\",\"nickName\":\"杨斌\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"yangb\",\"userId\":8,\"createBy\":\"admin\",\"roleIds\":[7],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:31:09');
INSERT INTO `sys_oper_log` VALUES (224, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"status\":\"0\"},{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650544308000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"0\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息学院\",\"leader\":\"老连\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[3,4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:33:24');
INSERT INTO `sys_oper_log` VALUES (225, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650544583942,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"流程中，不能修改\",\"code\":500}', 0, NULL, '2022-04-21 20:36:23');
INSERT INTO `sys_oper_log` VALUES (226, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 20:36:27');
INSERT INTO `sys_oper_log` VALUES (227, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/10', '127.0.0.1', '内网IP', '{leaveIds=10}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 20:37:23');
INSERT INTO `sys_oper_log` VALUES (228, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"543534\",\"address\":\"324\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"updateTime\":1650544659920,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650436473000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"cVzhanshi\",\"leaveTimeType\":\"1\",\"approvalId\":1,\"leaveId\":7,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:37:39');
INSERT INTO `sys_oper_log` VALUES (229, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'cVzhanshi', NULL, '/system/leave/7', '127.0.0.1', '内网IP', '{leaveIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:37:43');
INSERT INTO `sys_oper_log` VALUES (230, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650544702151,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"暂未审批,无法销假\",\"code\":500}', 0, NULL, '2022-04-21 20:38:22');
INSERT INTO `sys_oper_log` VALUES (231, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650544705829,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"暂未审批,无法销假\",\"code\":500}', 0, NULL, '2022-04-21 20:38:25');
INSERT INTO `sys_oper_log` VALUES (232, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"5435\",\"address\":\"324\",\"approvalType\":\"3\",\"ecpPhone\":\"15970387607\",\"updateTime\":1650544711606,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650436420000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":6,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"2\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"审批驳回,无需销假\",\"code\":500}', 0, NULL, '2022-04-21 20:38:31');
INSERT INTO `sys_oper_log` VALUES (233, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"4567547\",\"address\":\"65476\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"2254说\",\"updateTime\":1650544721154,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650505557000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":10,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:38:41');
INSERT INTO `sys_oper_log` VALUES (234, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"教职工\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649904665000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"menuIds\":[1,100,1001,1003,1005,1006,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:43:26');
INSERT INTO `sys_oper_log` VALUES (235, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:44:25');
INSERT INTO `sys_oper_log` VALUES (236, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"remark\":\"辅导员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649904755000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"instructor\",\"roleName\":\"辅导员\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:45:14');
INSERT INTO `sys_oper_log` VALUES (237, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"remark\":\"学院级别领导\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":1649904822000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"y_level_leaders\",\"roleName\":\"院级领导\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,104,1021,1022,1023,1024,1025],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:46:08');
INSERT INTO `sys_oper_log` VALUES (238, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"remark\":\"学校级别的领导\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":1649904857000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"x_level_leaders\",\"roleName\":\"校级领导\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:46:29');
INSERT INTO `sys_oper_log` VALUES (239, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"remark\":\"辅导员\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649904755000,\"menuCheckStrictly\":true,\"roleKey\":\"instructor\",\"roleName\":\"辅导员\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:58:22');
INSERT INTO `sys_oper_log` VALUES (240, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"remark\":\"学院级别领导\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":1649904822000,\"menuCheckStrictly\":true,\"roleKey\":\"y_level_leaders\",\"roleName\":\"院级领导\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:58:30');
INSERT INTO `sys_oper_log` VALUES (241, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"remark\":\"学校级别的领导\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":1649904857000,\"menuCheckStrictly\":true,\"roleKey\":\"x_level_leaders\",\"roleName\":\"校级领导\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 20:58:48');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"学院查询\",\"params\":{},\"parentId\":103,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1017,\"menuType\":\"F\",\"perms\":\"system:dept:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:42:28');
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":2,\"menuName\":\"学院新增\",\"params\":{},\"parentId\":103,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1018,\"menuType\":\"F\",\"perms\":\"system:dept:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:42:33');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":3,\"menuName\":\"学院修改\",\"params\":{},\"parentId\":103,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1019,\"menuType\":\"F\",\"perms\":\"system:dept:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:42:37');
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":4,\"menuName\":\"学院删除\",\"params\":{},\"parentId\":103,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1020,\"menuType\":\"F\",\"perms\":\"system:dept:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:42:43');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"职称查询\",\"params\":{},\"parentId\":104,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1021,\"menuType\":\"F\",\"perms\":\"system:post:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:43:09');
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":2,\"menuName\":\"职称新增\",\"params\":{},\"parentId\":104,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1022,\"menuType\":\"F\",\"perms\":\"system:post:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:43:15');
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":3,\"menuName\":\"职称修改\",\"params\":{},\"parentId\":104,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1023,\"menuType\":\"F\",\"perms\":\"system:post:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:43:19');
INSERT INTO `sys_oper_log` VALUES (249, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":4,\"menuName\":\"职称删除\",\"params\":{},\"parentId\":104,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1024,\"menuType\":\"F\",\"perms\":\"system:post:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:43:24');
INSERT INTO `sys_oper_log` VALUES (250, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":5,\"menuName\":\"职称导出\",\"params\":{},\"parentId\":104,\"isCache\":\"0\",\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1025,\"menuType\":\"F\",\"perms\":\"system:post:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 22:43:31');
INSERT INTO `sys_oper_log` VALUES (251, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'zheng', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15970387607\",\"admin\":false,\"loginDate\":1650544419000,\"remark\":\"学生\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"zheng\",\"postIds\":[6],\"loginIp\":\"127.0.0.1\",\"email\":\"cvzha@163.com\",\"nickName\":\"连灵辉\",\"sex\":\"1\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"cVzhanshi\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1649862614000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:22:31');
INSERT INTO `sys_oper_log` VALUES (252, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"student\",\"roleName\":\"学生\",\"status\":\"0\"}],\"phonenumber\":\"15888889898\",\"admin\":false,\"loginDate\":1650525492000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"127.0.0.1\",\"email\":\"cvzhani@163.com\",\"nickName\":\"龚文倩\",\"sex\":\"1\",\"deptId\":113,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"bulijojo\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650338366000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:24:34');
INSERT INTO `sys_oper_log` VALUES (253, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'zheng', NULL, '/system/leave/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 23:25:09');
INSERT INTO `sys_oper_log` VALUES (254, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'zheng', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"gfdg\",\"address\":\"rgkj\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"params\":{},\"userName\":\"郑老师\",\"userId\":2,\"createBy\":\"zheng\",\"leaveType\":\"1\",\"createTime\":1650555312744,\"approvalName\":\"温老师\",\"leaveTimeType\":\"1\",\"approvalId\":7,\"leaveId\":14,\"startTime\":1650470400000,\"endTime\":1650470400000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:35:12');
INSERT INTO `sys_oper_log` VALUES (255, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'zheng', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"gfdg\",\"address\":\"rgkj\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650555337572,\"params\":{},\"userName\":\"郑老师\",\"userId\":2,\"createBy\":\"zheng\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650555313000,\"updateBy\":\"zheng\",\"approvalName\":\"杨老师\",\"leaveTimeType\":\"1\",\"approvalId\":6,\"leaveId\":14,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:35:37');
INSERT INTO `sys_oper_log` VALUES (256, '请假信息', 2, 'com.ruoyi.web.controller.system.SysLeaveController.edit()', 'PUT', 1, 'zheng', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"gfdg\",\"address\":\"rgkj\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650555344695,\"params\":{},\"userName\":\"郑老师\",\"userId\":2,\"createBy\":\"zheng\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650555313000,\"updateBy\":\"zheng\",\"approvalName\":\"温老师\",\"leaveTimeType\":\"1\",\"approvalId\":7,\"leaveId\":14,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:35:44');
INSERT INTO `sys_oper_log` VALUES (257, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650555369925,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 23:36:09');
INSERT INTO `sys_oper_log` VALUES (258, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650555414065,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-04-21 23:36:54');
INSERT INTO `sys_oper_log` VALUES (259, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650555540122,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"请勿重复审批\",\"code\":500}', 0, NULL, '2022-04-21 23:39:00');
INSERT INTO `sys_oper_log` VALUES (260, '请假信息', 3, 'com.ruoyi.web.controller.system.SysApprovalController.remove()', 'DELETE', 1, 'zheng', NULL, '/system/approval/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:39:18');
INSERT INTO `sys_oper_log` VALUES (261, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650555629384,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"请勿重复审批\",\"code\":500}', 0, NULL, '2022-04-21 23:40:29');
INSERT INTO `sys_oper_log` VALUES (262, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"4533\",\"address\":\"54\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"4534\",\"updateTime\":1650555904907,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"admin\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650434260000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":2,\"startTime\":1650384000000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"请勿重复审批\",\"code\":500}', 0, NULL, '2022-04-21 23:45:04');
INSERT INTO `sys_oper_log` VALUES (263, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'zheng', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"64567\",\"address\":\"564\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"453\",\"updateTime\":1650555910553,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650435213000,\"updateBy\":\"zheng\",\"approvalName\":\"郑老师\",\"leaveTimeType\":\"1\",\"approvalId\":2,\"leaveId\":4,\"startTime\":1650384000000,\"endTime\":1650384000000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:45:10');
INSERT INTO `sys_oper_log` VALUES (264, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'zheng', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"gfdg\",\"address\":\"rgkj\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650555976731,\"params\":{},\"userName\":\"郑老师\",\"userId\":2,\"createBy\":\"zheng\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650555313000,\"updateBy\":\"zheng\",\"approvalName\":\"温老师\",\"leaveTimeType\":\"1\",\"approvalId\":7,\"leaveId\":14,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"暂未审批,无法销假\",\"code\":500}', 0, NULL, '2022-04-21 23:46:16');
INSERT INTO `sys_oper_log` VALUES (265, '请假信息', 3, 'com.ruoyi.web.controller.system.SysCancelController.remove()', 'DELETE', 1, 'zheng', NULL, '/system/cancel/14', '127.0.0.1', '内网IP', '{leaveIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:46:26');
INSERT INTO `sys_oper_log` VALUES (266, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'wen', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"status\":\"0\"},{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650554687000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"wen\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"1\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[3,4],\"createTime\":1648195539000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:49:05');
INSERT INTO `sys_oper_log` VALUES (267, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'wen', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"gfdg\",\"address\":\"rgkj\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650556173754,\"params\":{},\"userName\":\"郑老师\",\"userId\":2,\"createBy\":\"zheng\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650555313000,\"updateBy\":\"wen\",\"approvalName\":\"温老师\",\"leaveTimeType\":\"1\",\"approvalId\":7,\"leaveId\":14,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"同意\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:49:33');
INSERT INTO `sys_oper_log` VALUES (268, '请假信息', 3, 'com.ruoyi.web.controller.system.SysCancelController.remove()', 'DELETE', 1, 'zheng', NULL, '/system/cancel/14', '127.0.0.1', '内网IP', '{leaveIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:50:10');
INSERT INTO `sys_oper_log` VALUES (269, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'zheng', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"gfdg\",\"address\":\"rgkj\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650556231132,\"params\":{},\"userName\":\"郑老师\",\"userId\":2,\"createBy\":\"zheng\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650555313000,\"updateBy\":\"zheng\",\"approvalName\":\"温老师\",\"leaveTimeType\":\"1\",\"approvalId\":7,\"leaveId\":14,\"startTime\":1650470400000,\"endTime\":1650470400000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"同意\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:50:31');
INSERT INTO `sys_oper_log` VALUES (270, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"menuIds\":[1,1079,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:51:38');
INSERT INTO `sys_oper_log` VALUES (271, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"教职工\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649904665000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"menuIds\":[1,100,1079,1001,1003,1005,1006,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:51:56');
INSERT INTO `sys_oper_log` VALUES (272, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"remark\":\"辅导员\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649904755000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"instructor\",\"roleName\":\"辅导员\",\"menuIds\":[1,1079,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:52:05');
INSERT INTO `sys_oper_log` VALUES (273, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"remark\":\"学院级别领导\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":1649904822000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"y_level_leaders\",\"roleName\":\"院级领导\",\"menuIds\":[1,1079,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083,104,1021,1022,1023,1024,1025],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:52:21');
INSERT INTO `sys_oper_log` VALUES (274, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"remark\":\"学校级别的领导\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":1649904857000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"x_level_leaders\",\"roleName\":\"校级领导\",\"menuIds\":[1,1079,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 23:52:32');
INSERT INTO `sys_oper_log` VALUES (275, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'wei', NULL, '/system/leave/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"流程中，不能撤销\",\"code\":500}', 0, NULL, '2022-04-21 23:53:51');
INSERT INTO `sys_oper_log` VALUES (276, '请假信息', 1, 'com.ruoyi.web.controller.system.SysLeaveController.add()', 'POST', 1, 'cVzhanshi', NULL, '/system/leave', '127.0.0.1', '内网IP', '{\"reason\":\"42342\",\"address\":\"3423\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"leaveType\":\"1\",\"createTime\":1650619586083,\"approvalName\":\"魏志成\",\"leaveTimeType\":\"1\",\"approvalId\":5,\"leaveId\":15,\"startTime\":1650556800000,\"endTime\":1650556800000,\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-22 17:26:26');
INSERT INTO `sys_oper_log` VALUES (277, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"42342\",\"address\":\"3423\",\"approvalType\":\"1\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650619595760,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650619586000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"魏志成\",\"leaveTimeType\":\"1\",\"approvalId\":5,\"leaveId\":15,\"startTime\":1650556800000,\"endTime\":1650556800000,\"leaveStatus\":\"1\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"暂未审批,无法销假\",\"code\":500}', 0, NULL, '2022-04-22 17:26:35');
INSERT INTO `sys_oper_log` VALUES (278, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'wei', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"42342\",\"address\":\"3423\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650619627402,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650619586000,\"updateBy\":\"wei\",\"approvalName\":\"魏志成\",\"leaveTimeType\":\"1\",\"approvalId\":5,\"leaveId\":15,\"startTime\":1650556800000,\"endTime\":1650556800000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-22 17:27:07');
INSERT INTO `sys_oper_log` VALUES (279, '请假信息', 2, 'com.ruoyi.web.controller.system.SysApprovalController.edit()', 'PUT', 1, 'wei', NULL, '/system/approval', '127.0.0.1', '内网IP', '{\"reason\":\"42342\",\"address\":\"3423\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650619631693,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650619586000,\"updateBy\":\"wei\",\"approvalName\":\"魏志成\",\"leaveTimeType\":\"1\",\"approvalId\":5,\"leaveId\":15,\"startTime\":1650556800000,\"endTime\":1650556800000,\"leaveStatus\":\"1\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"请勿重复审批\",\"code\":500}', 0, NULL, '2022-04-22 17:27:11');
INSERT INTO `sys_oper_log` VALUES (280, '请假信息', 2, 'com.ruoyi.web.controller.system.SysCancelController.edit()', 'PUT', 1, 'cVzhanshi', NULL, '/system/cancel', '127.0.0.1', '内网IP', '{\"reason\":\"42342\",\"address\":\"3423\",\"approvalType\":\"2\",\"ecpPhone\":\"15970387607\",\"remark\":\"423\",\"updateTime\":1650619658652,\"params\":{},\"userName\":\"连灵辉\",\"userId\":3,\"createBy\":\"cVzhanshi\",\"deleted\":\"0\",\"leaveType\":\"1\",\"createTime\":1650619586000,\"updateBy\":\"cVzhanshi\",\"approvalName\":\"魏志成\",\"leaveTimeType\":\"1\",\"approvalId\":5,\"leaveId\":15,\"startTime\":1650556800000,\"endTime\":1650556800000,\"leaveStatus\":\"2\",\"approvalAdvice\":\"注意安全\",\"isLeaveSchool\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-22 17:27:38');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"dict\",\"orderNum\":11,\"menuName\":\"字典管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dict\",\"component\":\"system/dict/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":105,\"menuType\":\"C\",\"perms\":\"system:dict:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:06:40');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"message\",\"orderNum\":9,\"menuName\":\"通知公告\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1648195539000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:06:46');
INSERT INTO `sys_oper_log` VALUES (283, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"学生\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648195539000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,100,1079,107,1001,1005,1067,1068,1069,1070,1071,1072,1080,1081,1083,1036],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:07:03');
INSERT INTO `sys_oper_log` VALUES (284, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"教职工\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649904665000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"menuIds\":[1,100,1079,107,1001,1003,1005,1006,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083,1036],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:07:15');
INSERT INTO `sys_oper_log` VALUES (285, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"班主任class teacher\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649904722000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"menuIds\":[1,1079,107,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083,1036],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:07:52');
INSERT INTO `sys_oper_log` VALUES (286, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"remark\":\"辅导员\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649904755000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"instructor\",\"roleName\":\"辅导员\",\"menuIds\":[1,1079,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083,107,1036,1037,1038,1039],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:08:02');
INSERT INTO `sys_oper_log` VALUES (287, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"remark\":\"学院级别领导\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":1649904822000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"y_level_leaders\",\"roleName\":\"院级领导\",\"menuIds\":[1,1079,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083,104,1021,1022,1023,1024,1025,107,1036,1037,1038,1039],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:08:09');
INSERT INTO `sys_oper_log` VALUES (288, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"remark\":\"学校级别的领导\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":1649904857000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"x_level_leaders\",\"roleName\":\"校级领导\",\"menuIds\":[1,1079,100,1001,1002,1003,1004,1005,1006,1007,1084,1067,1068,1069,1070,1071,1072,1074,1075,1076,1077,1078,1080,1081,1083,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,107,1036,1037,1038,1039],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:08:16');
INSERT INTO `sys_oper_log` VALUES (289, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/1', '127.0.0.1', '内网IP', '{noticeIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:08:48');
INSERT INTO `sys_oper_log` VALUES (290, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/2', '127.0.0.1', '内网IP', '{noticeIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:08:50');
INSERT INTO `sys_oper_log` VALUES (291, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>sdfsdf</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"论文初稿5月9号交\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 17:09:19');
INSERT INTO `sys_oper_log` VALUES (292, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-是否开启用户注册功能\",\"configKey\":\"sys.account.registerUser\",\"createBy\":\"admin\",\"createTime\":1648195540000,\"updateBy\":\"admin\",\"configId\":5,\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"configType\":\"Y\",\"configValue\":\"true\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-01 22:38:29');
INSERT INTO `sys_oper_log` VALUES (293, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"teacher\",\"roleName\":\"教职工\",\"status\":\"0\"},{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"cTeacher\",\"roleName\":\"班主任\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650556372000,\"remark\":\"班主任\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zheng@qq.com\",\"nickName\":\"郑老师\",\"sex\":\"1\",\"deptId\":112,\"avatar\":\"\",\"dept\":{\"deptName\":\"计算机184\",\"leader\":\"连\",\"deptId\":112,\"orderNum\":\"1\",\"params\":{},\"parentId\":103,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zheng\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[3,4],\"createTime\":1648195539000,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-02 12:30:06');
INSERT INTO `sys_oper_log` VALUES (294, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-02 12:30:08');
INSERT INTO `sys_oper_log` VALUES (295, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'admin', NULL, '/system/leave/2', '127.0.0.1', '内网IP', '{leaveIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-02 20:26:15');
INSERT INTO `sys_oper_log` VALUES (296, '请假信息', 3, 'com.ruoyi.web.controller.system.SysLeaveController.remove()', 'DELETE', 1, 'admin', NULL, '/system/leave/3', '127.0.0.1', '内网IP', '{leaveIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-02 20:26:27');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '职称ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职称编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职称名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'admin', '超级管理员', 1, '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-18 10:59:52', '超级管理员');
INSERT INTO `sys_post` VALUES (2, 'professor', '教授', 2, '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-18 11:01:51', '教授');
INSERT INTO `sys_post` VALUES (3, 'associate_professor', '副教授', 3, '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-18 11:02:32', '副教授');
INSERT INTO `sys_post` VALUES (4, 'lecturer', '讲师', 4, '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-18 11:02:59', '讲师');
INSERT INTO `sys_post` VALUES (5, 'assistant', '助教', 5, '0', 'admin', '2022-04-18 11:03:25', '', NULL, '助教');
INSERT INTO `sys_post` VALUES (6, 'student', '学生', 6, '0', 'admin', '2022-04-18 11:03:39', '', NULL, '学生');

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
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-03-25 16:05:39', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '学生', 'student', 2, '4', 1, 1, '0', '0', 'admin', '2022-03-25 16:05:39', 'admin', '2022-04-23 17:07:03', '学生');
INSERT INTO `sys_role` VALUES (3, '教职工', 'teacher', 3, '4', 1, 0, '0', '0', 'admin', '2022-04-14 10:51:05', 'admin', '2022-04-23 17:07:15', '教职工');
INSERT INTO `sys_role` VALUES (4, '班主任', 'cTeacher', 4, '4', 1, 1, '0', '0', 'admin', '2022-04-14 10:52:02', 'admin', '2022-04-23 17:07:52', '班主任class teacher');
INSERT INTO `sys_role` VALUES (5, '辅导员', 'instructor', 5, '4', 1, 1, '0', '0', 'admin', '2022-04-14 10:52:35', 'admin', '2022-04-23 17:08:02', '辅导员');
INSERT INTO `sys_role` VALUES (6, '院级领导', 'y_level_leaders', 6, '4', 1, 1, '0', '0', 'admin', '2022-04-14 10:53:42', 'admin', '2022-04-23 17:08:09', '学院级别领导');
INSERT INTO `sys_role` VALUES (7, '校级领导', 'x_level_leaders', 7, '1', 1, 1, '0', '0', 'admin', '2022-04-14 10:54:17', 'admin', '2022-04-23 17:08:16', '学校级别的领导');

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
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1067);
INSERT INTO `sys_role_menu` VALUES (2, 1068);
INSERT INTO `sys_role_menu` VALUES (2, 1069);
INSERT INTO `sys_role_menu` VALUES (2, 1070);
INSERT INTO `sys_role_menu` VALUES (2, 1071);
INSERT INTO `sys_role_menu` VALUES (2, 1072);
INSERT INTO `sys_role_menu` VALUES (2, 1079);
INSERT INTO `sys_role_menu` VALUES (2, 1080);
INSERT INTO `sys_role_menu` VALUES (2, 1081);
INSERT INTO `sys_role_menu` VALUES (2, 1083);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 100);
INSERT INTO `sys_role_menu` VALUES (3, 107);
INSERT INTO `sys_role_menu` VALUES (3, 1001);
INSERT INTO `sys_role_menu` VALUES (3, 1003);
INSERT INTO `sys_role_menu` VALUES (3, 1005);
INSERT INTO `sys_role_menu` VALUES (3, 1006);
INSERT INTO `sys_role_menu` VALUES (3, 1036);
INSERT INTO `sys_role_menu` VALUES (3, 1067);
INSERT INTO `sys_role_menu` VALUES (3, 1068);
INSERT INTO `sys_role_menu` VALUES (3, 1069);
INSERT INTO `sys_role_menu` VALUES (3, 1070);
INSERT INTO `sys_role_menu` VALUES (3, 1071);
INSERT INTO `sys_role_menu` VALUES (3, 1072);
INSERT INTO `sys_role_menu` VALUES (3, 1074);
INSERT INTO `sys_role_menu` VALUES (3, 1075);
INSERT INTO `sys_role_menu` VALUES (3, 1076);
INSERT INTO `sys_role_menu` VALUES (3, 1077);
INSERT INTO `sys_role_menu` VALUES (3, 1078);
INSERT INTO `sys_role_menu` VALUES (3, 1079);
INSERT INTO `sys_role_menu` VALUES (3, 1080);
INSERT INTO `sys_role_menu` VALUES (3, 1081);
INSERT INTO `sys_role_menu` VALUES (3, 1083);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 100);
INSERT INTO `sys_role_menu` VALUES (4, 107);
INSERT INTO `sys_role_menu` VALUES (4, 1001);
INSERT INTO `sys_role_menu` VALUES (4, 1002);
INSERT INTO `sys_role_menu` VALUES (4, 1003);
INSERT INTO `sys_role_menu` VALUES (4, 1004);
INSERT INTO `sys_role_menu` VALUES (4, 1005);
INSERT INTO `sys_role_menu` VALUES (4, 1006);
INSERT INTO `sys_role_menu` VALUES (4, 1007);
INSERT INTO `sys_role_menu` VALUES (4, 1036);
INSERT INTO `sys_role_menu` VALUES (4, 1067);
INSERT INTO `sys_role_menu` VALUES (4, 1068);
INSERT INTO `sys_role_menu` VALUES (4, 1069);
INSERT INTO `sys_role_menu` VALUES (4, 1070);
INSERT INTO `sys_role_menu` VALUES (4, 1071);
INSERT INTO `sys_role_menu` VALUES (4, 1072);
INSERT INTO `sys_role_menu` VALUES (4, 1074);
INSERT INTO `sys_role_menu` VALUES (4, 1075);
INSERT INTO `sys_role_menu` VALUES (4, 1076);
INSERT INTO `sys_role_menu` VALUES (4, 1077);
INSERT INTO `sys_role_menu` VALUES (4, 1078);
INSERT INTO `sys_role_menu` VALUES (4, 1079);
INSERT INTO `sys_role_menu` VALUES (4, 1080);
INSERT INTO `sys_role_menu` VALUES (4, 1081);
INSERT INTO `sys_role_menu` VALUES (4, 1083);
INSERT INTO `sys_role_menu` VALUES (4, 1084);
INSERT INTO `sys_role_menu` VALUES (5, 1);
INSERT INTO `sys_role_menu` VALUES (5, 100);
INSERT INTO `sys_role_menu` VALUES (5, 107);
INSERT INTO `sys_role_menu` VALUES (5, 1001);
INSERT INTO `sys_role_menu` VALUES (5, 1002);
INSERT INTO `sys_role_menu` VALUES (5, 1003);
INSERT INTO `sys_role_menu` VALUES (5, 1004);
INSERT INTO `sys_role_menu` VALUES (5, 1005);
INSERT INTO `sys_role_menu` VALUES (5, 1006);
INSERT INTO `sys_role_menu` VALUES (5, 1007);
INSERT INTO `sys_role_menu` VALUES (5, 1036);
INSERT INTO `sys_role_menu` VALUES (5, 1037);
INSERT INTO `sys_role_menu` VALUES (5, 1038);
INSERT INTO `sys_role_menu` VALUES (5, 1039);
INSERT INTO `sys_role_menu` VALUES (5, 1067);
INSERT INTO `sys_role_menu` VALUES (5, 1068);
INSERT INTO `sys_role_menu` VALUES (5, 1069);
INSERT INTO `sys_role_menu` VALUES (5, 1070);
INSERT INTO `sys_role_menu` VALUES (5, 1071);
INSERT INTO `sys_role_menu` VALUES (5, 1072);
INSERT INTO `sys_role_menu` VALUES (5, 1074);
INSERT INTO `sys_role_menu` VALUES (5, 1075);
INSERT INTO `sys_role_menu` VALUES (5, 1076);
INSERT INTO `sys_role_menu` VALUES (5, 1077);
INSERT INTO `sys_role_menu` VALUES (5, 1078);
INSERT INTO `sys_role_menu` VALUES (5, 1079);
INSERT INTO `sys_role_menu` VALUES (5, 1080);
INSERT INTO `sys_role_menu` VALUES (5, 1081);
INSERT INTO `sys_role_menu` VALUES (5, 1083);
INSERT INTO `sys_role_menu` VALUES (5, 1084);
INSERT INTO `sys_role_menu` VALUES (6, 1);
INSERT INTO `sys_role_menu` VALUES (6, 100);
INSERT INTO `sys_role_menu` VALUES (6, 104);
INSERT INTO `sys_role_menu` VALUES (6, 107);
INSERT INTO `sys_role_menu` VALUES (6, 1001);
INSERT INTO `sys_role_menu` VALUES (6, 1002);
INSERT INTO `sys_role_menu` VALUES (6, 1003);
INSERT INTO `sys_role_menu` VALUES (6, 1004);
INSERT INTO `sys_role_menu` VALUES (6, 1005);
INSERT INTO `sys_role_menu` VALUES (6, 1006);
INSERT INTO `sys_role_menu` VALUES (6, 1007);
INSERT INTO `sys_role_menu` VALUES (6, 1021);
INSERT INTO `sys_role_menu` VALUES (6, 1022);
INSERT INTO `sys_role_menu` VALUES (6, 1023);
INSERT INTO `sys_role_menu` VALUES (6, 1024);
INSERT INTO `sys_role_menu` VALUES (6, 1025);
INSERT INTO `sys_role_menu` VALUES (6, 1036);
INSERT INTO `sys_role_menu` VALUES (6, 1037);
INSERT INTO `sys_role_menu` VALUES (6, 1038);
INSERT INTO `sys_role_menu` VALUES (6, 1039);
INSERT INTO `sys_role_menu` VALUES (6, 1067);
INSERT INTO `sys_role_menu` VALUES (6, 1068);
INSERT INTO `sys_role_menu` VALUES (6, 1069);
INSERT INTO `sys_role_menu` VALUES (6, 1070);
INSERT INTO `sys_role_menu` VALUES (6, 1071);
INSERT INTO `sys_role_menu` VALUES (6, 1072);
INSERT INTO `sys_role_menu` VALUES (6, 1074);
INSERT INTO `sys_role_menu` VALUES (6, 1075);
INSERT INTO `sys_role_menu` VALUES (6, 1076);
INSERT INTO `sys_role_menu` VALUES (6, 1077);
INSERT INTO `sys_role_menu` VALUES (6, 1078);
INSERT INTO `sys_role_menu` VALUES (6, 1079);
INSERT INTO `sys_role_menu` VALUES (6, 1080);
INSERT INTO `sys_role_menu` VALUES (6, 1081);
INSERT INTO `sys_role_menu` VALUES (6, 1083);
INSERT INTO `sys_role_menu` VALUES (6, 1084);
INSERT INTO `sys_role_menu` VALUES (7, 1);
INSERT INTO `sys_role_menu` VALUES (7, 100);
INSERT INTO `sys_role_menu` VALUES (7, 103);
INSERT INTO `sys_role_menu` VALUES (7, 104);
INSERT INTO `sys_role_menu` VALUES (7, 107);
INSERT INTO `sys_role_menu` VALUES (7, 1001);
INSERT INTO `sys_role_menu` VALUES (7, 1002);
INSERT INTO `sys_role_menu` VALUES (7, 1003);
INSERT INTO `sys_role_menu` VALUES (7, 1004);
INSERT INTO `sys_role_menu` VALUES (7, 1005);
INSERT INTO `sys_role_menu` VALUES (7, 1006);
INSERT INTO `sys_role_menu` VALUES (7, 1007);
INSERT INTO `sys_role_menu` VALUES (7, 1017);
INSERT INTO `sys_role_menu` VALUES (7, 1018);
INSERT INTO `sys_role_menu` VALUES (7, 1019);
INSERT INTO `sys_role_menu` VALUES (7, 1020);
INSERT INTO `sys_role_menu` VALUES (7, 1021);
INSERT INTO `sys_role_menu` VALUES (7, 1022);
INSERT INTO `sys_role_menu` VALUES (7, 1023);
INSERT INTO `sys_role_menu` VALUES (7, 1024);
INSERT INTO `sys_role_menu` VALUES (7, 1025);
INSERT INTO `sys_role_menu` VALUES (7, 1036);
INSERT INTO `sys_role_menu` VALUES (7, 1037);
INSERT INTO `sys_role_menu` VALUES (7, 1038);
INSERT INTO `sys_role_menu` VALUES (7, 1039);
INSERT INTO `sys_role_menu` VALUES (7, 1067);
INSERT INTO `sys_role_menu` VALUES (7, 1068);
INSERT INTO `sys_role_menu` VALUES (7, 1069);
INSERT INTO `sys_role_menu` VALUES (7, 1070);
INSERT INTO `sys_role_menu` VALUES (7, 1071);
INSERT INTO `sys_role_menu` VALUES (7, 1072);
INSERT INTO `sys_role_menu` VALUES (7, 1074);
INSERT INTO `sys_role_menu` VALUES (7, 1075);
INSERT INTO `sys_role_menu` VALUES (7, 1076);
INSERT INTO `sys_role_menu` VALUES (7, 1077);
INSERT INTO `sys_role_menu` VALUES (7, 1078);
INSERT INTO `sys_role_menu` VALUES (7, 1079);
INSERT INTO `sys_role_menu` VALUES (7, 1080);
INSERT INTO `sys_role_menu` VALUES (7, 1081);
INSERT INTO `sys_role_menu` VALUES (7, 1083);
INSERT INTO `sys_role_menu` VALUES (7, 1084);

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
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', 'cVzhanshi', '00', 'cvzhanshi@163.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-05-03 19:47:14', 'admin', '2022-03-25 16:05:39', '', '2022-05-03 19:47:13', '管理员');
INSERT INTO `sys_user` VALUES (2, 112, 'zheng', '郑老师', '00', 'zheng@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-04-21 23:52:52', 'admin', '2022-03-25 16:05:39', 'admin', '2022-05-02 12:30:08', '班主任');
INSERT INTO `sys_user` VALUES (3, 112, 'cVzhanshi', '连灵辉', '00', 'cvzha@163.com', '15970387607', '1', '', '$2a$10$kxSFFZ/KxNzLywe6F9UPWuEwnTGiTdzTbtJqOxlkNc.EjhKLoX3pm', '0', '0', '127.0.0.1', '2022-04-22 17:27:20', 'admin', '2022-04-13 23:10:14', 'zheng', '2022-04-22 17:27:20', '学生');
INSERT INTO `sys_user` VALUES (4, 113, 'bulijojo', '龚文倩', '00', 'cvzhani@163.com', '15888889898', '1', '', '$2a$10$L8RENbqAoEtAAbKxf1hIgu/hB.0Wi3/bk9Tb7alU/yrPajDNGI1uC', '0', '0', '127.0.0.1', '2022-04-21 15:18:12', 'admin', '2022-04-19 11:19:26', 'admin', '2022-04-21 23:24:34', NULL);
INSERT INTO `sys_user` VALUES (5, 103, 'wei', '魏志成', '00', '123@163.com', '15888883854', '0', '', '$2a$10$6q.5Q9NJQ7musfBNpdZUY.5fYx05noPFpk8CvWM4QOvW3d.VcFxXu', '0', '0', '127.0.0.1', '2022-04-22 17:26:50', 'admin', '2022-04-21 20:27:39', '', '2022-04-22 17:26:49', NULL);
INSERT INTO `sys_user` VALUES (6, 103, 'yang', '杨老师', '00', '34@qq.com', '17834345656', '0', '', '$2a$10$DXucMoHbBkn7AsyIgj0k4OYFZNNIE7I8/GHg43kCprW1OeS5Ns6E2', '0', '0', '', NULL, 'admin', '2022-04-21 20:29:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (7, 101, 'wen', '温老师', '00', '345@qq.com', '18989898989', '0', '', '$2a$10$WbSoeT0sb59Hq3Lldhpcc.LmKWdZIg8T2SU8brfTQTWsr1UnsYMH6', '0', '0', '127.0.0.1', '2022-04-21 23:48:08', 'admin', '2022-04-21 20:30:14', '', '2022-04-21 23:48:07', NULL);
INSERT INTO `sys_user` VALUES (8, 100, 'yangb', '杨斌', '00', '24@qq.com', '15667676767', '0', '', '$2a$10$CwQJQrfVSCjH5Tz9WalYReMSqYHXLrDW7J8eSIVo4c6V9HcHqaSMG', '0', '0', '127.0.0.1', '2022-05-02 17:14:10', 'admin', '2022-04-21 20:31:09', '', '2022-05-02 17:14:09', NULL);
INSERT INTO `sys_user` VALUES (9, NULL, 'test22', 'test22', '00', '', '', '0', '', '$2a$10$CTcZOP4mrCQFAk9pKdRaH.HJVbCrYK8FdSeo8LpSXwBFfLbH0xRgO', '0', '0', '', NULL, '', '2022-05-01 22:39:02', '', NULL, NULL);

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
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (3, 6);
INSERT INTO `sys_user_post` VALUES (4, 6);
INSERT INTO `sys_user_post` VALUES (5, 4);
INSERT INTO `sys_user_post` VALUES (6, 2);
INSERT INTO `sys_user_post` VALUES (7, 2);
INSERT INTO `sys_user_post` VALUES (8, 2);

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
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 3);
INSERT INTO `sys_user_role` VALUES (2, 4);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (4, 2);
INSERT INTO `sys_user_role` VALUES (5, 5);
INSERT INTO `sys_user_role` VALUES (6, 6);
INSERT INTO `sys_user_role` VALUES (7, 7);
INSERT INTO `sys_user_role` VALUES (8, 7);

SET FOREIGN_KEY_CHECKS = 1;
