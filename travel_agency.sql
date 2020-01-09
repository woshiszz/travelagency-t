/*
 Navicat MySQL Data Transfer

 Source Server         : mysql2
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : localhost:3306
 Source Schema         : travel_agency

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : 65001

 Date: 09/01/2020 23:51:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity_picture
-- ----------------------------
DROP TABLE IF EXISTS `commodity_picture`;
CREATE TABLE `commodity_picture`  (
  `cid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pid` int(10) NOT NULL,
  PRIMARY KEY (`cid`, `pid`) USING BTREE,
  INDEX `commodity_pid`(`pid`) USING BTREE,
  CONSTRAINT `commodity_picture_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `t_picture` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `commodity_picture_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `t_commodity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for commodity_province
-- ----------------------------
DROP TABLE IF EXISTS `commodity_province`;
CREATE TABLE `commodity_province`  (
  `cid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pid` int(50) NOT NULL,
  PRIMARY KEY (`cid`, `pid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `commodity_province_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `t_province` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `commodity_province_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `t_commodity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `perid` int(100) NOT NULL,
  `rid` int(100) NOT NULL,
  PRIMARY KEY (`perid`, `rid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`perid`) REFERENCES `t_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1);
INSERT INTO `role_permission` VALUES (2, 1);
INSERT INTO `role_permission` VALUES (2, 2);

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `visitTime` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作者',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问ip',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问url资源',
  `executionTime` int(100) NULL DEFAULT NULL COMMENT '执行时长',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问方法',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of syslog
-- ----------------------------
INSERT INTO `syslog` VALUES (35, '2019-12-04 00:03:18', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 2, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (36, '2019-12-04 00:03:26', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/addfreemarker', 0, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]addfreemarker');
INSERT INTO `syslog` VALUES (37, '2019-12-04 00:03:28', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (38, '2019-12-04 00:03:41', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (39, '2019-12-04 00:03:49', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 8, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (40, '2019-12-04 00:03:52', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 2, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (41, '2019-12-04 00:03:56', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (42, '2019-12-04 00:05:00', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 2, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (43, '2019-12-04 00:05:14', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (44, '2019-12-04 00:06:56', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 2, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (45, '2019-12-04 00:07:04', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (46, '2019-12-04 00:07:23', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (47, '2019-12-04 00:07:42', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 13, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (48, '2019-12-04 00:07:57', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (49, '2019-12-04 00:08:32', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 4, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (50, '2019-12-04 00:08:35', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 2, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (51, '2019-12-04 00:12:26', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 2, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (52, '2019-12-04 00:12:28', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 8, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (53, '2019-12-04 00:12:53', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (54, '2019-12-04 00:12:58', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 4, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (55, '2019-12-04 00:15:17', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 17, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (56, '2019-12-04 00:15:21', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (57, '2019-12-04 00:15:32', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 4, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (58, '2019-12-04 00:15:34', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 13, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (59, '2019-12-04 00:15:37', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (60, '2019-12-04 00:15:40', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 9, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (61, '2019-12-04 00:15:42', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 3, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (62, '2019-12-04 00:16:36', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 4, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (63, '2019-12-04 00:20:44', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 2, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (64, '2019-12-04 00:20:52', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 16, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (65, '2019-12-04 00:20:54', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 8, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (66, '2019-12-04 00:20:56', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 12, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (67, '2019-12-04 00:21:04', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 9, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (68, '2019-12-04 14:08:52', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 2, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (69, '2019-12-04 14:08:59', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 16, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (70, '2019-12-04 14:09:12', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 13, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (71, '2019-12-04 14:09:14', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (72, '2019-12-04 14:09:26', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (73, '2019-12-04 14:09:29', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (74, '2019-12-04 14:11:00', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 9, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (75, '2019-12-04 14:11:02', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (76, '2019-12-04 14:11:06', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 5, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (77, '2019-12-04 14:11:17', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 9, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (78, '2019-12-04 14:11:21', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (79, '2019-12-04 14:11:22', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (80, '2019-12-04 14:16:15', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 8, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (81, '2019-12-04 14:16:25', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (82, '2019-12-04 14:16:27', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 1, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (83, '2019-12-04 14:16:31', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (84, '2019-12-04 14:36:01', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 2, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (85, '2019-12-04 14:36:11', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 22, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (86, '2019-12-04 14:36:30', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (87, '2019-12-04 14:36:33', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 12, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (88, '2019-12-04 14:36:42', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 8, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (89, '2019-12-04 14:38:23', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (90, '2019-12-04 14:38:26', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 13, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (91, '2019-12-04 14:38:28', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (92, '2019-12-04 14:38:52', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 9, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (93, '2019-12-04 14:38:54', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 8, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (94, '2019-12-04 14:38:58', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (95, '2019-12-04 14:39:02', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (96, '2019-12-04 14:47:22', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 1, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (97, '2019-12-04 14:47:24', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 16, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (98, '2019-12-04 14:47:38', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (99, '2019-12-04 14:47:47', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 13, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (100, '2019-12-04 14:49:18', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (101, '2019-12-04 14:49:24', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (102, '2019-12-04 14:49:29', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 7, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (103, '2019-12-04 14:49:31', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 6, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (104, '2019-12-04 14:49:33', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 13, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (105, '2019-12-04 14:49:35', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (106, '2019-12-04 14:50:42', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (107, '2019-12-04 14:50:44', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (108, '2019-12-04 14:54:56', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 1, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (109, '2019-12-04 14:55:22', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (110, '2019-12-04 14:55:25', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 21, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (111, '2019-12-04 14:55:32', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (112, '2019-12-04 14:56:01', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (113, '2019-12-04 14:56:03', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 14, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (114, '2019-12-04 14:56:07', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/addfreemarker', 0, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]addfreemarker');
INSERT INTO `syslog` VALUES (115, '2019-12-04 14:56:17', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (116, '2019-12-04 14:56:45', 'uu', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (117, '2019-12-04 14:56:49', 'uu', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (118, '2019-12-04 14:56:59', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (119, '2019-12-04 14:57:01', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (120, '2019-12-04 14:57:27', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 0, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (121, '2019-12-04 14:57:29', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 9, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (122, '2019-12-04 14:57:31', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 5, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (123, '2019-12-04 14:57:33', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 11, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (124, '2019-12-04 14:57:37', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 2, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (125, '2019-12-04 14:57:38', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 7, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (126, '2019-12-04 15:31:12', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 1, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (127, '2019-12-04 15:31:14', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 15, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (128, '2019-12-04 15:31:15', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/addfreemarker', 0, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]addfreemarker');
INSERT INTO `syslog` VALUES (129, '2019-12-04 15:31:18', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 13, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (130, '2019-12-04 15:31:20', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 4, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (131, '2019-12-04 15:31:23', 'admin', '0:0:0:0:0:0:0:1', '/admin/user/findAll', 12, '[类名]com.ljy.travel.web.admincontroller.AdminUserController[方法名]findAll');
INSERT INTO `syslog` VALUES (132, '2019-12-04 15:31:24', 'admin', '0:0:0:0:0:0:0:1', '/sysLog/findAll', 10, '[类名]com.ljy.travel.web.admincontroller.SysLogController[方法名]findAll');
INSERT INTO `syslog` VALUES (133, '2019-12-05 19:07:58', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 1, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');
INSERT INTO `syslog` VALUES (134, '2019-12-05 19:19:32', 'admin', '0:0:0:0:0:0:0:1', '/admin/index', 2, '[类名]com.ljy.travel.web.admincontroller.IndexController[方法名]toIndex');

-- ----------------------------
-- Table structure for t_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_users`;
CREATE TABLE `t_admin_users`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `phoneNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电话号码',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户状态，开启或未开启',
  `sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_admin_users
-- ----------------------------
INSERT INTO `t_admin_users` VALUES (0, 'uu', '$2a$10$L6LCGMyaNCcIlNyeik0xeOP345/2axX.A57fieIpuVkv2LB5jSi4O', '12344324354', '开启', '男', '牛牛');
INSERT INTO `t_admin_users` VALUES (1, 'aa', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '12312312312', '开启', '男', '安安');
INSERT INTO `t_admin_users` VALUES (2, 'bb', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '21212121211', '未开启', '女', '宝宝');
INSERT INTO `t_admin_users` VALUES (3, 'cc', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '23232323232', '开启', '男', '曹操');
INSERT INTO `t_admin_users` VALUES (4, 'admin', '$2a$10$Lf5Gd0hGm9RvdCIbVdNq.eO0FnLjZhOOvHliaDkdyWdy1vor6SMB2', '12123451234', '开启', '女', '老板');
INSERT INTO `t_admin_users` VALUES (5, 'dd', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '78879494949', '开启', '男', '滴滴');
INSERT INTO `t_admin_users` VALUES (6, 'tt', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '53647589764', '未开启', '男', '六六');
INSERT INTO `t_admin_users` VALUES (7, 'xx', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '14432255354', '开启', '女', '喜喜');
INSERT INTO `t_admin_users` VALUES (8, 'pp', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '23423543536', '开启', '女', '婆婆');
INSERT INTO `t_admin_users` VALUES (9, 'mm', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '23432423545', '开启', '男', '猫喵');
INSERT INTO `t_admin_users` VALUES (10, 'liu', '$2a$10$b9jHCuf9S1F4kVW5s96kguiCgTjNOn4TdBPCqOYjxzGdG0RlKW2Jq', '999', '未开启', '男', '刘德华');

-- ----------------------------
-- Table structure for t_commodity
-- ----------------------------
DROP TABLE IF EXISTS `t_commodity`;
CREATE TABLE `t_commodity`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '旅游商品名',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '旅游商品原价格',
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '旅游商品简介',
  `preferentialPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '旅游商品优惠价格',
  `discount` decimal(10, 1) NULL DEFAULT NULL COMMENT '旅游商品折扣率',
  `startBuy` datetime(0) NULL DEFAULT NULL COMMENT '旅游商品开始购买时间',
  `overBuy` datetime(0) NULL DEFAULT NULL COMMENT '旅游商品结束购买时间',
  `status` int(10) NULL DEFAULT NULL COMMENT '商品状态，0：不可购买，1：可购买',
  `departureCity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出发城市',
  `arrivalCity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '到达城市',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品url地址',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '商品添加时间',
  `recommend` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否推荐1是2否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_commodity
-- ----------------------------
INSERT INTO `t_commodity` VALUES ('1', '上海一日游', 3333.00, '好玩', 3000.00, 9.0, '2019-12-03 16:50:52', '2019-12-08 16:51:00', 1, '柳州', '上海', '', '2019-12-01 16:51:22', '1');
INSERT INTO `t_commodity` VALUES ('2', '北海三日游', 4444.00, '好玩', 4000.00, 8.0, '2019-12-03 17:12:43', '2019-12-10 17:12:46', 2, '柳州', '北海', NULL, '2019-12-02 17:13:07', '2');

-- ----------------------------
-- Table structure for t_front_titles
-- ----------------------------
DROP TABLE IF EXISTS `t_front_titles`;
CREATE TABLE `t_front_titles`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题名字',
  `href` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题链接',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '标题创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '标题修改时间',
  `sort` smallint(6) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_front_titles
-- ----------------------------
INSERT INTO `t_front_titles` VALUES (1, '首页', '/titles/findAll', '2019-11-26 14:31:42', '2019-11-26 14:33:09', 1);
INSERT INTO `t_front_titles` VALUES (2, '旅游资讯', NULL, '2019-11-26 14:34:22', '2019-11-26 14:34:24', 1);
INSERT INTO `t_front_titles` VALUES (3, '机票订购', NULL, '2019-11-26 14:34:39', '2019-11-26 14:34:42', 1);
INSERT INTO `t_front_titles` VALUES (4, '风景欣赏', NULL, '2019-11-26 14:34:55', '2019-11-26 14:34:59', 1);
INSERT INTO `t_front_titles` VALUES (5, '关于公司', NULL, '2019-11-26 14:35:12', '2019-11-26 14:35:14', 1);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cid` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `tid` int(11) NULL DEFAULT NULL COMMENT '旅客id',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否支付',
  `totalPrices` decimal(10, 2) NULL DEFAULT NULL COMMENT '价钱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('2', 2, 1, NULL, NULL, 22.00);
INSERT INTO `t_order` VALUES ('f8bc7eaf-1745-11ea-8ba4-b025aa2ff5ae', 1, 1, NULL, NULL, 11.00);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限名',
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '用户管理', '1');
INSERT INTO `t_permission` VALUES (2, '旅客管理', '2');

-- ----------------------------
-- Table structure for t_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_picture`;
CREATE TABLE `t_picture`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `roleDesc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '所有');
INSERT INTO `t_role` VALUES (2, '管理员', '部分');

-- ----------------------------
-- Table structure for t_traveller
-- ----------------------------
DROP TABLE IF EXISTS `t_traveller`;
CREATE TABLE `t_traveller`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idCardNum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `AK_nq_username`(`username`) USING BTREE,
  UNIQUE INDEX `AK_nq_idCardNum`(`idCardNum`) USING BTREE,
  UNIQUE INDEX `AK_nq_code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_traveller
-- ----------------------------
INSERT INTO `t_traveller` VALUES (1, 'youke', '111111', '游客', '2019-04-26', '男', '13468857994', '1922207542@qq.com', '1', '1464134313461', 'upload/1.jpg', '123432344432345543');
INSERT INTO `t_traveller` VALUES (2, 'admin', '0000', 'admin', '2019-02-01', '男', '15755323207', '19514145853@qq.com1', '1', '85B78E051A9F498F85E368AE6EEB9196', 'upload/1.jpg', '4544657786567665');
INSERT INTO `t_traveller` VALUES (126, 'mayun', '$2a$10$19kDSHlHfkdc7LebYnRRqO5tlROSydHJav4U2t7x2pbrndjImTGT2', '马云', '2000-02-01', '男', '44444444', '4444dong@qq.com', '2', '0352b5008fe54d45bfe01725a14e8d09', NULL, '11111111111');

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role`  (
  `uid` int(100) NOT NULL,
  `rid` int(100) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE,
  INDEX `pid`(`rid`) USING BTREE,
  CONSTRAINT `users_role_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `t_admin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES (4, 1);
INSERT INTO `users_role` VALUES (0, 2);
INSERT INTO `users_role` VALUES (1, 2);
INSERT INTO `users_role` VALUES (2, 2);
INSERT INTO `users_role` VALUES (3, 2);
INSERT INTO `users_role` VALUES (5, 2);
INSERT INTO `users_role` VALUES (6, 2);
INSERT INTO `users_role` VALUES (9, 2);
INSERT INTO `users_role` VALUES (10, 2);

SET FOREIGN_KEY_CHECKS = 1;
