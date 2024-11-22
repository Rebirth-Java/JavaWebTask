/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 50730 (5.7.30-log)
 Source Host           : localhost:3306
 Source Schema         : scms

 Target Server Type    : MySQL
 Target Server Version : 50730 (5.7.30-log)
 File Encoding         : 65001

 Date: 22/11/2024 22:19:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classtype
-- ----------------------------
DROP TABLE IF EXISTS `classtype`;
CREATE TABLE `classtype`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classtype
-- ----------------------------
INSERT INTO `classtype` VALUES (1, '信息管理与信息系统');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `classtypeid` int(2) NOT NULL,
  `cno` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cterm` int(11) NULL DEFAULT NULL,
  `cmajor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chour` int(11) NULL DEFAULT NULL,
  `ccredit` int(11) NULL DEFAULT NULL,
  `tno` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cintro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`cno`, `classtypeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '1010001', '计算机网络', 5, '信息管理与信息系统', 88, 5, '1010000301', '项目开发及应用', 1);
INSERT INTO `course` VALUES (1, '1010002', '网页设计与制作', 5, '大数据', 96, 7, '1010000105', NULL, 2);
INSERT INTO `course` VALUES (1, '1010003', 'web高级开发技术', 5, '计算机科学与技术', 48, 3, '1010000105', '网页制作开发', 3);
INSERT INTO `course` VALUES (1, '1010005', '软件测试', 5, '软件工程', 292, 13, '1010000206', '嵌入式概念介绍', 4);
INSERT INTO `course` VALUES (1, '1010006', '数据挖掘', 5, '1', 48, 3, '1010000108', '1', 1);
INSERT INTO `course` VALUES (1, '1010007', '客户关系管理', 5, '1', 48, 3, '1010000103', '1', 5);
INSERT INTO `course` VALUES (1, '1010008', '市场营销', 5, '1', 36, 2, '1010000103', '1', 5);
INSERT INTO `course` VALUES (1, '1010009', 'UML统一建模语言', 5, '1', 36, 2, '1010000106', '1', 5);

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1010000102', '刘宏伟', '123456', '男', '副教授', '软件教研室', '22226880', 'honglizhao@163.com');
INSERT INTO `teacher` VALUES ('1010000105', '赵宏利', '123456', '男', '教授', '软件教研室', '18686878685', 'honglizhao@163.com');
INSERT INTO `teacher` VALUES ('1010000206', '张海江', '123456', '男', '教授', '软件教研室', '13908732865', 'hajiangzhang@163.com');
INSERT INTO `teacher` VALUES ('1010000301', '李云龙', '123456', '男', '副教授', '网络教研室', '13908732560', 'yunglongli@163.com');

-- ----------------------------
-- Procedure structure for cc_count
-- ----------------------------
DROP PROCEDURE IF EXISTS `cc_count`;
delimiter ;;
CREATE PROCEDURE `cc_count`(IN c_major VARCHAR(20), OUT hours INT, OUT credits INT)
BEGIN
    SELECT sum(chour) INTO hours FROM course WHERE cmajor=c_major;
    SELECT sum(ccredit) INTO credits FROM course WHERE cmajor=c_major;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for c_count
-- ----------------------------
DROP PROCEDURE IF EXISTS `c_count`;
delimiter ;;
CREATE PROCEDURE `c_count`()
begin
SELECT cmajor,sum(chour),sum(ccredit)
FROM course
GROUP BY cmajor;
End
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
