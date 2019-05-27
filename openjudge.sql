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

 Date: 27/05/2019 21:34:46
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem`  (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `input_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `output_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `samples` json NOT NULL,
  `test_case_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `test_case_score` json NOT NULL,
  `hint` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `languages` json NOT NULL,
  `template` json NOT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `last_update_time` timestamp(0) NULL DEFAULT NULL,
  `time_limit` int(11) NOT NULL,
  `memory_limit` int(11) NOT NULL,
  `spj` tinyint(1) NOT NULL,
  `spj_language` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `spj_code` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `spj_version` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rule_type` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `difficulty` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `submission_number` bigint(20) NOT NULL,
  `accepted_number` bigint(20) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statistic_info` json NOT NULL,
  `total_score` int(255) NOT NULL,
  `contest_id` int(11) NULL DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `spj_compile_ok` tinyint(1) NOT NULL,
  `io_mode` json NOT NULL,
  `share_submission` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` timestamp(6) NULL DEFAULT NULL,
  `username` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', NULL, 'root', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
