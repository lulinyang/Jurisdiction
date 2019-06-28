/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 28/06/2019 18:19:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_customer
-- ----------------------------
DROP TABLE IF EXISTS `cms_customer`;
CREATE TABLE `cms_customer`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `orgroot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '顶级机构',
  `orgcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '机构号',
  `orgname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '机构名',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名-登录名',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'LOGO',
  `lat` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
  `lng` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `isusing` tinyint(4) NULL DEFAULT 0 COMMENT '是否禁',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `deleted_user` int(11) NULL DEFAULT NULL COMMENT '删除人',
  `isusing_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '禁用人',
  `update_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
  `login_at` datetime NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '最近一次登录的ip',
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信openid',
  `wx_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信昵称名',
  `wx_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信头像',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cms_customer_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `cms_customer_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `cms_customer_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_customer
-- ----------------------------
INSERT INTO `cms_customer` VALUES (1, 1, '200001', '200001', '顶级机构', 'admin', 'admin', '15655569098@163.com', '$2y$10$ISSY/gn2g2dZ5iTB7vsHv.aqTviyBN5kaLUg3ymIxz0.KgqL0GzjK', NULL, NULL, '', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-06-28 17:04:04', '127.0.0.1', NULL, NULL, NULL, '2019-06-24 11:52:03', '2019-06-28 17:04:04');
INSERT INTO `cms_customer` VALUES (3, 1, '200001', '20000101', '上海', NULL, 'linyang', '1228380958@qq.com', '$2y$10$Tn/SE2dJ./a134sTO.TZ8.kDwh88KxTZyLSj1bJFUTyZ1UBM0TxtC', NULL, NULL, '', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-27 23:37:14', '2019-06-27 23:37:14');

-- ----------------------------
-- Table structure for cms_orgcode
-- ----------------------------
DROP TABLE IF EXISTS `cms_orgcode`;
CREATE TABLE `cms_orgcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构号',
  `orgnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录子机构后两位',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_orgcode
-- ----------------------------
INSERT INTO `cms_orgcode` VALUES (1, '200001', '1', '2019-06-27 21:28:58', NULL);
INSERT INTO `cms_orgcode` VALUES (3, '20000101', '0', NULL, NULL);

-- ----------------------------
-- Table structure for cms_permissions
-- ----------------------------
DROP TABLE IF EXISTS `cms_permissions`;
CREATE TABLE `cms_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `router` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路由',
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '索引',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `router_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '前端路由',
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父ID 0-顶级',
  `level` tinyint(4) NULL DEFAULT 0 COMMENT '权限级别：0-顶级 1-一级',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_permissions
-- ----------------------------
INSERT INTO `cms_permissions` VALUES (1, '用户中心', '', 'users', 'el-icon-user-solid', NULL, '', 0, 0, 0, '2019-06-26 19:16:12', '2019-06-28 16:11:42');
INSERT INTO `cms_permissions` VALUES (2, '文章管理', '', NULL, NULL, NULL, '', 0, 0, 0, '2019-06-26 19:17:27', '2019-06-26 19:17:27');
INSERT INTO `cms_permissions` VALUES (3, '用户管理', '/api/getUserList', 'user-list', 'el-icon-s-custom', NULL, '', 1, 1, 0, '2019-06-26 19:17:46', '2019-06-28 16:12:29');
INSERT INTO `cms_permissions` VALUES (4, '角色管理', '/api/getRolesAll', NULL, NULL, NULL, '', 1, 1, 0, '2019-06-26 19:18:16', '2019-06-27 23:19:49');
INSERT INTO `cms_permissions` VALUES (5, '权限管理', '/api/getNodesGetTree', NULL, NULL, NULL, '', 1, 1, 0, '2019-06-26 19:18:41', '2019-06-27 23:20:46');

-- ----------------------------
-- Table structure for cms_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_permissions`;
CREATE TABLE `cms_role_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `permission_id` int(11) NULL DEFAULT NULL COMMENT '权限ID',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色->权限表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for cms_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_roles`;
CREATE TABLE `cms_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色描述',
  `permission_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限ID',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_roles
-- ----------------------------
INSERT INTO `cms_roles` VALUES (1, '管理员', '', '1,3,4,5,2', 0, '2019-06-25 14:08:07', '2019-06-27 23:22:18');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_12_04_124307_create_customer_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_12_04_125801_create_lly_roles_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_12_04_130535_create_lly_permissions_table', 1);
INSERT INTO `migrations` VALUES (11, '2018_12_04_132025_create_role_permissions_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('e9ff0cd2424019ce62bc9dad01e95f86240cebdae7fa8e7f976ddb5d547eebff56b1cd44eb3c0114', 1, 2, NULL, '[]', 0, '2019-06-24 11:54:13', '2019-06-24 11:54:13', '2019-07-09 11:54:13');
INSERT INTO `oauth_access_tokens` VALUES ('a17c33d4790de1c4caa9a86499baf50233526d3c352d4371eea38d3249a840c2095919d484698ec4', 1, 2, NULL, '[]', 0, '2019-06-24 12:04:39', '2019-06-24 12:04:39', '2019-07-09 12:04:39');
INSERT INTO `oauth_access_tokens` VALUES ('62dda3182fc9a2d25891743a5c2297e3b5712c21d914a81fbafab3de72ad62e9e6fd484b5fca707e', 1, 2, NULL, '[]', 0, '2019-06-24 12:13:05', '2019-06-24 12:13:05', '2019-07-09 12:13:05');
INSERT INTO `oauth_access_tokens` VALUES ('8ee9c47009d339053e8dc2cf7130d57c5764cf812039397016f3bbda5bc73c5513dd9964ab990b06', 1, 2, NULL, '[]', 0, '2019-06-24 12:13:45', '2019-06-24 12:13:45', '2019-07-09 12:13:45');
INSERT INTO `oauth_access_tokens` VALUES ('48e2112628673a7b85f77e69c20b7c400d7c2e2337256997ba6efcf533ba98eaf9ae4cf25607e689', 1, 2, NULL, '[]', 0, '2019-06-24 12:14:16', '2019-06-24 12:14:16', '2019-07-09 12:14:16');
INSERT INTO `oauth_access_tokens` VALUES ('8c26635599d5bce9f4ed81c0b5e2950e6a8a87c10aef62285977c8c6418d28a417e419e7fe670a5e', 1, 2, NULL, '[]', 0, '2019-06-24 12:16:05', '2019-06-24 12:16:05', '2019-07-09 12:16:05');
INSERT INTO `oauth_access_tokens` VALUES ('7b47bce9e79ff1d1aedf82abae7255faeebd724a6de07272a3338519df6f5854271797042f3d3b24', 1, 2, NULL, '[]', 0, '2019-06-24 12:24:05', '2019-06-24 12:24:05', '2019-07-09 12:24:05');
INSERT INTO `oauth_access_tokens` VALUES ('cec182abb4f4f1e5ac39ad8a9fe7b2a87e6600938c0eed4f1442c5c62159899874d15925fab32333', 1, 2, NULL, '[]', 0, '2019-06-24 12:25:16', '2019-06-24 12:25:16', '2019-07-09 12:25:16');
INSERT INTO `oauth_access_tokens` VALUES ('f7fbe21b2753549c37eb39fe03f278b5702d2a3a319300723a2aa9bb82d9ddf3c9302ea8a1afda50', 1, 2, NULL, '[]', 0, '2019-06-24 12:27:57', '2019-06-24 12:27:57', '2019-07-09 12:27:57');
INSERT INTO `oauth_access_tokens` VALUES ('ee9003fb4c058970b56fcef50f3b302d0f48ff30eae9831f83cd6b7cd8fab759fe3dd65572177749', 1, 2, NULL, '[]', 0, '2019-06-24 12:29:58', '2019-06-24 12:29:58', '2019-07-09 12:29:58');
INSERT INTO `oauth_access_tokens` VALUES ('c10ddda0281136b1c56a5b4a966c0903025e79d86e9672f6a183f0acb7f1aa8e3d53cd43975e85a2', 1, 2, NULL, '[]', 0, '2019-06-24 12:40:11', '2019-06-24 12:40:11', '2019-07-09 12:40:11');
INSERT INTO `oauth_access_tokens` VALUES ('7884e986f38766d59a92797d28856d8bff431369e5c9213cb7b723874795f9410486eb0c12e0e010', 1, 2, NULL, '[]', 0, '2019-06-24 12:51:05', '2019-06-24 12:51:05', '2019-07-09 12:51:05');
INSERT INTO `oauth_access_tokens` VALUES ('53f2ad16bd74653c87b3379037894664595852f21425704b5e252b2cab5ef9141dcb4f0c9263df4a', 1, 2, NULL, '[]', 0, '2019-06-24 12:52:15', '2019-06-24 12:52:15', '2019-07-09 12:52:15');
INSERT INTO `oauth_access_tokens` VALUES ('fde5261a393f85302b64d40f83e4ce25a4163df83c10e9456fabde8bf93a632abf7d8d6d4bf83379', 1, 2, NULL, '[]', 0, '2019-06-24 12:52:42', '2019-06-24 12:52:42', '2019-07-09 12:52:42');
INSERT INTO `oauth_access_tokens` VALUES ('6a57c6cb909f1f3966050cbba5c89c2d73bc5242f35e6d2ee71616eb55b4bd3b45de59a0bfcb3554', 1, 2, NULL, '[]', 0, '2019-06-24 13:04:19', '2019-06-24 13:04:19', '2019-07-09 13:04:19');
INSERT INTO `oauth_access_tokens` VALUES ('f7f6c84c4c5fccb5f68270afc29c1a4b8d06a8107cf092f6caa7dc72064c84eb4a41d9d7a80d28a7', 1, 2, NULL, '[]', 0, '2019-06-24 13:04:35', '2019-06-24 13:04:35', '2019-07-09 13:04:35');
INSERT INTO `oauth_access_tokens` VALUES ('ab9bf721c08e9186561e3dcdb210f9bcc511e9e81d054cc52c12146364c2281fa63dfe57c4fd23f0', 1, 2, NULL, '[]', 0, '2019-06-24 13:05:19', '2019-06-24 13:05:19', '2019-07-09 13:05:19');
INSERT INTO `oauth_access_tokens` VALUES ('36fbc1a4cf1dce00328110d4487e39e7fb45e6394060a67f2d45c21a6a09ecafff58eb4b4385cb95', 1, 2, NULL, '[]', 0, '2019-06-24 13:07:51', '2019-06-24 13:07:51', '2019-07-09 13:07:51');
INSERT INTO `oauth_access_tokens` VALUES ('812ebcafd585f32e93ca9ddccbc3fcb6344d298ecf8b45e0311afad5237fbd411a35dc7b7deed5ce', 1, 2, NULL, '[]', 0, '2019-06-24 13:10:54', '2019-06-24 13:10:54', '2019-07-09 13:10:53');
INSERT INTO `oauth_access_tokens` VALUES ('405e180b6a0ac6148fa6022ebfc33429feae7c215fd130ae02afb76aa6f665b48b856ac2bc91911c', 1, 2, NULL, '[]', 0, '2019-06-24 13:12:13', '2019-06-24 13:12:13', '2019-07-09 13:12:13');
INSERT INTO `oauth_access_tokens` VALUES ('2c6882bb042474240631dcf324535034d19c26822c7a3f3c629e84761eaf462c516f7985bde119ae', 1, 2, NULL, '[]', 0, '2019-06-24 13:19:46', '2019-06-24 13:19:46', '2019-07-09 13:19:46');
INSERT INTO `oauth_access_tokens` VALUES ('f945cde743941ffbf4bb54d91350a35aac8c6806fb9e6f4a2943e553746976b507fe28a884053275', 1, 2, NULL, '[]', 0, '2019-06-24 13:23:57', '2019-06-24 13:23:57', '2019-07-09 13:23:57');
INSERT INTO `oauth_access_tokens` VALUES ('58abd998262d2973ae1f735c698a5b94798aed7e51980849e72339375b259ebfa3b2014a4a63655e', 1, 2, NULL, '[]', 0, '2019-06-24 13:31:00', '2019-06-24 13:31:00', '2019-07-09 13:31:00');
INSERT INTO `oauth_access_tokens` VALUES ('28befd258acfcb3cb8620919d7f1076f7117d509828066969f7a9193a5c323dff7a7eff4ac49619d', 1, 2, NULL, '[]', 0, '2019-06-24 13:31:33', '2019-06-24 13:31:33', '2019-07-09 13:31:33');
INSERT INTO `oauth_access_tokens` VALUES ('646a1c47461c5406f11123611a9f18967b3e30165ab41c679985b52b528440a1dd77b69161cbb26c', 1, 2, NULL, '[]', 0, '2019-06-24 13:33:15', '2019-06-24 13:33:15', '2019-07-09 13:33:15');
INSERT INTO `oauth_access_tokens` VALUES ('77f64cf3f161a98f550c7f2aea64aaf60b740d1627c0cfc310173684120a4d3688e0178a2bdefd80', 1, 2, NULL, '[]', 0, '2019-06-24 13:35:00', '2019-06-24 13:35:00', '2019-07-09 13:35:00');
INSERT INTO `oauth_access_tokens` VALUES ('40c1bda135eac3feec54d9e265e4139f089bded6e38603c4f0b38217ec1eda42b71e0b209226c850', 1, 2, NULL, '[]', 0, '2019-06-24 13:37:17', '2019-06-24 13:37:17', '2019-07-09 13:37:17');
INSERT INTO `oauth_access_tokens` VALUES ('b11639ffb07df38d223cbde8eae693b95e4e42dfb4125d8b99d5a531c027c98feca24a9d5d594b31', 1, 2, NULL, '[]', 0, '2019-06-24 13:40:07', '2019-06-24 13:40:07', '2019-07-09 13:40:07');
INSERT INTO `oauth_access_tokens` VALUES ('b79c3551fb0ce55ded80f1151215cb34453197fb006a032d4e02a2d4c56cdb66a3808b7a6d029fb0', 1, 2, NULL, '[]', 0, '2019-06-24 13:40:56', '2019-06-24 13:40:56', '2019-07-09 13:40:56');
INSERT INTO `oauth_access_tokens` VALUES ('3fc8fa4fcc541baa2ee6449e85a433b2fae699cab177adb281299d60364e4eea5ba7e3150447adf4', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:23', '2019-06-24 13:42:23', '2019-07-09 13:42:23');
INSERT INTO `oauth_access_tokens` VALUES ('ca42278dc7f352411662de10860c41be53b47fffad14f105ee04f6a5391ee6fcb08032613c7507b2', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:25', '2019-06-24 13:42:25', '2019-07-09 13:42:25');
INSERT INTO `oauth_access_tokens` VALUES ('0a04fdf8985f5e353ac30794e39db2bb3192aa062f2c19513109417e8e5832fe6bf43d29b64e1de4', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:27', '2019-06-24 13:42:27', '2019-07-09 13:42:27');
INSERT INTO `oauth_access_tokens` VALUES ('8e201703301b190c0344e5385b65a3daa4987dce6715d5a0c041ac5d65c6e3fd12bb97fc61edc9cd', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:27', '2019-06-24 13:42:27', '2019-07-09 13:42:27');
INSERT INTO `oauth_access_tokens` VALUES ('b0db36e404dba25d763394b87f4db0400e29dcb9c95e0aded43463c1d55357ab900a1a3503a1671b', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:28', '2019-06-24 13:42:28', '2019-07-09 13:42:28');
INSERT INTO `oauth_access_tokens` VALUES ('173894179578766adbf70b0528dfacceeab173d2f9653e6892e4fc86d2f1bacbb690c42c29e2a7fd', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:28', '2019-06-24 13:42:28', '2019-07-09 13:42:28');
INSERT INTO `oauth_access_tokens` VALUES ('ab8e91395a80f0136241d65871f35cd32f3b7439a14ef9265a1f3ec4cca39a9a0ec0f26535f8956a', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:29', '2019-06-24 13:42:29', '2019-07-09 13:42:29');
INSERT INTO `oauth_access_tokens` VALUES ('869cfd60ff4801f51a18d288563aee22768259067bfb6a8912d9cf9c8c6a9abcc95a6e649006412e', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:29', '2019-06-24 13:42:29', '2019-07-09 13:42:29');
INSERT INTO `oauth_access_tokens` VALUES ('1113b40388aefa9053ed81b81173d779f8f217822f711975b2fcd86950138aecbb837a1fbd13f038', 1, 2, NULL, '[]', 0, '2019-06-24 13:42:30', '2019-06-24 13:42:30', '2019-07-09 13:42:30');
INSERT INTO `oauth_access_tokens` VALUES ('f448904793ac2e5e5a73833ea0abb76350bc7879cc2758f3e3fba237004cf2feb23bb77dd77c3b18', 1, 2, NULL, '[]', 0, '2019-06-24 13:43:03', '2019-06-24 13:43:03', '2019-07-09 13:43:03');
INSERT INTO `oauth_access_tokens` VALUES ('16cd5e8b8314db6b074e436b895659bc29b09468747d25e093b51d1321f5a27bbd63abb1895abef0', 1, 2, NULL, '[]', 0, '2019-06-24 13:43:03', '2019-06-24 13:43:03', '2019-07-09 13:43:03');
INSERT INTO `oauth_access_tokens` VALUES ('1a89894da4ff2387c886de003827603f7e496d9908e993e963e1748b1b7806db829c431945a80869', 1, 2, NULL, '[]', 0, '2019-06-24 13:43:04', '2019-06-24 13:43:04', '2019-07-09 13:43:04');
INSERT INTO `oauth_access_tokens` VALUES ('5f130bed350ac7b8812bf994d51296ae43bccc6d53eb67cbbecd23556ee424189bf5fe3ebd2d886f', 1, 2, NULL, '[]', 0, '2019-06-24 13:45:19', '2019-06-24 13:45:19', '2019-07-09 13:45:19');
INSERT INTO `oauth_access_tokens` VALUES ('69edc8acbc591c457fe024c18bfd8f92aeaf9597cb2324030560e6306764675bca13b3b4d1144928', 1, 2, NULL, '[]', 0, '2019-06-24 13:45:57', '2019-06-24 13:45:57', '2019-07-09 13:45:57');
INSERT INTO `oauth_access_tokens` VALUES ('4edae49e0c7161a5c92aab5dfb660c365688c6757c79bc98fdee0b6273b840b41d28dbdd1a733372', 1, 2, NULL, '[]', 0, '2019-06-24 13:48:07', '2019-06-24 13:48:07', '2019-07-09 13:48:07');
INSERT INTO `oauth_access_tokens` VALUES ('f17ccb5da5db3a648bb15485c1ed1ff493fb72e2e9c1fec7f488f703f6d95be18d24b6b3dd7bf7ab', 1, 2, NULL, '[]', 0, '2019-06-24 13:49:03', '2019-06-24 13:49:03', '2019-07-09 13:49:03');
INSERT INTO `oauth_access_tokens` VALUES ('9e71ef7146d6fd88c3ce773e5ff6f149d5c0b1a08b609bec291ffda12f8d123c00108504512dcd24', 1, 2, NULL, '[]', 0, '2019-06-24 13:49:59', '2019-06-24 13:49:59', '2019-07-09 13:49:59');
INSERT INTO `oauth_access_tokens` VALUES ('c0dd0f9bbf1b4d80073fda0b85cb0ef9592723f1bf9c7c62e92073185614ffdb539786a7e8ba10e9', 1, 2, NULL, '[]', 0, '2019-06-24 13:53:45', '2019-06-24 13:53:45', '2019-07-09 13:53:45');
INSERT INTO `oauth_access_tokens` VALUES ('773fe4ed60114fb47b8cce93599d9c5e0eab07c10fd603835afd54309e86947d1095d214a24115fa', 1, 2, NULL, '[]', 0, '2019-06-24 14:01:27', '2019-06-24 14:01:27', '2019-07-09 14:01:27');
INSERT INTO `oauth_access_tokens` VALUES ('c9e64f77ba5676bf8d788e6e645f8056be5eb02cdc4796dd22498f110c3fb82e36793a85aa5f945d', 1, 2, NULL, '[]', 0, '2019-06-24 14:01:56', '2019-06-24 14:01:56', '2019-07-09 14:01:56');
INSERT INTO `oauth_access_tokens` VALUES ('12049639288502d9060124fc1d5d82af343c0020a6de117954b5ca33ad5694c3e38a9833b2427440', 1, 2, NULL, '[]', 0, '2019-06-24 14:06:21', '2019-06-24 14:06:21', '2019-07-09 14:06:20');
INSERT INTO `oauth_access_tokens` VALUES ('8ceb4dfeb47a10f4f8962a4606a5d15bf5c12d3d9457e4890fe2f256d2a1a2e009394276f1fc422a', 1, 2, NULL, '[]', 0, '2019-06-24 14:07:57', '2019-06-24 14:07:57', '2019-07-09 14:07:57');
INSERT INTO `oauth_access_tokens` VALUES ('33438c1f5831089187be9e67e5cd396517e525cd284668004d078ac70c5c491025e7d91d56d5e003', 1, 2, NULL, '[]', 0, '2019-06-24 14:08:15', '2019-06-24 14:08:15', '2019-07-09 14:08:15');
INSERT INTO `oauth_access_tokens` VALUES ('5cc2ae90d3d7bc074ab9446e482e5a9ee508efebbda726bf693d5007d016d9aa7430fa7b7c930423', 1, 2, NULL, '[]', 0, '2019-06-24 14:08:54', '2019-06-24 14:08:54', '2019-07-09 14:08:54');
INSERT INTO `oauth_access_tokens` VALUES ('b86456f2f14f0de18c15fe86ee2cd39b6031b206a2ecb98961b6f431fba0a8b380067436252f099c', 1, 2, NULL, '[]', 0, '2019-06-24 14:11:55', '2019-06-24 14:11:55', '2019-07-09 14:11:55');
INSERT INTO `oauth_access_tokens` VALUES ('4c6c1dbb583ed16141eef81113da087bdfdd87d31512ff562e325a2832730454f859c680c1425687', 1, 2, NULL, '[]', 0, '2019-06-24 14:12:22', '2019-06-24 14:12:22', '2019-07-09 14:12:22');
INSERT INTO `oauth_access_tokens` VALUES ('78f898b4897ab22e171d169a3b34b93bbe1574d0800e236580509bfd762ca7048951ed59beda8bee', 1, 2, NULL, '[]', 0, '2019-06-24 14:12:33', '2019-06-24 14:12:33', '2019-07-09 14:12:33');
INSERT INTO `oauth_access_tokens` VALUES ('c75bde1ca558ad6c60a1f2ab4e7686342501fd5ca9364cde07a07fd4904ec2757bf218ac1be52cf7', 1, 2, NULL, '[]', 0, '2019-06-24 14:14:49', '2019-06-24 14:14:49', '2019-07-09 14:14:49');
INSERT INTO `oauth_access_tokens` VALUES ('591595b4ec8ba1b8f4ec8be9c31fd27e0a2910a37b0f7b845c69e73b699aac3616383146d55f5f6f', 1, 2, NULL, '[]', 0, '2019-06-24 14:15:14', '2019-06-24 14:15:14', '2019-07-09 14:15:14');
INSERT INTO `oauth_access_tokens` VALUES ('fee5a3172d5c009e7d1af2cc8ab0307f2f650fc8aef6662b5a8c80ab60a9d0bbfe6cca4d6dc57339', 1, 2, NULL, '[]', 0, '2019-06-24 14:15:30', '2019-06-24 14:15:30', '2019-07-09 14:15:30');
INSERT INTO `oauth_access_tokens` VALUES ('f6560beb6df36eef1c4e07d5bf45c9323b1fd1f914104156eef73a4c13306bb6d75a6aeff2f7f400', 1, 2, NULL, '[]', 0, '2019-06-24 14:16:10', '2019-06-24 14:16:10', '2019-07-09 14:16:10');
INSERT INTO `oauth_access_tokens` VALUES ('35b2d415e4b20f098275594c42ad1e5c0c1fbaf072440fbed0846c6b9c1d339ced52c2ea3c70914a', 1, 2, NULL, '[]', 0, '2019-06-24 14:16:36', '2019-06-24 14:16:36', '2019-07-09 14:16:36');
INSERT INTO `oauth_access_tokens` VALUES ('2ce8b0ecca89eb7ea5ec77e04b074eca329fc3f4a75e4a12258f0012f738abdbdbfe1b6a3114c9aa', 1, 2, NULL, '[]', 0, '2019-06-24 14:17:07', '2019-06-24 14:17:07', '2019-07-09 14:17:07');
INSERT INTO `oauth_access_tokens` VALUES ('242596aaea8c7b835b070d026663fcb915bfbc65f696360d61a304978200fa712122cd3dfb065509', 1, 2, NULL, '[]', 0, '2019-06-24 14:18:02', '2019-06-24 14:18:02', '2019-07-09 14:18:02');
INSERT INTO `oauth_access_tokens` VALUES ('1a20632ecea1fd790dfcf7940d20efe502865b33ee0a4ecb4a8efe8e5431abd32be5610394054b2c', 1, 2, NULL, '[]', 0, '2019-06-24 14:18:34', '2019-06-24 14:18:34', '2019-07-09 14:18:34');
INSERT INTO `oauth_access_tokens` VALUES ('fac7ca04c18d5ecc8f5655e9b178088c2af8709f4db0aca80f61631c1bb6ffc0c8af0b8a60c0683f', 1, 2, NULL, '[]', 0, '2019-06-24 14:20:55', '2019-06-24 14:20:55', '2019-07-09 14:20:55');
INSERT INTO `oauth_access_tokens` VALUES ('41c0ca6f2905f2b5724a420df538a8ed25f3082fbe48f7d591003e653ce8849cbf491eb4a0029ad6', 1, 2, NULL, '[]', 0, '2019-06-24 14:23:47', '2019-06-24 14:23:47', '2019-07-09 14:23:47');
INSERT INTO `oauth_access_tokens` VALUES ('98c61b30a4c270637a83ad4431684eccaeaf19b372ba676787a6bf72b981a862edfc5d8c572d9dd3', 1, 2, NULL, '[]', 0, '2019-06-24 14:24:51', '2019-06-24 14:24:51', '2019-07-09 14:24:51');
INSERT INTO `oauth_access_tokens` VALUES ('8b926a7ae5a3a2ad19ef372e1dd6e1dfe83dab0fd5baa4b9a91fb53a19a6e7825197e2f274253377', 1, 2, NULL, '[]', 0, '2019-06-24 14:25:02', '2019-06-24 14:25:02', '2019-07-09 14:25:02');
INSERT INTO `oauth_access_tokens` VALUES ('6f511252fb7b5548dc401766b09dd48958525c271de73e6e4967629e6a455fa109d4ce5fde52d245', 1, 2, NULL, '[]', 0, '2019-06-24 14:25:35', '2019-06-24 14:25:35', '2019-07-09 14:25:35');
INSERT INTO `oauth_access_tokens` VALUES ('1d3cc0cfb4b37b32aabd39902668e3c687c113dce27ce26330bb2d7fe5cfa71a2b524d79a1f046b0', 1, 2, NULL, '[]', 0, '2019-06-24 14:31:51', '2019-06-24 14:31:51', '2019-07-09 14:31:51');
INSERT INTO `oauth_access_tokens` VALUES ('ea44101ef565e4f8b669e053a2947da594af3c7665ba7ac74f335b5d26f9a893acd43a37d6de8acb', 1, 2, NULL, '[]', 0, '2019-06-24 14:32:22', '2019-06-24 14:32:22', '2019-07-09 14:32:22');
INSERT INTO `oauth_access_tokens` VALUES ('edeef3a9903d69cb1692e1337a28a2a6bef7cd4b83c5560a8150fe5d34ecbe25eeda0add17d8d10f', 1, 2, NULL, '[]', 0, '2019-06-24 14:33:13', '2019-06-24 14:33:13', '2019-07-09 14:33:13');
INSERT INTO `oauth_access_tokens` VALUES ('7d0ca72a89a0b18b89b2768b0d6e675954fb0d22ecb9909e33284971e30d58b8540cd3cfabab3bf5', 1, 2, NULL, '[]', 0, '2019-06-24 14:34:08', '2019-06-24 14:34:08', '2019-07-09 14:34:08');
INSERT INTO `oauth_access_tokens` VALUES ('786f2d9810b746deef714904d2153af9c532f28b4df5d14f2e9d858bdc412ab9240925309a3ab320', 1, 2, NULL, '[]', 0, '2019-06-24 14:34:14', '2019-06-24 14:34:14', '2019-07-09 14:34:14');
INSERT INTO `oauth_access_tokens` VALUES ('96a6e4a34c75e30ce76ad4d4918d3b7d1a22954e6d1e25c19876516279ec5af3ae38080342359897', 1, 2, NULL, '[]', 0, '2019-06-24 14:35:48', '2019-06-24 14:35:48', '2019-07-09 14:35:48');
INSERT INTO `oauth_access_tokens` VALUES ('03f5986938a416a246d1d42b9f69193c44f94c5f3d5a77823880f661203c4ee7741aab11cc3a3af3', 1, 2, NULL, '[]', 0, '2019-06-24 14:38:14', '2019-06-24 14:38:14', '2019-07-09 14:38:14');
INSERT INTO `oauth_access_tokens` VALUES ('1cb1dac5373855b68b7798d0ff473b47ccc4c5461d29f8c49bc8719327aa56b4a7ba2fefbf079d5f', 1, 2, NULL, '[]', 0, '2019-06-24 14:38:20', '2019-06-24 14:38:20', '2019-07-09 14:38:20');
INSERT INTO `oauth_access_tokens` VALUES ('3e9591faf6bc6cf874a2ce90fde9ae040e1dac1f49bc30523c065fa6ec055204ef4d78085a88fbab', 1, 2, NULL, '[]', 0, '2019-06-24 14:39:55', '2019-06-24 14:39:55', '2019-07-09 14:39:55');
INSERT INTO `oauth_access_tokens` VALUES ('97bbc58f43e867e7d0e54719adf79f5ccfa06d9a093fb64d527d56adef4b54bbbd64a27e662a79dd', 1, 2, NULL, '[]', 0, '2019-06-24 14:40:00', '2019-06-24 14:40:00', '2019-07-09 14:40:00');
INSERT INTO `oauth_access_tokens` VALUES ('65ff8c2a99033492aa72ff69a1eaf81e1ef75d81eb5da0ca14b688c10590fc5b25abb65db0b6b01b', 1, 2, NULL, '[]', 0, '2019-06-24 14:40:04', '2019-06-24 14:40:04', '2019-07-09 14:40:04');
INSERT INTO `oauth_access_tokens` VALUES ('b9ee8a7ee053b0c88799025ef0447dd1a580d3394a60e4696881341b084d4367d368f40243d6b0d4', 1, 2, NULL, '[]', 0, '2019-06-24 14:40:09', '2019-06-24 14:40:09', '2019-07-09 14:40:09');
INSERT INTO `oauth_access_tokens` VALUES ('6aa2e0efbdb10c63321478c1ed2bc44296c9cf22797041aa6b8e56a28798ae7754e28a817425ebf3', 1, 2, NULL, '[]', 0, '2019-06-24 14:40:12', '2019-06-24 14:40:12', '2019-07-09 14:40:12');
INSERT INTO `oauth_access_tokens` VALUES ('515d211ef6042c9ea9179c0684fe18d1cc2cb921a435f3e0bd7d0b45cdd4bc5639e04da5019f8c35', 1, 2, NULL, '[]', 0, '2019-06-24 14:40:41', '2019-06-24 14:40:41', '2019-07-09 14:40:41');
INSERT INTO `oauth_access_tokens` VALUES ('92bc1b9da908cf0e8168472bc421e7acdbdcba981c309f4850fb13cd4ed82b3198f6df760c85a664', 1, 2, NULL, '[]', 0, '2019-06-24 14:40:47', '2019-06-24 14:40:47', '2019-07-09 14:40:47');
INSERT INTO `oauth_access_tokens` VALUES ('33579b7065bb985d8c32b28faf44a8c4dd4519a2b1e96a5c18efb8884613e4bd5029b042861dd0ca', 1, 2, NULL, '[]', 0, '2019-06-24 14:41:23', '2019-06-24 14:41:23', '2019-07-09 14:41:23');
INSERT INTO `oauth_access_tokens` VALUES ('99a9d7c8b0eaf17a2a2f24ee3e98518037a1f3ecbf8912a3a2c16ff5015ea4956f2db71757f053a3', 1, 2, NULL, '[]', 0, '2019-06-24 14:41:48', '2019-06-24 14:41:48', '2019-07-09 14:41:48');
INSERT INTO `oauth_access_tokens` VALUES ('fdea6e49a7a135e6438a66342c026f837a1819f6612e522afc53a10e4e933a222ea47c961d4a5d81', 1, 2, NULL, '[]', 0, '2019-06-24 14:43:56', '2019-06-24 14:43:56', '2019-07-09 14:43:56');
INSERT INTO `oauth_access_tokens` VALUES ('c5309cd29d4ecb854f48fbb4d8379e177b203f447bb5469eeba70a7a42c838c59a68f317ac0fdc3a', 1, 2, NULL, '[]', 0, '2019-06-24 14:44:51', '2019-06-24 14:44:51', '2019-07-09 14:44:51');
INSERT INTO `oauth_access_tokens` VALUES ('b5b9271fa07b7ac3d527e090f7f76b344bc767f83dfec3575b017a22dbfe138d2b9080e81c7c00ea', 1, 2, NULL, '[]', 0, '2019-06-24 14:46:08', '2019-06-24 14:46:08', '2019-07-09 14:46:08');
INSERT INTO `oauth_access_tokens` VALUES ('72572ac59c83e1e2329b4143305413814ecfba1fa583736ef757659c49b318ebae328774eaa07624', 1, 2, NULL, '[]', 0, '2019-06-24 14:46:48', '2019-06-24 14:46:48', '2019-07-09 14:46:48');
INSERT INTO `oauth_access_tokens` VALUES ('8a36b0b1a718f4469fec990786a7cdc01ebec441d4d1e6be503791f708a35019e5dada854469688b', 1, 2, NULL, '[]', 0, '2019-06-24 14:47:19', '2019-06-24 14:47:19', '2019-07-09 14:47:19');
INSERT INTO `oauth_access_tokens` VALUES ('6720274bf3375b28cb8c0764ab832ef7b9789fb23d82efca9f967b449c7bcd986a8f6a739476cdcb', 1, 2, NULL, '[]', 0, '2019-06-24 14:48:38', '2019-06-24 14:48:38', '2019-07-09 14:48:38');
INSERT INTO `oauth_access_tokens` VALUES ('8701d079a44d32103a566bf6b117f7cb95f73544c5dc22725100f93b7c65c443e780b059f8ab4a46', 1, 2, NULL, '[]', 0, '2019-06-24 15:14:59', '2019-06-24 15:14:59', '2019-07-09 15:14:59');
INSERT INTO `oauth_access_tokens` VALUES ('99a261a29887153d87b9e249452e913577d836e38ac692a1bd945bdfb47204039d21e4e6ba23f3c5', 1, 2, NULL, '[]', 0, '2019-06-25 11:01:41', '2019-06-25 11:01:41', '2019-07-10 11:01:40');
INSERT INTO `oauth_access_tokens` VALUES ('9296e4a00986b6c9ba66673222db402c1fb4b12ed3d522a853de6187eb6f4ace43d23fb9c009db6e', 1, 2, NULL, '[]', 0, '2019-06-26 19:12:52', '2019-06-26 19:12:52', '2019-07-11 19:12:51');
INSERT INTO `oauth_access_tokens` VALUES ('0233ebf2e888d725186e983a97c80675bbab31ea91cb365c146b18e42c849a914da883cec355e68d', 1, 2, NULL, '[]', 0, '2019-06-27 19:01:58', '2019-06-27 19:01:58', '2019-07-12 19:01:58');
INSERT INTO `oauth_access_tokens` VALUES ('687e682dbc5fdb6674dc5dcdf2dd1d04062acaa3b7c5ce7b7922c99be98ceed7b6f9f0d2a9940de5', 1, 2, NULL, '[]', 0, '2019-06-28 10:24:01', '2019-06-28 10:24:01', '2019-07-13 10:24:00');
INSERT INTO `oauth_access_tokens` VALUES ('286fbe58113cd07116d37e6a744df94d4060f75fffdb4386694f86019f5134f5e114ac63c31c3d80', 1, 2, NULL, '[]', 0, '2019-06-28 15:49:32', '2019-06-28 15:49:32', '2019-07-13 15:49:32');
INSERT INTO `oauth_access_tokens` VALUES ('a645b81146e7e4f100bc43234ba0542153b97678917e8084d30dd045ec20fcc3018235deedda8ca1', 1, 2, NULL, '[]', 0, '2019-06-28 16:23:54', '2019-06-28 16:23:54', '2019-07-13 16:23:54');
INSERT INTO `oauth_access_tokens` VALUES ('b2d0735285085d3a321a2933c41fca70c5e9bdb6b69a957297e5685542953881401ccba19f5df227', 1, 2, NULL, '[]', 0, '2019-06-28 16:27:16', '2019-06-28 16:27:16', '2019-07-13 16:27:16');
INSERT INTO `oauth_access_tokens` VALUES ('35932b67053525002611d681e7e22977bb6881d5b204ab6b781f61a0a69ac0594f1ef2e2da9042ec', 1, 2, NULL, '[]', 0, '2019-06-28 16:37:05', '2019-06-28 16:37:05', '2019-07-13 16:37:05');
INSERT INTO `oauth_access_tokens` VALUES ('4e94373fe90cbc80027fd2b9e1e13d894fc6c6a3743ccad163f79e673a54172ae075181c050f8845', 1, 2, NULL, '[]', 0, '2019-06-28 16:39:20', '2019-06-28 16:39:20', '2019-07-13 16:39:20');
INSERT INTO `oauth_access_tokens` VALUES ('274f5193bed9c8506df01dea6bdb06eb6e08d95b33d927cd80bbdde715d32ea7bb76be5e2c2fee1e', 1, 2, NULL, '[]', 0, '2019-06-28 16:40:37', '2019-06-28 16:40:37', '2019-07-13 16:40:37');
INSERT INTO `oauth_access_tokens` VALUES ('1b8062832746ebe9d2660813226a011811f1b9bb2305970bbe5251bdf6b9eb465c4f5f33fc196049', 1, 2, NULL, '[]', 0, '2019-06-28 16:42:12', '2019-06-28 16:42:12', '2019-07-13 16:42:12');
INSERT INTO `oauth_access_tokens` VALUES ('d35af70fd2fa5b853a31ad662f6f4fded4428afe3d1f633858bb5bf1a0d4870bcc5d77316b419a8a', 1, 2, NULL, '[]', 0, '2019-06-28 16:50:46', '2019-06-28 16:50:46', '2019-07-13 16:50:46');
INSERT INTO `oauth_access_tokens` VALUES ('78fe0348ea4af8d6650ff3c6676ffc8f820312a38c14cf6e6e7808037fecb2fde58993ddaa6dee38', 1, 2, NULL, '[]', 0, '2019-06-28 16:52:39', '2019-06-28 16:52:39', '2019-07-13 16:52:39');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'DQhHGRXCxXKZqHVeITKOmq7Wq0C19dIasjXZ8hCM', 'http://localhost', 1, 0, 0, '2019-06-24 11:48:27', '2019-06-24 11:48:27');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'iSqQiR68eFhYnYQ1CwZJgCxdnUMNdqJiUcIHq4Gg', 'http://localhost', 0, 1, 0, '2019-06-24 11:48:27', '2019-06-24 11:48:27');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-06-24 11:48:27', '2019-06-24 11:48:27');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('092baebff052cc00bd42fb33b62b333f424b127f40603424d1299edd6a732d5ffeaa93ea32d3bddb', 'e9ff0cd2424019ce62bc9dad01e95f86240cebdae7fa8e7f976ddb5d547eebff56b1cd44eb3c0114', 0, '2019-07-24 11:54:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('965ee6b22cde24fec68b5702788c5c9dfefc9976344af8af7d0d5c666769b355a5e139202f9da8b7', 'a17c33d4790de1c4caa9a86499baf50233526d3c352d4371eea38d3249a840c2095919d484698ec4', 0, '2019-07-24 12:04:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('bccd418f5f122440c6425c321de2d3fcb7ba7fed0653eafefb8d1a663a7a5a45340bfaed15cda45b', '62dda3182fc9a2d25891743a5c2297e3b5712c21d914a81fbafab3de72ad62e9e6fd484b5fca707e', 0, '2019-07-24 12:13:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('d5fcb7fe5bd8427cdb7369bd01ca1bb6af8215e396d2c7c8188ca522b08bd39aa2c9db29847384ea', '8ee9c47009d339053e8dc2cf7130d57c5764cf812039397016f3bbda5bc73c5513dd9964ab990b06', 0, '2019-07-24 12:13:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('7191347b9dec09ec37f3dbda0023515fef7d9188af8167f05a10ec256100b3e4889d36513dff6c62', '48e2112628673a7b85f77e69c20b7c400d7c2e2337256997ba6efcf533ba98eaf9ae4cf25607e689', 0, '2019-07-24 12:14:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('5e6cd0fb6641c8cc1db36dd7cc735f6861ba60ea7f702de71db24ffedde7df6846980869566f75d0', '8c26635599d5bce9f4ed81c0b5e2950e6a8a87c10aef62285977c8c6418d28a417e419e7fe670a5e', 0, '2019-07-24 12:16:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('171f17939bea25b235236d97a031386c13836a82aeae857307461fc68044273d5065448ae2f58cc8', '7b47bce9e79ff1d1aedf82abae7255faeebd724a6de07272a3338519df6f5854271797042f3d3b24', 0, '2019-07-24 12:24:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('051dd017577def26a2b00f5731b1029ce1dfeca2736d88ad2c591873aeebaa530a03c064f8e4f54e', 'cec182abb4f4f1e5ac39ad8a9fe7b2a87e6600938c0eed4f1442c5c62159899874d15925fab32333', 0, '2019-07-24 12:25:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('f9e61dab2dbe2e742a433f3502662b7a4bf5e80985066fa2d1152ae58144ce82bb6ebe36d0ba9006', 'f7fbe21b2753549c37eb39fe03f278b5702d2a3a319300723a2aa9bb82d9ddf3c9302ea8a1afda50', 0, '2019-07-24 12:27:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('3c898c2ff68b2318404591bcd4d0df112dffa3863a4518003f8e8afdc303eb97c047924f1558daaf', 'ee9003fb4c058970b56fcef50f3b302d0f48ff30eae9831f83cd6b7cd8fab759fe3dd65572177749', 0, '2019-07-24 12:29:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('3d66c7b046fddfe9e2eb5e222427bdce948bb0ce93d9f59a0e8230d905e5d4926da948d1e38a2ef6', 'c10ddda0281136b1c56a5b4a966c0903025e79d86e9672f6a183f0acb7f1aa8e3d53cd43975e85a2', 0, '2019-07-24 12:40:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('827b768b5bcb66090bcd37efc1ddac8f1ab1e44abd985e1970ef2b564a489342f91282a24653f4f7', '7884e986f38766d59a92797d28856d8bff431369e5c9213cb7b723874795f9410486eb0c12e0e010', 0, '2019-07-24 12:51:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('b9611e4d68ede8957b9d30857264e9d524c55bd7dd4f2ec73b66f47f7ff7d556cbd241c0e733bf19', '53f2ad16bd74653c87b3379037894664595852f21425704b5e252b2cab5ef9141dcb4f0c9263df4a', 0, '2019-07-24 12:52:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('e7903f3400bfc445968db3981abd79c41a9214c421d74a1a7f5b987161d41bcaeb24d3425f69a214', 'fde5261a393f85302b64d40f83e4ce25a4163df83c10e9456fabde8bf93a632abf7d8d6d4bf83379', 0, '2019-07-24 12:52:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('41e4776c36028836041efdfad6a53e120d7bb3b1c86ce9ca27ce33e3c7efa12889e3914062f151b4', '6a57c6cb909f1f3966050cbba5c89c2d73bc5242f35e6d2ee71616eb55b4bd3b45de59a0bfcb3554', 0, '2019-07-24 13:04:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('f630ad735dc22195a38f99b0af57b8dcb19ab17de9f2e3bb6f1ad01c276fc6e6812f8ad7e3b8afe2', 'f7f6c84c4c5fccb5f68270afc29c1a4b8d06a8107cf092f6caa7dc72064c84eb4a41d9d7a80d28a7', 0, '2019-07-24 13:04:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('e1484c2a9ea7a684f052057a95da0ba878151b4d5e2f2ffc276d2ceabb9fad2e000e0625d1acfaad', 'ab9bf721c08e9186561e3dcdb210f9bcc511e9e81d054cc52c12146364c2281fa63dfe57c4fd23f0', 0, '2019-07-24 13:05:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('866c260f1c161acfeb2d5a82825e191a96e58aa5d6dafd8b440971bfae327453b688884dd6a497ea', '36fbc1a4cf1dce00328110d4487e39e7fb45e6394060a67f2d45c21a6a09ecafff58eb4b4385cb95', 0, '2019-07-24 13:07:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('9a02f154a48cfc67b21ac66a523331dae786588ec4754eef320eb1fdde748db980535605494b9dc2', '812ebcafd585f32e93ca9ddccbc3fcb6344d298ecf8b45e0311afad5237fbd411a35dc7b7deed5ce', 0, '2019-07-24 13:10:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('5edc400810bbaaf4784141d6c28ea526e90afaee86b2f4213c2d5d165d44c0fa33ab8ab655fe5de1', '405e180b6a0ac6148fa6022ebfc33429feae7c215fd130ae02afb76aa6f665b48b856ac2bc91911c', 0, '2019-07-24 13:12:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('71fe337b09b0f7469d4c9ebdada14f6207e4b49e820ded1098d262a483d4602c5e49de1a2f69240f', '2c6882bb042474240631dcf324535034d19c26822c7a3f3c629e84761eaf462c516f7985bde119ae', 0, '2019-07-24 13:19:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('785827e351e4e808d912f064ab96dd226c6089bbacba12cb9a118dd2af58453e217976ffc1cf0326', 'f945cde743941ffbf4bb54d91350a35aac8c6806fb9e6f4a2943e553746976b507fe28a884053275', 0, '2019-07-24 13:23:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('c6436842bc75385d74090c313c5259a3b4a4205588d2f981f66e93eee4316d26ecf3f7edc93b4233', '58abd998262d2973ae1f735c698a5b94798aed7e51980849e72339375b259ebfa3b2014a4a63655e', 0, '2019-07-24 13:31:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('17bcc986dc27ffbd91ce6dcf9a1dfc0a92d983ea29b38d6f2295bf6337492f20f77d7525adf9092f', '28befd258acfcb3cb8620919d7f1076f7117d509828066969f7a9193a5c323dff7a7eff4ac49619d', 0, '2019-07-24 13:31:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('5aaf64080a5b04ffb6b0198b70b8828d7ebac69c110ab43c9f1b9d19eeb20c2fdc581eb74e4d50a7', '646a1c47461c5406f11123611a9f18967b3e30165ab41c679985b52b528440a1dd77b69161cbb26c', 0, '2019-07-24 13:33:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('ae3c13ea106a201021391dc0f537315eafa7dccb518ba15b482699071be0c94b43b8a68944811ca0', '77f64cf3f161a98f550c7f2aea64aaf60b740d1627c0cfc310173684120a4d3688e0178a2bdefd80', 0, '2019-07-24 13:35:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('40ae7507e496e15aedb57d432489d8a53caf66b7d76ee43a40768a19102fbbdf1d21ed5682527e8a', '40c1bda135eac3feec54d9e265e4139f089bded6e38603c4f0b38217ec1eda42b71e0b209226c850', 0, '2019-07-24 13:37:17');
INSERT INTO `oauth_refresh_tokens` VALUES ('caf61f88939b0b45c4bba2f4fb430f4010e735f4e73b1c86efa1f88ee674738d90cf7d376a0ac374', 'b11639ffb07df38d223cbde8eae693b95e4e42dfb4125d8b99d5a531c027c98feca24a9d5d594b31', 0, '2019-07-24 13:40:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e4f82a88627bb9b308eb5b56e2e9ba6489e6aa9f6b80396ff480bb6f97a4f3c52115ffc9cae3ad6', 'b79c3551fb0ce55ded80f1151215cb34453197fb006a032d4e02a2d4c56cdb66a3808b7a6d029fb0', 0, '2019-07-24 13:40:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('5f7f5181f1164b8ac0e6ffe0d3a8529830656a635ec57f720fad001fcbbdfe6516dd883362716b53', '3fc8fa4fcc541baa2ee6449e85a433b2fae699cab177adb281299d60364e4eea5ba7e3150447adf4', 0, '2019-07-24 13:42:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('51cca7583a94fa5fea98c6a800ce4b5eb225782a6cdf1ec589f0b2794d3ca7c387e63ec4cbb47be6', 'ca42278dc7f352411662de10860c41be53b47fffad14f105ee04f6a5391ee6fcb08032613c7507b2', 0, '2019-07-24 13:42:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('3085a16da7f17648ea36eb621c0394a8de9919172f5f8a731e2499957efeae2ddf49942479f2b3a0', '0a04fdf8985f5e353ac30794e39db2bb3192aa062f2c19513109417e8e5832fe6bf43d29b64e1de4', 0, '2019-07-24 13:42:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('73b43364ea3296783ecef05eddc346d17e2b268064d16fed8659abb0b53c4251dd48e0c988b0d0f0', '8e201703301b190c0344e5385b65a3daa4987dce6715d5a0c041ac5d65c6e3fd12bb97fc61edc9cd', 0, '2019-07-24 13:42:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('9a6514435b0493c2752193065f7695e6a7dadb5dfff72862a051e930d8a914759a9c7e98446396d8', 'b0db36e404dba25d763394b87f4db0400e29dcb9c95e0aded43463c1d55357ab900a1a3503a1671b', 0, '2019-07-24 13:42:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('f312d4a68514f784326eaec485423dbf1cf4d9ccf220c2dc5bc6e1832f6f65f4b1c32686a0b10a2d', '173894179578766adbf70b0528dfacceeab173d2f9653e6892e4fc86d2f1bacbb690c42c29e2a7fd', 0, '2019-07-24 13:42:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('6e3d45c8dec5149467638b66f2e2e8ed5051a310417dcb27f5c2b02fc6e1f2f7aa7795b20bd4a05c', 'ab8e91395a80f0136241d65871f35cd32f3b7439a14ef9265a1f3ec4cca39a9a0ec0f26535f8956a', 0, '2019-07-24 13:42:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('1769be253fbdf73b91610c5a769e4297cc85fae06d8267524e0b5f7b09385567ed9b97a89bdaf1b0', '869cfd60ff4801f51a18d288563aee22768259067bfb6a8912d9cf9c8c6a9abcc95a6e649006412e', 0, '2019-07-24 13:42:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('d581e6c83256c1e9c8654b24843b2de3d715335af63163409b5702bf1a5e0ba7c29ca5c00abdb6e5', '1113b40388aefa9053ed81b81173d779f8f217822f711975b2fcd86950138aecbb837a1fbd13f038', 0, '2019-07-24 13:42:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('634b4bf57710f13c598a5a306b0fbac610ce93867ef234b982cd2b23ceffa2b05f895749195ac54e', 'f448904793ac2e5e5a73833ea0abb76350bc7879cc2758f3e3fba237004cf2feb23bb77dd77c3b18', 0, '2019-07-24 13:43:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('ff70ac475f530a1f15363b31039b073acf4e1d818911da3f809ac0fe3d0e44ea150609483e44328c', '16cd5e8b8314db6b074e436b895659bc29b09468747d25e093b51d1321f5a27bbd63abb1895abef0', 0, '2019-07-24 13:43:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('0c83d6ba6818408cda623d7b3f7639c824b0cb8e987fbe1e66bfce9fa8ad3f459bfd27bc0340e667', '1a89894da4ff2387c886de003827603f7e496d9908e993e963e1748b1b7806db829c431945a80869', 0, '2019-07-24 13:43:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('d81ad6fbb66bd853dec69be8b990f19cd02a53d52ac16210a40afab82550316d7552b3d980742111', '5f130bed350ac7b8812bf994d51296ae43bccc6d53eb67cbbecd23556ee424189bf5fe3ebd2d886f', 0, '2019-07-24 13:45:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('8dd9d85aa0d73879c65920a269cc7e7ffab804d5f40b405aab618f84bf7cc5b2360c1b4bde4b08ba', '69edc8acbc591c457fe024c18bfd8f92aeaf9597cb2324030560e6306764675bca13b3b4d1144928', 0, '2019-07-24 13:45:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('f9a2fa07d70f5196795b1168412c7a336f4a0458baae10a2a451c03934ba8869065496c47d6f02d5', '4edae49e0c7161a5c92aab5dfb660c365688c6757c79bc98fdee0b6273b840b41d28dbdd1a733372', 0, '2019-07-24 13:48:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('4ae320149d9266e2a8eacd88109ea42bb16b41a80f31890ffb6bcf7077674413de90036257182d2f', 'f17ccb5da5db3a648bb15485c1ed1ff493fb72e2e9c1fec7f488f703f6d95be18d24b6b3dd7bf7ab', 0, '2019-07-24 13:49:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('396c26b22342ae0452da2480ee27495aa4ddc4200e29fd0fd7ef83ea312f0bbc641492c8410afcc1', '9e71ef7146d6fd88c3ce773e5ff6f149d5c0b1a08b609bec291ffda12f8d123c00108504512dcd24', 0, '2019-07-24 13:49:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('a31ca452e667fdbf0c3155cb7011da9708421d69e1c18f12538b9194249111a6c39d470bf0482173', 'c0dd0f9bbf1b4d80073fda0b85cb0ef9592723f1bf9c7c62e92073185614ffdb539786a7e8ba10e9', 0, '2019-07-24 13:53:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('bd3c85f9557f991e64c5e06dcba0d66a3d0f3724a8c526c4c365f115aab33b3aadb59a00f3215cf1', '773fe4ed60114fb47b8cce93599d9c5e0eab07c10fd603835afd54309e86947d1095d214a24115fa', 0, '2019-07-24 14:01:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('85f46d20583c84eefec1d847f67d82db4001238d341da0d843cf40eea005397dfa3b0537178db7b6', 'c9e64f77ba5676bf8d788e6e645f8056be5eb02cdc4796dd22498f110c3fb82e36793a85aa5f945d', 0, '2019-07-24 14:01:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('a44136cd7e4769be56169311ac51aa3cd3ed8fd614103fc2cb6bb1f3a6bf4f9daaac5b91cac54d46', '12049639288502d9060124fc1d5d82af343c0020a6de117954b5ca33ad5694c3e38a9833b2427440', 0, '2019-07-24 14:06:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('b98fc77071bec932fc9a7cc39e52c70d0a8bca0fbe093a81fa8f3099c1dc784bf562eda85f9d1e85', '8ceb4dfeb47a10f4f8962a4606a5d15bf5c12d3d9457e4890fe2f256d2a1a2e009394276f1fc422a', 0, '2019-07-24 14:07:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('d2a61de14c74f93f8351bdec03f6bc2be83ec6b202b8c8f0e2ed1e06478988b3a75831cc8fdfc45e', '33438c1f5831089187be9e67e5cd396517e525cd284668004d078ac70c5c491025e7d91d56d5e003', 0, '2019-07-24 14:08:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('ea4b58a6ce83635b4c5c0496f82e2a5d411203110a4f6cbf9df72d7f1bd85f75077ffb9e2d3accfd', '5cc2ae90d3d7bc074ab9446e482e5a9ee508efebbda726bf693d5007d016d9aa7430fa7b7c930423', 0, '2019-07-24 14:08:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('abe0f7ddf2a35f5dd25daa364e884f5363be8900120eb929d11a085011297eb86fddfa2caadfa569', 'b86456f2f14f0de18c15fe86ee2cd39b6031b206a2ecb98961b6f431fba0a8b380067436252f099c', 0, '2019-07-24 14:11:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('8a60fea3d83123f0cc52416670d915badbc9ce5ee89cf0dfab360bc9864f5a27105390b49b4f2945', '4c6c1dbb583ed16141eef81113da087bdfdd87d31512ff562e325a2832730454f859c680c1425687', 0, '2019-07-24 14:12:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('b9d9835c200efe4b2ec930c1b73f47f46a910813978d6aa48192ac9938c9a7b229da1896214c7bca', '78f898b4897ab22e171d169a3b34b93bbe1574d0800e236580509bfd762ca7048951ed59beda8bee', 0, '2019-07-24 14:12:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('d6b82d2982c3afc0c41e1cb01f4085cfc61326b56522b36cd72407ed31bee29f8cad8188dcf29fc5', 'c75bde1ca558ad6c60a1f2ab4e7686342501fd5ca9364cde07a07fd4904ec2757bf218ac1be52cf7', 0, '2019-07-24 14:14:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('4bc1d5e66bc5980f5ca6df2ab9fcfba14e7830f111744b8a44bed7972a0f9d952bcc9bdd41caa06a', '591595b4ec8ba1b8f4ec8be9c31fd27e0a2910a37b0f7b845c69e73b699aac3616383146d55f5f6f', 0, '2019-07-24 14:15:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('b9846a6c55721a194b4f05ed31e10d1b265fe0a7a439ab077cb3b9b1ff6c4831687acc89f6f223e7', 'fee5a3172d5c009e7d1af2cc8ab0307f2f650fc8aef6662b5a8c80ab60a9d0bbfe6cca4d6dc57339', 0, '2019-07-24 14:15:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('ed4c5acc5450e170c1ee5bcab2ab9095938e054744354d2b24e610ef2eeb708dcdbb14ad70bef75c', 'f6560beb6df36eef1c4e07d5bf45c9323b1fd1f914104156eef73a4c13306bb6d75a6aeff2f7f400', 0, '2019-07-24 14:16:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('aa99bfe4cd68410bd8cc241774afed6aa84d9f5a2d4fe7f3ea020765363a462418d6beb22c299071', '35b2d415e4b20f098275594c42ad1e5c0c1fbaf072440fbed0846c6b9c1d339ced52c2ea3c70914a', 0, '2019-07-24 14:16:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('b4b6cc48b43d76b22f79f633cd7c702735015fea75aa1682fbf4f697edbc708e259726f31fd2026f', '2ce8b0ecca89eb7ea5ec77e04b074eca329fc3f4a75e4a12258f0012f738abdbdbfe1b6a3114c9aa', 0, '2019-07-24 14:17:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('35b1015dd4b496861e95eeeb76d28eee3134f6825c8489d5e4b5b48bf0e184f4a4b64eb823611a9d', '242596aaea8c7b835b070d026663fcb915bfbc65f696360d61a304978200fa712122cd3dfb065509', 0, '2019-07-24 14:18:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('ee37ae6c88e098c6163ab9681371b4318803ee0e577b4658fa7547f95145b056b911a87a1802206b', '1a20632ecea1fd790dfcf7940d20efe502865b33ee0a4ecb4a8efe8e5431abd32be5610394054b2c', 0, '2019-07-24 14:18:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('5bce52d0477eaefccf16a8f0da89edf7e58ad87c373209fb79f44f57116faf71d3218dfd95eabdcc', 'fac7ca04c18d5ecc8f5655e9b178088c2af8709f4db0aca80f61631c1bb6ffc0c8af0b8a60c0683f', 0, '2019-07-24 14:20:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('cddf68ad7dc4da5cf82ad3b066e54e3c5246494b41bed0f5ad8cceaf6704a3570ef6ce4bb39b4df2', '41c0ca6f2905f2b5724a420df538a8ed25f3082fbe48f7d591003e653ce8849cbf491eb4a0029ad6', 0, '2019-07-24 14:23:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('2178ae7c1e9734804e6b74ac370cf222d2369404192e15b0a30392f9978b2c21cfbef674af24e2ad', '98c61b30a4c270637a83ad4431684eccaeaf19b372ba676787a6bf72b981a862edfc5d8c572d9dd3', 0, '2019-07-24 14:24:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('9f03566a2c5208092a3d9f362ed6986dc3da6e6d6749590ecc5845f3769eb84098226a64879c440d', '8b926a7ae5a3a2ad19ef372e1dd6e1dfe83dab0fd5baa4b9a91fb53a19a6e7825197e2f274253377', 0, '2019-07-24 14:25:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('a346b1e6f02e914b139de1633db3641b49c285b8388eb79d400d4289cfeb3eb9a5912822595bd3b5', '6f511252fb7b5548dc401766b09dd48958525c271de73e6e4967629e6a455fa109d4ce5fde52d245', 0, '2019-07-24 14:25:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e73e0f1aeeb79dbd703e7bfa6001f2269c3340944e586b3cd8e159486518bf72682ebe820ece194', '1d3cc0cfb4b37b32aabd39902668e3c687c113dce27ce26330bb2d7fe5cfa71a2b524d79a1f046b0', 0, '2019-07-24 14:31:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('11524b84df4aa39de451e6d7a4c213e423afb1371cbde2b2745872b981cb1d6824ddeb9c618f81ea', 'ea44101ef565e4f8b669e053a2947da594af3c7665ba7ac74f335b5d26f9a893acd43a37d6de8acb', 0, '2019-07-24 14:32:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('d1e84db8c61436cdc666cf571467d11c5d765f612b7ef7fa23ec1f425317f0c5a845d9a7cbaf48fb', 'edeef3a9903d69cb1692e1337a28a2a6bef7cd4b83c5560a8150fe5d34ecbe25eeda0add17d8d10f', 0, '2019-07-24 14:33:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('0ca7e606d64445e23108137903ad054394ddd1035e2d3507a820967b3102f4e61ff4b529157067b3', '7d0ca72a89a0b18b89b2768b0d6e675954fb0d22ecb9909e33284971e30d58b8540cd3cfabab3bf5', 0, '2019-07-24 14:34:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('b31fe700465ba27c6ee52e3924f8059a7138b761d2c55251a1f1ac3a592946e4c61be56b8ed47217', '786f2d9810b746deef714904d2153af9c532f28b4df5d14f2e9d858bdc412ab9240925309a3ab320', 0, '2019-07-24 14:34:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('3fda127bd4fda748c3d9c24982b5d8e32b328a2bdac9f89a776492bc8690b3459cc1a311eb483e5f', '96a6e4a34c75e30ce76ad4d4918d3b7d1a22954e6d1e25c19876516279ec5af3ae38080342359897', 0, '2019-07-24 14:35:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('f31bb75f8855dfba51ec677405715b30ddb9d4cb87bb1155b9af3b52edf37ed561782eb8791dd544', '03f5986938a416a246d1d42b9f69193c44f94c5f3d5a77823880f661203c4ee7741aab11cc3a3af3', 0, '2019-07-24 14:38:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('bd0ff833ddeababef35948731dc4dffdd73d970c52ccdbd360808613f4d0c62456bcc7fdea3cdd40', '1cb1dac5373855b68b7798d0ff473b47ccc4c5461d29f8c49bc8719327aa56b4a7ba2fefbf079d5f', 0, '2019-07-24 14:38:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('7b2d56c483184f36819b16838b726caf35adeb47f81661e17475641d1f9b54b3507209bd196b29c4', '3e9591faf6bc6cf874a2ce90fde9ae040e1dac1f49bc30523c065fa6ec055204ef4d78085a88fbab', 0, '2019-07-24 14:39:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('a81526e7fed0915f8dc7a359a620333f17f81f8acedd6e72a5211d19cfefc6ae83556ebfe4271756', '97bbc58f43e867e7d0e54719adf79f5ccfa06d9a093fb64d527d56adef4b54bbbd64a27e662a79dd', 0, '2019-07-24 14:40:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('5d5f54b93e214ad74ecd970782a4b42b276edd31af3bc0491f0be6e4db2ae0ad2d57ae1109b29f9b', '65ff8c2a99033492aa72ff69a1eaf81e1ef75d81eb5da0ca14b688c10590fc5b25abb65db0b6b01b', 0, '2019-07-24 14:40:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2da490096bb25e33f5c2838f3e57fabeca4da00c0cffb801bfbbc548f5a99a17bd04d6e126ab812', 'b9ee8a7ee053b0c88799025ef0447dd1a580d3394a60e4696881341b084d4367d368f40243d6b0d4', 0, '2019-07-24 14:40:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('bc3d59e251e2b614327f04ea06d4e9401c9cfaeb39e5283143bb8f3c1e6ecaa42a4d60f4b6055191', '6aa2e0efbdb10c63321478c1ed2bc44296c9cf22797041aa6b8e56a28798ae7754e28a817425ebf3', 0, '2019-07-24 14:40:12');
INSERT INTO `oauth_refresh_tokens` VALUES ('227a2218566e35c540a5d56da91201785f33b73d722c5a1e7d8abea28bdf72cb0449c74490870618', '515d211ef6042c9ea9179c0684fe18d1cc2cb921a435f3e0bd7d0b45cdd4bc5639e04da5019f8c35', 0, '2019-07-24 14:40:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('829607ad44bb329ff29b6fbfc278ecf344ccc6f3b42d5058326a1f7c510b1aa972817591afff3ae7', '92bc1b9da908cf0e8168472bc421e7acdbdcba981c309f4850fb13cd4ed82b3198f6df760c85a664', 0, '2019-07-24 14:40:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('9ca64e5e021c2e0f1321171ccbe5867a8f2d28fb005716244cbcd16e6a9ec688b49ae220dfcc7678', '33579b7065bb985d8c32b28faf44a8c4dd4519a2b1e96a5c18efb8884613e4bd5029b042861dd0ca', 0, '2019-07-24 14:41:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('eac700225a69c55805c655ef331f9427597417412570c3e836913ac10f5002a1b3e2f53ee6cb2a4c', '99a9d7c8b0eaf17a2a2f24ee3e98518037a1f3ecbf8912a3a2c16ff5015ea4956f2db71757f053a3', 0, '2019-07-24 14:41:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('f37b69c5befa02f37f2768304c6463a7618dfefd5e836a5cc8e869f05d18d13aff44a172925a8094', 'fdea6e49a7a135e6438a66342c026f837a1819f6612e522afc53a10e4e933a222ea47c961d4a5d81', 0, '2019-07-24 14:43:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('719a5e70bee2dab86e850be28084cb9023781aca06deafeeedf6180b1bc6f64ec6f94b73a2756019', 'c5309cd29d4ecb854f48fbb4d8379e177b203f447bb5469eeba70a7a42c838c59a68f317ac0fdc3a', 0, '2019-07-24 14:44:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('5fef9c03bec7f8660dc52e005ebe9b8914c4484833a228c85a115c84375cb88a211a25ae717638df', 'b5b9271fa07b7ac3d527e090f7f76b344bc767f83dfec3575b017a22dbfe138d2b9080e81c7c00ea', 0, '2019-07-24 14:46:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('a91fd26695e21d8bce308b896fd0929c2f378973571539a929d363ee200008824c799a341d3153c9', '72572ac59c83e1e2329b4143305413814ecfba1fa583736ef757659c49b318ebae328774eaa07624', 0, '2019-07-24 14:46:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('4a47c024faac0655a35f75ee777c1b9ed7ddbc73274658de061f4be8e1b0cdda13d607306983a148', '8a36b0b1a718f4469fec990786a7cdc01ebec441d4d1e6be503791f708a35019e5dada854469688b', 0, '2019-07-24 14:47:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('040ff02a746d186a2b70b72cba9eaa640aa70f7b3d2a18ce4e6e69502e52dffde1c82c64ddc19a22', '6720274bf3375b28cb8c0764ab832ef7b9789fb23d82efca9f967b449c7bcd986a8f6a739476cdcb', 0, '2019-07-24 14:48:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('60e7ab42287bcf3351f934efaeeecf23863cc3b32d701e62420226af7e0a5af7a4973eeaa35047d6', '8701d079a44d32103a566bf6b117f7cb95f73544c5dc22725100f93b7c65c443e780b059f8ab4a46', 0, '2019-07-24 15:14:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('3f77b35f99e6cb5473ab1d56302818eacf6ca2b2635e8c62b866e48d530dffbf29deca4603c914aa', '99a261a29887153d87b9e249452e913577d836e38ac692a1bd945bdfb47204039d21e4e6ba23f3c5', 0, '2019-07-25 11:01:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2234aba6c0c44e496ee1b42008b20104053019ba5062ddade79e8ff72b8c9b308ba19a527d7a483', '9296e4a00986b6c9ba66673222db402c1fb4b12ed3d522a853de6187eb6f4ace43d23fb9c009db6e', 0, '2019-07-26 19:12:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('bc49641577f4fb2b75fb714007f20bdeaa3ee3a146b3a224b589e86d402278844a34751dbcce08f7', '0233ebf2e888d725186e983a97c80675bbab31ea91cb365c146b18e42c849a914da883cec355e68d', 0, '2019-07-27 19:01:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('39f312298993a7197fd5ea84619ebe59b572a3b8f14e33ed6d8f7ff7f9f695415e6fea310c4c2e91', '687e682dbc5fdb6674dc5dcdf2dd1d04062acaa3b7c5ce7b7922c99be98ceed7b6f9f0d2a9940de5', 0, '2019-07-28 10:24:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('4ea795aea81bd1e1abdf30ea7a74ae8a3ea045eb82463d22b7ed031daeaa600f116766dc52bf0487', '286fbe58113cd07116d37e6a744df94d4060f75fffdb4386694f86019f5134f5e114ac63c31c3d80', 0, '2019-07-28 15:49:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('8fbde8acc06b1e5a584958d50810fcc179d62070861a97fc5e0cccd476923203961d75b22b006065', 'a645b81146e7e4f100bc43234ba0542153b97678917e8084d30dd045ec20fcc3018235deedda8ca1', 0, '2019-07-28 16:23:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('1df3c41baeb80765f3a3f901340a82c1c394717f2d33a76c8b015bfebf035b3c4efdcdc0c0dadb18', 'b2d0735285085d3a321a2933c41fca70c5e9bdb6b69a957297e5685542953881401ccba19f5df227', 0, '2019-07-28 16:27:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('b875e857459ff8b6d16507dcf3baf07a5dc0ffad896807b0f159b92b22749a1149ab07b61e4d3240', '35932b67053525002611d681e7e22977bb6881d5b204ab6b781f61a0a69ac0594f1ef2e2da9042ec', 0, '2019-07-28 16:37:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('0a668b8f22afbcf849a571469076b3d1b4fc8ecc8e6b98b6206e12400b215d8d0e0a5606e42c9ed5', '4e94373fe90cbc80027fd2b9e1e13d894fc6c6a3743ccad163f79e673a54172ae075181c050f8845', 0, '2019-07-28 16:39:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('80b347579af209e3f2149aab788c62fa39937dea1cafb318233ca0e17ea3f78c047f22f6a36110fa', '274f5193bed9c8506df01dea6bdb06eb6e08d95b33d927cd80bbdde715d32ea7bb76be5e2c2fee1e', 0, '2019-07-28 16:40:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('963f4609fd717d1a21bda776aaf55f48b224b4ae4c5589e19d5a0984f4abb8f58096279d7bcad5af', '1b8062832746ebe9d2660813226a011811f1b9bb2305970bbe5251bdf6b9eb465c4f5f33fc196049', 0, '2019-07-28 16:42:12');
INSERT INTO `oauth_refresh_tokens` VALUES ('b73e7e6adbb72d5eedf8e1986da34dd21fbcfecc46a6e3119772cae0ddd4b4c5ab4f1734f776fb26', 'd35af70fd2fa5b853a31ad662f6f4fded4428afe3d1f633858bb5bf1a0d4870bcc5d77316b419a8a', 0, '2019-07-28 16:50:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('2c89125a30be2947d3fec44168074c7a8ba6bb3b523db2d9a71d9bfa6df31a730451e36c9a0aa9ae', '78fe0348ea4af8d6650ff3c6676ffc8f820312a38c14cf6e6e7808037fecb2fde58993ddaa6dee38', 0, '2019-07-28 16:52:39');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
