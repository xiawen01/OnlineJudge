/*
 Navicat Premium Data Transfer

 Source Server         : oj
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : openjudge

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 02/06/2019 16:35:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem`  (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `output_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `samples` json NOT NULL,
  `test_case_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `test_case_score` json NULL,
  `hint` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `languages` json NOT NULL,
  `template` json NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `last_update_time` timestamp(0) NULL DEFAULT NULL,
  `time_limit` int(11) NOT NULL,
  `memory_limit` int(11) NOT NULL,
  `spj` tinyint(1) NULL DEFAULT NULL,
  `spj_language` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `spj_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `spj_version` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rule_type` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `visible` tinyint(1) NOT NULL,
  `difficulty` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `submission_number` bigint(20) NULL DEFAULT NULL,
  `accepted_number` bigint(20) NULL DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `statistic_info` json NULL,
  `total_score` int(255) NULL DEFAULT NULL,
  `contest_id` int(11) NULL DEFAULT NULL,
  `is_public` tinyint(1) NULL DEFAULT NULL,
  `spj_compile_ok` tinyint(1) NULL DEFAULT NULL,
  `io_mode` json NOT NULL,
  `share_submission` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES (1, '第一个问题', '××××第一（NNNNN）个问题！！！！！', '输入一个数', '输出这个数的平方', '[\"2\", \"4\"]', NULL, NULL, '简单吧！！！！', '[\"on\", \"on\", \"on\", \"on\", \"on\"]', NULL, '2019-06-02 15:36:52', NULL, 1000, 256, NULL, NULL, NULL, NULL, NULL, 1, 'low', 'lwy986435105@gmail.com', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[\"on\"]', 1);
INSERT INTO `problem` VALUES (2, '第二个问题', '输出一百以内的所有素数', '无', '所有素数，用空格分隔', '[\"无\", \"无\"]', NULL, NULL, '简单吧！！！！', '[\"on\", \"on\", \"on\", \"on\", \"on\"]', NULL, '2019-06-02 16:07:06', NULL, 1000, 256, NULL, NULL, NULL, NULL, NULL, 1, 'low', 'lwy986435105@gmail.com', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[\"Standard IO\"]', 1);
INSERT INTO `problem` VALUES (3, '第三个问题', '是范德萨发', '范德萨范德萨发的', '让我发的撒', '[\"范德萨\", \"都是啊\"]', NULL, NULL, '地方撒旦撒', '[\"C\", \"C++\", \"Java\", \"Python2\", \"Python3\"]', NULL, '2019-06-02 16:22:57', NULL, 1000, 256, NULL, NULL, NULL, NULL, 'ACM', 1, 'low', 'lwy986435105@gmail.com', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[\"Standard IO\"]', 1);
INSERT INTO `problem` VALUES (4, '最后一个测试问题', '最后一个', '最后一个', '最后一个', '[\"灌灌灌灌\", \"灌灌灌灌\"]', NULL, NULL, '最后一个', '[\"C\", \"C++\", \"Java\", \"Python2\", \"Python3\"]', NULL, '2019-06-02 16:27:21', NULL, 1000, 256, NULL, NULL, NULL, NULL, 'ACM', 1, 'low', 'lwy986435105@gmail.com', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[\"Standard IO\"]', 1);

-- ----------------------------
-- Table structure for submission
-- ----------------------------
DROP TABLE IF EXISTS `submission`;
CREATE TABLE `submission`  (
  `id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contest_id` int(11) NULL DEFAULT NULL,
  `problem_id` int(11) NOT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` int(11) NOT NULL,
  `code` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `result` int(255) NOT NULL,
  `info` json NOT NULL,
  `language` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shared` tinyint(1) NOT NULL,
  `statistic_info` json NOT NULL,
  `username` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('小刚');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` timestamp(6) NULL DEFAULT NULL,
  `username` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `admin_type` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reset_password_token` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `reset_password_token_expire_time` timestamp(0) NULL DEFAULT NULL,
  `auth_token` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `two_factor_auth` tinyint(1) NULL DEFAULT NULL,
  `tfa_token` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `open_api` tinyint(1) NULL DEFAULT NULL,
  `open_api_appkey` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_disabled` tinyint(1) NULL DEFAULT NULL,
  `problem_permission` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `session_keys` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', NULL, 'root', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, '123', NULL, 'liwangyang', '986435105@qq.com', NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (5, '123', NULL, '李王阳', '986435105@qq.com', NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
