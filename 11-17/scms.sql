/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : scms

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 11/11/2024 11:07:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `cno` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cterm` int NULL DEFAULT NULL,
  `cmajor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chour` int NULL DEFAULT NULL,
  `ccredit` int NULL DEFAULT NULL,
  `tno` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cintro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1010001', '计算机网络', 5, '信息管理与信息工程', 48, 3, '1010000301', '项目开发及应用');
INSERT INTO `course` VALUES ('1010002', '项目管理', 5, '计算机科学与技术', 48, 3, '1010000102', NULL);
INSERT INTO `course` VALUES ('1010003', '网页设计', 5, '信息管理与信息工程', 40, 2, '1010000105', '网页制作开发');
INSERT INTO `course` VALUES ('1010005', '嵌入式系统', 5, '计算机科学与技术', 48, 3, '1010000206', '嵌入式概念介绍');
INSERT INTO `course` VALUES ('1010039', '计算机控制', 6, '通信工程', 6, 1, '1001000026', '本课程是针对通信专\r\n业开设的计算机空制\r\n课程');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('baiyun', '654321');
INSERT INTO `login` VALUES ('lantian', '123456');
INSERT INTO `login` VALUES ('xiaoxiao', '111111');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tno` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tpassword` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tsex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ttitle` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tdepart` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ttel` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `temail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1010000102', '刘宏伟', '123456', '男', '副教授', '软件教研室', '22226880', 'honglizhao@163.com');
INSERT INTO `teacher` VALUES ('1010000105', '赵宏利', '123456', '男', '教授', '软件教研室', '18686878685', 'honglizhao@163.com');
INSERT INTO `teacher` VALUES ('1010000206', '张海江', '123456', '男', '教授', '软件教研室', '13908732865', 'hajiangzhang@163.com');
INSERT INTO `teacher` VALUES ('1010000301', '李云龙', '123456', '男', '副教授', '网络教研室', '13908732560', 'yunglongli@163.com');

SET FOREIGN_KEY_CHECKS = 1;
