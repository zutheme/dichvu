/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100136
 Source Host           : localhost:3306
 Source Schema         : dbdichvu

 Target Server Type    : MySQL
 Target Server Version : 100136
 File Encoding         : 65001

 Date: 13/03/2020 23:01:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE INDEX `cache_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `idcategory` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `namecat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcattype` int(11) UNSIGNED NULL DEFAULT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `guid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pathroute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `trash` tinyint(5) UNSIGNED NULL DEFAULT 0,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcategory`) USING BTREE,
  INDEX `fr_cattype`(`idcattype`) USING BTREE,
  CONSTRAINT `fr_cattype` FOREIGN KEY (`idcattype`) REFERENCES `category_types` (`idcattype`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, NULL, 'promotion-reg', 1, 0, NULL, NULL, NULL, 0, '2019-04-17 08:49:08', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (2, NULL, 'localhost', 2, 0, NULL, NULL, NULL, 0, '2019-04-17 08:50:18', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (3, NULL, 'thammyvienthienkhue.vn', 2, 0, NULL, NULL, NULL, 0, '2019-04-17 10:35:14', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (4, NULL, 'Tương tác', 3, 0, NULL, NULL, NULL, 0, '2019-04-17 11:43:13', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (5, NULL, 'cuocthigiambeo.thammyvienthienkhue.vn', 2, 0, NULL, NULL, NULL, 0, '2019-05-15 16:11:49', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (6, NULL, 'Trị nám tàn nhang', 4, 0, NULL, NULL, NULL, 0, '2019-05-23 17:08:10', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (9, NULL, 'Trẻ hóa xóa nhăn', 4, 0, NULL, NULL, NULL, 0, '2019-05-24 10:41:11', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (10, NULL, 'Xóa nhăn', 4, 0, NULL, NULL, NULL, 0, '2019-05-24 10:43:06', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (11, 'order', 'Đơn hàng', 5, 0, NULL, NULL, NULL, 0, '2019-06-11 11:57:54', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (12, 'process', 'Xử lý', 5, 0, NULL, NULL, NULL, 0, '2019-06-11 11:58:28', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (13, 'produce', 'Sản xuất', 5, 0, NULL, NULL, NULL, 0, '2019-06-11 11:59:25', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (14, 'transfer', 'Vận chuyển', 5, 0, NULL, NULL, NULL, 0, '2019-06-11 11:59:38', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (15, 'post', 'Giao hàng', 5, 0, NULL, NULL, NULL, 0, '2019-06-11 12:01:00', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (17, NULL, 'Trị sẹo', 4, 0, NULL, NULL, NULL, 0, '2019-07-08 17:25:44', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (24, NULL, 'Thẩm mỹ nội khoa', 4, 0, NULL, NULL, NULL, 0, '2019-07-08 22:02:32', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (28, NULL, 'Giảm béo', 4, 0, NULL, NULL, NULL, 0, '2019-07-14 21:50:28', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (29, NULL, 'Chăm sóc spa', 4, 0, NULL, NULL, NULL, 0, '2019-07-14 21:57:55', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (30, NULL, 'mgk.edu.vn', 2, 0, NULL, NULL, NULL, 0, '2019-08-01 14:59:17', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (31, 'import', 'Nhập hàng', 5, 0, NULL, '', NULL, 0, '2019-08-02 10:08:41', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (32, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '2019-08-24 13:49:20', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (33, NULL, 'weekcare', 4, 29, NULL, NULL, NULL, 0, '2019-10-12 11:33:55', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (34, NULL, 'Cơ sở TP Hồ Chí Minh', 7, 0, NULL, NULL, NULL, 0, '2019-10-23 16:56:06', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (35, NULL, 'dailycare', 4, 29, NULL, NULL, NULL, 0, '2020-02-04 11:19:38', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (36, NULL, 'Quản lý khách hàng', 9, 0, NULL, NULL, NULL, 0, '2020-02-07 09:23:20', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (37, NULL, 'Quản lý sản phẩm', 9, NULL, NULL, NULL, '#', 0, '2020-02-07 09:23:45', '2020-03-13 16:35:40');
INSERT INTO `categories` VALUES (38, NULL, 'Quản lý nội dung', 9, 0, NULL, NULL, NULL, 0, '2020-02-07 09:24:05', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (39, NULL, 'Nhân sự', 9, 0, NULL, NULL, NULL, 0, '2020-02-07 09:24:24', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (40, NULL, 'Sản phẩm', 9, 37, NULL, NULL, '#', 0, '2020-02-07 09:26:41', '2020-03-13 16:39:54');
INSERT INTO `categories` VALUES (41, NULL, 'Chuyên mục', 9, 40, NULL, NULL, 'admin/categoryby/product', 0, '2020-02-07 09:27:35', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (42, NULL, 'Liệt kê', 9, 40, NULL, NULL, 'admin/product', 0, '2020-02-07 09:28:51', '2020-03-13 17:10:43');
INSERT INTO `categories` VALUES (43, NULL, 'thienkhue', 9, 36, NULL, NULL, '/admin/customerreg/listcustomerbycat/3/1/0', 0, '2020-02-09 17:01:20', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (44, NULL, 'mgk.edu.vn', 9, 36, NULL, NULL, '/admin/customerreg/listcustomerbycat/30/1/0', 0, '2020-02-09 17:08:18', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (45, NULL, 'Tổng hợp', 9, 0, NULL, NULL, NULL, 0, '2020-02-09 17:32:12', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (46, NULL, 'Hệ thống', 9, 0, NULL, NULL, NULL, 0, '2020-02-25 17:06:41', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (47, NULL, 'Phân quyền', 9, 46, NULL, NULL, NULL, 0, '2020-02-25 17:23:46', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (48, NULL, 'Vai trò', 9, 47, NULL, NULL, 'admin/roles', 0, '2020-02-25 17:29:46', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (49, NULL, 'Lệnh thực thi', 9, 47, NULL, NULL, 'admin/perm_command', 0, '2020-02-28 15:43:00', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (50, NULL, 'Danh sách quyền', 9, 47, NULL, NULL, 'admin/permission', 0, '2020-02-28 16:15:43', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (51, NULL, 'Cấp quyền cho nhóm', 9, 47, NULL, NULL, 'admin/impperm', 0, '2020-02-28 16:16:30', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (52, NULL, 'Cấp quyền người dùng', 9, 47, NULL, NULL, 'admin/grantperm', 0, '2020-02-28 16:17:02', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (53, NULL, 'Quản lý người dùng', 9, 47, NULL, NULL, 'admin/aduser', 0, '2020-02-28 16:27:45', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (54, NULL, 'Chuyên mục quyền', 9, 47, NULL, NULL, 'admin/categoryby/dashboard', 0, '2020-02-28 16:28:20', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (55, NULL, 'Loại nội dung', 9, 46, NULL, NULL, NULL, 0, '2020-03-06 17:03:40', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (56, NULL, 'Kiểu chuyên mục', 9, 55, NULL, NULL, 'admin/cattype', 0, '2020-03-06 17:04:27', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (57, NULL, 'Kiểu nội dung', 9, 55, NULL, NULL, 'admin/posttype', 0, '2020-03-06 17:06:08', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (58, NULL, 'Kiểu trạng thái', 9, 55, NULL, NULL, 'admin/statustype', 0, '2020-03-06 17:06:39', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (59, NULL, 'Tạo mới role', 9, 47, NULL, NULL, 'admin/roles/create', 0, '2020-03-06 17:25:23', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (60, NULL, 'Enable create new permission', 9, 47, NULL, NULL, 'admin/permission/create', 0, '2020-03-10 12:52:28', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (61, NULL, 'Enable grant permission for role', 9, 47, NULL, NULL, 'admin/impperm/create', 0, '2020-03-10 14:44:24', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (63, NULL, 'enable grant user into role', 9, 47, NULL, NULL, 'admin/grantperm/create', 0, '2020-03-10 16:59:00', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (64, NULL, 'Create new user', 9, 47, NULL, NULL, 'admin/aduser/create', 0, '2020-03-11 08:31:18', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (65, NULL, 'Create new category', 9, 47, NULL, NULL, 'admin/category/createby/dashboard', 0, '2020-03-11 09:18:36', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (66, NULL, 'Enable create category type', 9, 47, NULL, NULL, 'admin/cattype/create', 0, '2020-03-11 14:08:33', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (67, NULL, 'Create new status type', 9, 47, NULL, NULL, 'admin/statustype/create', 0, '2020-03-11 14:20:16', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (68, NULL, 'Create new post type', 9, 47, NULL, NULL, 'admin/posttype/create', 0, '2020-03-12 09:13:51', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (69, NULL, 'Edit user', 9, 47, NULL, NULL, 'admin/aduser/0/edit', 0, '2020-03-12 12:32:34', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (70, NULL, 'Create new command', 9, 47, NULL, NULL, 'admin/perm_command/create', 0, '2020-03-12 15:37:33', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (71, NULL, 'Delete user', 9, 47, NULL, NULL, 'admin/aduser/0', 0, '2020-03-12 15:50:15', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (72, NULL, 'Edit category', 9, 47, NULL, NULL, 'admin/category/editbycatetype/0/0', 0, '2020-03-12 17:25:00', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (73, NULL, 'Edit role', 9, 47, NULL, NULL, 'admin/roles/0/edit', 0, '2020-03-13 14:00:12', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (74, NULL, 'delete role', 9, 47, NULL, NULL, 'admin/roles/0', 0, '2020-03-13 14:02:12', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (75, NULL, 'Edit command', 9, 47, NULL, NULL, 'admin/perm_command/1/edit', 0, '2020-03-13 14:16:56', '2020-03-13 14:56:13');
INSERT INTO `categories` VALUES (76, NULL, 'Edit permission', 9, 47, NULL, NULL, 'admin/permission/0/edit', 0, '2020-03-13 16:47:04', '2020-03-13 16:47:04');

-- ----------------------------
-- Table structure for category_types
-- ----------------------------
DROP TABLE IF EXISTS `category_types`;
CREATE TABLE `category_types`  (
  `idcattype` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catnametype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcattype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category_types
-- ----------------------------
INSERT INTO `category_types` VALUES (1, 'post', '2019-02-27 10:36:11', '2019-02-27 10:36:11');
INSERT INTO `category_types` VALUES (2, 'website', '2019-02-27 10:53:53', '2019-02-27 10:53:53');
INSERT INTO `category_types` VALUES (3, 'interact', '2019-04-13 08:40:17', '2019-04-13 08:40:17');
INSERT INTO `category_types` VALUES (4, 'product', '2019-05-23 16:06:55', '2019-05-23 16:06:55');
INSERT INTO `category_types` VALUES (5, 'store', '2019-06-11 10:15:05', '2019-06-11 10:15:05');
INSERT INTO `category_types` VALUES (6, 'Link', '2019-07-09 15:48:25', '2019-07-09 15:48:25');
INSERT INTO `category_types` VALUES (7, 'department', '2019-10-14 16:09:26', '2019-10-14 16:09:26');
INSERT INTO `category_types` VALUES (8, 'role', '2019-10-15 13:50:08', '2019-10-15 13:50:08');
INSERT INTO `category_types` VALUES (9, 'dashboard', '2020-02-07 09:13:33', '2020-02-07 09:13:33');

-- ----------------------------
-- Table structure for catehasproduct
-- ----------------------------
DROP TABLE IF EXISTS `catehasproduct`;
CREATE TABLE `catehasproduct`  (
  `idcateproduct` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `idcategory` int(11) UNSIGNED NULL DEFAULT NULL,
  `checked` bit(1) NULL DEFAULT b'1',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcateproduct`) USING BTREE,
  INDEX `fr_cat_belong_categories`(`idcategory`) USING BTREE,
  INDEX `fr_cat_product`(`idproduct`) USING BTREE,
  CONSTRAINT `fr_cat_belong_categories` FOREIGN KEY (`idcategory`) REFERENCES `categories` (`idcategory`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_cat_product` FOREIGN KEY (`idproduct`) REFERENCES `products` (`idproduct`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of catehasproduct
-- ----------------------------
INSERT INTO `catehasproduct` VALUES (1, 1, 6, b'1', '2019-08-29 15:26:05', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (2, 2, 6, b'1', '2019-08-29 15:29:34', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (3, 3, 6, b'1', '2019-08-29 21:48:23', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (4, 4, 6, b'1', '2019-08-29 21:56:45', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (5, 5, 6, b'1', '2019-08-30 08:53:07', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (6, 6, 6, b'1', '2019-08-30 09:22:06', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (7, 7, 6, b'1', '2019-08-30 09:27:41', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (8, 8, 6, b'1', '2019-08-31 15:18:08', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (9, 9, 6, b'1', '2019-08-31 15:20:25', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (10, 10, 6, b'1', '2019-08-31 15:22:37', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (11, 11, 6, b'1', '2019-08-31 15:24:43', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (12, 12, 6, b'1', '2019-08-31 15:26:43', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (13, 13, 6, b'1', '2019-08-31 15:28:22', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (14, 14, 6, b'1', '2019-08-31 15:30:10', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (15, 15, 6, b'1', '2019-08-31 15:31:24', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (16, 16, 6, b'1', '2019-08-31 15:32:57', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (17, 17, 6, b'1', '2019-08-31 15:34:25', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (18, 18, 6, b'1', '2019-09-09 11:21:24', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (19, 19, 6, b'1', '2019-09-09 11:27:47', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (20, 20, 6, b'1', '2019-09-09 11:34:08', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (21, 21, 6, b'1', '2019-09-09 11:47:58', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (22, 22, 6, b'1', '2019-09-09 11:50:34', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (23, 23, 6, b'1', '2019-09-13 23:04:01', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (24, 24, 6, b'1', '2019-09-13 23:06:05', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (25, 25, 6, b'1', '2019-09-13 23:08:17', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (26, 26, 6, b'1', '2019-09-13 23:12:06', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (27, 27, 6, b'0', '2019-09-13 23:14:08', '2020-02-04 16:21:45');
INSERT INTO `catehasproduct` VALUES (28, 28, 9, b'1', '2019-09-15 16:31:04', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (29, 29, 6, b'1', '2019-09-20 15:58:52', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (30, 30, 9, b'1', '2019-09-28 15:30:28', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (31, 31, 6, b'1', '2019-10-01 12:36:46', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (32, 32, 9, b'1', '2019-10-01 13:53:51', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (33, 33, 9, b'1', '2019-10-01 15:56:56', '2020-02-03 23:08:43');
INSERT INTO `catehasproduct` VALUES (34, 34, 9, b'1', '2019-10-01 15:59:09', '2020-03-13 22:35:28');
INSERT INTO `catehasproduct` VALUES (35, 32, 6, b'0', '2020-01-31 10:36:05', '2020-02-05 09:41:34');
INSERT INTO `catehasproduct` VALUES (41, 34, 6, b'0', '2020-02-03 23:59:57', '2020-02-04 11:27:30');
INSERT INTO `catehasproduct` VALUES (42, 34, 28, b'1', '2020-02-04 09:43:55', '2020-03-13 22:36:37');
INSERT INTO `catehasproduct` VALUES (43, 34, 33, b'1', '2020-02-04 10:16:45', '2020-03-13 22:33:58');
INSERT INTO `catehasproduct` VALUES (44, 34, 35, b'0', '2020-02-04 11:21:43', '2020-03-13 22:35:23');
INSERT INTO `catehasproduct` VALUES (45, 34, 10, b'0', '2020-02-04 11:22:31', '2020-03-13 22:36:50');
INSERT INTO `catehasproduct` VALUES (46, 34, 29, b'0', '2020-02-04 11:24:15', '2020-03-13 22:35:22');
INSERT INTO `catehasproduct` VALUES (47, 34, 17, b'0', '2020-02-04 11:26:14', '2020-02-04 11:27:32');
INSERT INTO `catehasproduct` VALUES (48, 27, 9, b'1', '2020-02-04 16:21:46', '2020-02-04 16:21:46');
INSERT INTO `catehasproduct` VALUES (49, 34, 24, b'1', '2020-03-13 22:36:33', '2020-03-13 22:36:33');
INSERT INTO `catehasproduct` VALUES (50, 34, 9, b'1', '2020-03-13 22:36:49', '2020-03-13 22:36:49');

-- ----------------------------
-- Table structure for city_town
-- ----------------------------
DROP TABLE IF EXISTS `city_town`;
CREATE TABLE `city_town`  (
  `idcitytown` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namecitytown` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idprovince` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcitytown`) USING BTREE,
  UNIQUE INDEX `city_town_namecitytown_unique`(`namecitytown`) USING BTREE,
  INDEX `fr_citytown_province`(`idprovince`) USING BTREE,
  CONSTRAINT `fr_citytown_province` FOREIGN KEY (`idprovince`) REFERENCES `province` (`idprovince`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of city_town
-- ----------------------------
INSERT INTO `city_town` VALUES (1, 'TP Hồ Chí Minh', 1, '2019-06-27 09:21:40', '2019-06-27 09:29:51');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `idcolor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcolor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, 'Trắng', NULL, NULL);
INSERT INTO `color` VALUES (2, 'Vàng', NULL, NULL);

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `idcountry` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namecountry` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcontinent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcountry`) USING BTREE,
  UNIQUE INDEX `country_namecountry_unique`(`namecountry`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES (1, 'Việt nam', NULL, '2019-06-27 09:19:27', '2019-06-27 09:19:48');

-- ----------------------------
-- Table structure for cross_product
-- ----------------------------
DROP TABLE IF EXISTS `cross_product`;
CREATE TABLE `cross_product`  (
  `idcrossproduct` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `idcrosstype` int(10) UNSIGNED NULL DEFAULT NULL,
  `idproduct_cross` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcrossproduct`) USING BTREE,
  INDEX `fr_product`(`idproduct`) USING BTREE,
  INDEX `fr_crosstype`(`idcrosstype`) USING BTREE,
  INDEX `fr_crossproduct`(`idproduct_cross`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cross_product
-- ----------------------------
INSERT INTO `cross_product` VALUES (1, 1, 1, 2, '2019-08-29 15:29:34', '2019-08-29 15:29:34');
INSERT INTO `cross_product` VALUES (2, 1, 1, 4, '2019-08-29 21:56:45', '2019-08-29 21:56:45');
INSERT INTO `cross_product` VALUES (3, 1, 1, 5, '2019-08-30 08:53:07', '2019-08-30 08:53:07');
INSERT INTO `cross_product` VALUES (4, 1, 2, 6, '2019-08-30 09:22:06', '2019-08-30 09:22:06');
INSERT INTO `cross_product` VALUES (5, 1, 2, 7, '2019-08-30 09:27:42', '2019-08-30 09:27:42');
INSERT INTO `cross_product` VALUES (6, 8, 1, 9, '2019-08-31 15:20:25', '2019-08-31 15:20:25');
INSERT INTO `cross_product` VALUES (7, 8, 1, 10, '2019-08-31 15:22:37', '2019-08-31 15:22:37');
INSERT INTO `cross_product` VALUES (8, 8, 1, 11, '2019-08-31 15:24:43', '2019-08-31 15:24:43');
INSERT INTO `cross_product` VALUES (9, 12, 1, 13, '2019-08-31 15:28:22', '2019-08-31 15:28:22');
INSERT INTO `cross_product` VALUES (10, 12, 1, 14, '2019-08-31 15:30:10', '2019-08-31 15:30:10');
INSERT INTO `cross_product` VALUES (11, 15, 1, 16, '2019-08-31 15:32:57', '2019-08-31 15:32:57');
INSERT INTO `cross_product` VALUES (12, 15, 1, 17, '2019-08-31 15:34:25', '2019-08-31 15:34:25');

-- ----------------------------
-- Table structure for cross_type
-- ----------------------------
DROP TABLE IF EXISTS `cross_type`;
CREATE TABLE `cross_type`  (
  `idcrosstype` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namecross` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcrosstype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cross_type
-- ----------------------------
INSERT INTO `cross_type` VALUES (1, 'combo', NULL, '2019-08-23 15:31:09', '2019-08-23 15:31:09');
INSERT INTO `cross_type` VALUES (2, 'gift', NULL, '2019-08-23 15:31:24', '2019-08-23 15:31:24');
INSERT INTO `cross_type` VALUES (3, 'relative', NULL, '2019-08-24 11:27:17', '2019-08-24 11:27:17');
INSERT INTO `cross_type` VALUES (4, 'promotion', NULL, '2019-09-14 10:37:47', '2019-09-14 10:37:47');

-- ----------------------------
-- Table structure for depart_employees
-- ----------------------------
DROP TABLE IF EXISTS `depart_employees`;
CREATE TABLE `depart_employees`  (
  `iddepart_employee` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `iddepart` int(11) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`iddepart_employee`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of depart_employees
-- ----------------------------
INSERT INTO `depart_employees` VALUES (1, 2, 2, '2019-02-27 10:14:16', '2019-02-27 10:14:16');
INSERT INTO `depart_employees` VALUES (2, 3, 3, '2019-05-05 21:38:59', '2019-05-05 21:38:59');
INSERT INTO `depart_employees` VALUES (7, 12, 3, '2019-05-07 22:47:21', '2019-05-07 22:47:21');
INSERT INTO `depart_employees` VALUES (8, 13, 3, '2019-05-08 22:05:35', '2019-05-08 22:05:35');
INSERT INTO `depart_employees` VALUES (9, 14, 3, '2019-05-08 22:11:57', '2019-05-08 22:11:57');
INSERT INTO `depart_employees` VALUES (10, 15, 3, '2019-05-08 22:13:47', '2019-05-08 22:13:47');
INSERT INTO `depart_employees` VALUES (11, 16, 8, '2019-05-17 09:36:04', '2019-05-17 09:36:04');
INSERT INTO `depart_employees` VALUES (12, 17, 6, '2019-05-17 09:36:49', '2019-05-17 09:36:49');
INSERT INTO `depart_employees` VALUES (13, 18, 4, '2019-05-17 09:39:23', '2019-05-17 09:39:23');
INSERT INTO `depart_employees` VALUES (14, 23, 3, '2019-08-01 16:40:26', '2019-08-01 16:40:26');
INSERT INTO `depart_employees` VALUES (15, 24, 3, '2019-08-01 16:49:22', '2019-08-01 16:49:22');
INSERT INTO `depart_employees` VALUES (16, 25, 3, '2019-08-01 16:49:58', '2019-08-01 16:49:58');
INSERT INTO `depart_employees` VALUES (17, 26, 3, '2019-08-01 16:50:55', '2019-08-01 16:50:55');
INSERT INTO `depart_employees` VALUES (18, 27, 3, '2019-08-01 16:51:50', '2019-08-01 16:51:50');
INSERT INTO `depart_employees` VALUES (19, 28, 3, '2019-08-01 16:56:43', '2019-08-01 16:56:43');
INSERT INTO `depart_employees` VALUES (20, 29, 3, '2019-08-01 17:50:50', '2019-08-01 17:50:50');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `iddepart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namedepart` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`iddepart`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'Marketing', NULL, '2019-02-27 09:15:12', '2019-02-27 09:15:12');
INSERT INTO `departments` VALUES (2, 'IT', 1, '2019-02-27 09:15:25', '2019-02-27 09:15:25');
INSERT INTO `departments` VALUES (3, 'CSKH', 1, '2019-05-05 21:37:58', '2019-05-05 21:37:58');
INSERT INTO `departments` VALUES (4, 'Digital', 1, '2019-05-17 09:31:35', '2019-05-17 09:31:35');
INSERT INTO `departments` VALUES (5, 'Bình Dương', NULL, '2019-05-17 09:32:54', '2019-05-17 09:33:04');
INSERT INTO `departments` VALUES (6, 'Lể Tân', 5, '2019-05-17 09:33:26', '2019-05-17 09:33:50');
INSERT INTO `departments` VALUES (7, 'Đồng Nai', NULL, '2019-05-17 09:34:04', '2019-05-17 09:34:04');
INSERT INTO `departments` VALUES (8, 'Lể Tân', 7, '2019-05-17 09:34:17', '2019-05-17 09:34:17');

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district`  (
  `iddistrict` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namedist` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcitytown` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`iddistrict`) USING BTREE,
  INDEX `fr_citytown_district`(`idcitytown`) USING BTREE,
  CONSTRAINT `fr_citytown_district` FOREIGN KEY (`idcitytown`) REFERENCES `city_town` (`idcitytown`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES (1, 'Quận 1', 1, '2019-06-27 09:23:16', '2019-06-27 09:23:16');
INSERT INTO `district` VALUES (2, 'Quận 2', 1, '2019-06-27 09:23:33', '2019-06-27 09:23:33');
INSERT INTO `district` VALUES (3, 'Quận 3', 1, '2019-06-27 09:23:42', '2019-06-27 09:23:42');
INSERT INTO `district` VALUES (4, 'Quận 4', 1, '2019-06-27 09:23:52', '2019-06-27 09:23:52');
INSERT INTO `district` VALUES (5, 'Quận 5', 1, '2019-06-27 09:24:03', '2019-06-27 09:24:03');
INSERT INTO `district` VALUES (6, 'Quận 6', 1, '2019-06-27 09:24:14', '2019-06-27 09:24:14');
INSERT INTO `district` VALUES (7, 'Quận 7', 1, '2019-06-27 09:24:22', '2019-06-27 09:24:22');
INSERT INTO `district` VALUES (8, 'Quận 8', 1, '2019-06-27 09:24:34', '2019-06-27 09:24:34');
INSERT INTO `district` VALUES (9, 'Quận 9', 1, '2019-06-27 09:24:44', '2019-06-27 09:24:44');
INSERT INTO `district` VALUES (10, 'Quận 10', 1, '2019-06-27 09:24:51', '2019-06-27 09:24:51');
INSERT INTO `district` VALUES (11, 'Quận 11', 1, '2019-06-27 09:24:59', '2019-06-27 09:24:59');
INSERT INTO `district` VALUES (12, 'Quận 12', 1, '2019-06-27 09:25:08', '2019-06-27 09:25:08');
INSERT INTO `district` VALUES (13, 'Tân Bình', 1, '2019-06-27 09:25:22', '2019-06-27 09:25:22');
INSERT INTO `district` VALUES (14, 'Gò Vấp', 1, '2019-06-27 09:25:48', '2019-06-27 09:25:48');
INSERT INTO `district` VALUES (15, 'Tân Phú', 1, '2019-06-27 09:26:16', '2019-06-27 09:26:27');
INSERT INTO `district` VALUES (16, 'Phú Nhuận', 1, '2019-06-27 09:26:25', '2019-06-27 09:26:40');
INSERT INTO `district` VALUES (17, 'Bình Thạnh', 1, '2019-06-27 09:26:51', '2019-06-27 09:26:51');
INSERT INTO `district` VALUES (18, 'Thủ Đức', 1, '2019-06-27 09:27:12', '2019-06-27 09:27:12');

-- ----------------------------
-- Table structure for exclude_category
-- ----------------------------
DROP TABLE IF EXISTS `exclude_category`;
CREATE TABLE `exclude_category`  (
  `idexcludecate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcategory` int(11) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idexcludecate`) USING BTREE,
  UNIQUE INDEX `idcategory`(`idcategory`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exclude_category
-- ----------------------------
INSERT INTO `exclude_category` VALUES (1, 16, '2019-06-19 10:51:19', '2019-06-19 10:51:19');

-- ----------------------------
-- Table structure for exp_products
-- ----------------------------
DROP TABLE IF EXISTS `exp_products`;
CREATE TABLE `exp_products`  (
  `idexp` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idnumberorder` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `idcrosstype` int(11) NULL DEFAULT NULL,
  `idproduct` bigint(20) UNSIGNED NOT NULL,
  `idorder` int(11) NULL DEFAULT NULL,
  `parentidorder` int(11) NULL DEFAULT NULL,
  `idcustomer` int(11) NULL DEFAULT NULL,
  `idrecipent` int(11) NULL DEFAULT NULL,
  `iduser` int(11) NULL DEFAULT NULL,
  `amount` double(20, 0) NULL DEFAULT NULL,
  `price` double(20, 0) NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `idstore` int(11) NULL DEFAULT NULL,
  `axis_x` int(11) NULL DEFAULT NULL,
  `axis_y` int(11) NULL DEFAULT NULL,
  `axis_z` int(11) NULL DEFAULT NULL,
  `id_status_type` int(10) NULL DEFAULT NULL,
  `prev_idimp` bigint(20) UNSIGNED NULL DEFAULT 0,
  `prev_idproducthasfile` bigint(20) NULL DEFAULT 0,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idexp`) USING BTREE,
  INDEX `frm_exp_product`(`idproduct`) USING BTREE,
  INDEX `frm_exp_pr_order`(`idnumberorder`) USING BTREE,
  CONSTRAINT `frm_exp_pr_order` FOREIGN KEY (`idnumberorder`) REFERENCES `listorder` (`idnumberorder`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `frm_exp_product` FOREIGN KEY (`idproduct`) REFERENCES `products` (`idproduct`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exp_products
-- ----------------------------
INSERT INTO `exp_products` VALUES (1, 1, 4, 32, 1, 0, 0, 0, 2, 1, 2400000, '', 11, 0, 0, 0, 1, 84, 33, '2019-10-07 14:19:30', '2019-10-07 14:19:30');
INSERT INTO `exp_products` VALUES (2, 1, 0, 28, 2, 0, 0, 0, 2, 1, 0, '', 11, 0, 0, 0, 1, 70, 27, '2019-10-07 14:19:30', '2019-10-07 14:19:30');
INSERT INTO `exp_products` VALUES (3, 1, 1, 6, 3, 2, 0, 0, 2, 15, 1000000, '', 11, 0, 0, 0, 1, 87, 5, '2019-10-07 14:19:30', '2019-10-07 14:19:30');
INSERT INTO `exp_products` VALUES (4, 1, 1, 33, 4, 2, 0, 0, 2, 10, 10000000, '', 11, 0, 0, 0, 1, 89, 34, '2019-10-07 14:19:30', '2019-10-07 14:19:30');
INSERT INTO `exp_products` VALUES (5, 1, 2, 34, 5, 2, 0, 0, 2, 12, 2000000, '', 11, 0, 0, 0, 1, 91, 35, '2019-10-07 14:19:30', '2019-10-07 14:19:30');
INSERT INTO `exp_products` VALUES (8, 2, 4, 31, 1, 0, 0, 0, 2, 1, 1500000, '', 11, 0, 0, 0, 1, 82, 32, '2019-10-07 14:43:21', '2019-10-07 14:43:21');
INSERT INTO `exp_products` VALUES (9, 2, 4, 30, 2, 0, 0, 0, 2, 1, 10000000, '', 11, 0, 0, 0, 1, 78, 30, '2019-10-07 14:43:21', '2019-10-07 14:43:21');
INSERT INTO `exp_products` VALUES (10, 2, 0, 22, 3, 0, 0, 0, 2, 1, 9000000, '', 11, 0, 0, 0, 1, 58, 21, '2019-10-07 14:43:21', '2019-10-07 14:43:21');
INSERT INTO `exp_products` VALUES (11, 3, 0, 27, 1, 0, 0, 0, 2, 2, 4000000, '', 11, 0, 0, 0, 1, 65, 26, '2019-10-07 14:44:20', '2019-10-07 14:44:20');
INSERT INTO `exp_products` VALUES (12, 3, 1, 2, 2, 1, 0, 0, 2, 24, 100000, '', 11, 0, 0, 0, 1, 67, 2, '2019-10-07 14:44:20', '2019-10-07 14:44:20');
INSERT INTO `exp_products` VALUES (13, 4, 0, 28, 1, 0, 45, 0, 0, 1, 0, '', 11, 0, 0, 0, 1, 70, 27, '2019-10-08 09:48:04', '2019-10-08 09:48:04');
INSERT INTO `exp_products` VALUES (14, 4, 1, 6, 2, 1, 45, 0, 0, 15, 1000000, '', 11, 0, 0, 0, 1, 87, 5, '2019-10-08 09:48:04', '2019-10-08 09:48:04');
INSERT INTO `exp_products` VALUES (15, 4, 1, 33, 3, 1, 45, 0, 0, 10, 10000000, '', 11, 0, 0, 0, 1, 89, 34, '2019-10-08 09:48:04', '2019-10-08 09:48:04');
INSERT INTO `exp_products` VALUES (16, 4, 2, 34, 4, 1, 45, 0, 0, 12, 2000000, '', 11, 0, 0, 0, 1, 91, 35, '2019-10-08 09:48:04', '2019-10-08 09:48:04');
INSERT INTO `exp_products` VALUES (20, 5, 0, 15, 1, 0, 0, 0, 2, 1, 0, '', 11, 0, 0, 0, 1, 14, 14, '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `exp_products` VALUES (21, 5, 1, 16, 2, 1, 0, 0, 2, 10, 1800000, '', 11, 0, 0, 0, 1, 15, 15, '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `exp_products` VALUES (22, 5, 1, 17, 3, 1, 0, 0, 2, 5, 6000000, '', 11, 0, 0, 0, 1, 16, 16, '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `exp_products` VALUES (23, 5, 0, 15, 4, 0, 0, 0, 2, 1, 0, '', 11, 0, 0, 0, 1, 14, 14, '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `exp_products` VALUES (24, 5, 1, 16, 5, 4, 0, 0, 2, 10, 1800000, '', 11, 0, 0, 0, 1, 15, 15, '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `exp_products` VALUES (25, 5, 1, 17, 6, 4, 0, 0, 2, 5, 6000000, '', 11, 0, 0, 0, 1, 16, 16, '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `exp_products` VALUES (26, 5, 4, 32, 7, 0, 0, 0, 2, 2, 2400000, '', 11, 0, 0, 0, 1, 84, 33, '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `exp_products` VALUES (27, 6, 0, 27, 1, 0, 0, 0, 2, 1, 4000000, '', 11, 0, 0, 0, 1, 65, 26, '2019-10-08 12:44:02', '2019-10-08 12:44:02');
INSERT INTO `exp_products` VALUES (28, 6, 1, 2, 2, 1, 0, 0, 2, 10, 100000, '', 11, 0, 0, 0, 1, 67, 2, '2019-10-08 12:44:02', '2019-10-08 12:44:02');
INSERT INTO `exp_products` VALUES (29, 7, 0, 28, 1, 0, 46, 0, 0, 1, 0, '', 11, 0, 0, 0, 1, 70, 27, '2019-10-11 13:51:38', '2019-10-11 13:51:38');
INSERT INTO `exp_products` VALUES (30, 7, 1, 6, 2, 1, 46, 0, 0, 15, 1000000, '', 11, 0, 0, 0, 1, 87, 5, '2019-10-11 13:51:38', '2019-10-11 13:51:38');
INSERT INTO `exp_products` VALUES (31, 7, 1, 33, 3, 1, 46, 0, 0, 10, 10000000, '', 11, 0, 0, 0, 1, 89, 34, '2019-10-11 13:51:38', '2019-10-11 13:51:38');
INSERT INTO `exp_products` VALUES (32, 7, 2, 34, 4, 1, 46, 0, 0, 12, 2000000, '', 11, 0, 0, 0, 1, 91, 35, '2019-10-11 13:51:38', '2019-10-11 13:51:38');
INSERT INTO `exp_products` VALUES (36, 8, 4, 31, 1, 0, 47, 0, 0, 1, 1500000, '', 11, 0, 0, 0, 1, 82, 32, '2019-10-11 13:55:29', '2019-10-11 13:55:29');
INSERT INTO `exp_products` VALUES (37, 8, 4, 31, 2, 0, 47, 0, 0, 1, 1500000, '', 11, 0, 0, 0, 1, 82, 32, '2019-10-11 13:55:29', '2019-10-11 13:55:29');
INSERT INTO `exp_products` VALUES (39, 9, 0, 28, 1, 0, 48, 0, 0, 1, 0, '', 11, 0, 0, 0, 1, 70, 27, '2019-10-11 16:12:20', '2019-10-11 16:12:20');
INSERT INTO `exp_products` VALUES (40, 9, 1, 6, 2, 1, 48, 0, 0, 15, 1000000, '', 11, 0, 0, 0, 1, 87, 5, '2019-10-11 16:12:20', '2019-10-11 16:12:20');
INSERT INTO `exp_products` VALUES (41, 9, 1, 33, 3, 1, 48, 0, 0, 10, 10000000, '', 11, 0, 0, 0, 1, 89, 34, '2019-10-11 16:12:20', '2019-10-11 16:12:20');
INSERT INTO `exp_products` VALUES (42, 9, 2, 34, 4, 1, 48, 0, 0, 12, 2000000, '', 11, 0, 0, 0, 1, 91, 35, '2019-10-11 16:12:20', '2019-10-11 16:12:20');
INSERT INTO `exp_products` VALUES (43, 9, 4, 31, 5, 0, 48, 0, 0, 1, 1500000, '', 11, 0, 0, 0, 1, 82, 32, '2019-10-11 16:12:20', '2019-10-11 16:12:20');
INSERT INTO `exp_products` VALUES (46, 10, 0, 15, 1, 0, 49, 0, 0, 1, 0, '', 11, 0, 0, 0, 1, 14, 14, '2019-10-11 16:18:24', '2019-10-11 16:18:24');
INSERT INTO `exp_products` VALUES (47, 10, 1, 16, 2, 1, 49, 0, 0, 10, 1800000, '', 11, 0, 0, 0, 1, 15, 15, '2019-10-11 16:18:24', '2019-10-11 16:18:24');
INSERT INTO `exp_products` VALUES (48, 10, 1, 17, 3, 1, 49, 0, 0, 5, 6000000, '', 11, 0, 0, 0, 1, 16, 16, '2019-10-11 16:18:24', '2019-10-11 16:18:24');
INSERT INTO `exp_products` VALUES (49, 10, 4, 29, 4, 0, 49, 0, 0, 1, 2400000, '', 11, 0, 0, 0, 1, 75, 29, '2019-10-11 16:18:24', '2019-10-11 16:18:24');
INSERT INTO `exp_products` VALUES (50, 11, 4, 32, 1, 0, 50, 0, 0, 1, 2400000, '', 11, 0, 0, 0, 1, 84, 33, '2019-11-12 08:31:18', '2019-11-12 08:31:18');
INSERT INTO `exp_products` VALUES (51, 11, 0, 27, 2, 0, 50, 0, 0, 1, 4000000, '', 11, 0, 0, 0, 1, 65, 26, '2019-11-12 08:31:18', '2019-11-12 08:31:18');
INSERT INTO `exp_products` VALUES (52, 11, 1, 2, 3, 2, 50, 0, 0, 10, 100000, '', 11, 0, 0, 0, 1, 67, 2, '2019-11-12 08:31:18', '2019-11-12 08:31:18');
INSERT INTO `exp_products` VALUES (53, 12, 4, 32, 1, 0, 51, 0, 0, 1, 2400000, '', 11, 0, 0, 0, 1, 84, 33, '2019-12-02 16:00:12', '2019-12-02 16:00:12');
INSERT INTO `exp_products` VALUES (54, 12, 0, 27, 2, 0, 51, 0, 0, 1, 4000000, '', 11, 0, 0, 0, 1, 65, 26, '2019-12-02 16:00:12', '2019-12-02 16:00:12');
INSERT INTO `exp_products` VALUES (55, 12, 1, 2, 3, 2, 51, 0, 0, 10, 100000, '', 11, 0, 0, 0, 1, 67, 2, '2019-12-02 16:00:12', '2019-12-02 16:00:12');

-- ----------------------------
-- Table structure for expposts
-- ----------------------------
DROP TABLE IF EXISTS `expposts`;
CREATE TABLE `expposts`  (
  `idexppost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` bigint(20) NULL DEFAULT NULL,
  `id_status_type` int(11) NULL DEFAULT NULL,
  `iduser_exp` int(11) NULL DEFAULT NULL,
  `idemployee` int(11) NULL DEFAULT NULL,
  `address_reg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `percent_process` decimal(8, 2) NULL DEFAULT NULL,
  `parent_idpost_exp` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idexppost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `idfile` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `urlfile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_origin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namefile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `typefile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idfile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (1, 'uploads/2019/08/29/20190829_1567067165_5d678c1d9fd6e.jpg', 'truoc01.jpg', '20190829_1567067165_5d678c1d9fd6e.jpg', 'jpg', '2019-08-29 15:26:05', '2019-08-29 15:26:05');
INSERT INTO `files` VALUES (2, 'uploads/2019/08/29/20190829_1567067374_5d678cee8c856.jpg', 'truoc01.jpg', '20190829_1567067374_5d678cee8c856.jpg', 'jpg', '2019-08-29 15:29:34', '2019-08-29 15:29:34');
INSERT INTO `files` VALUES (3, 'uploads/2019/08/30/20190830_1567129987_5d68818371c11.jpg', 'truoc02.jpg', '20190830_1567129987_5d68818371c11.jpg', 'jpg', '2019-08-30 08:53:07', '2019-08-30 08:53:07');
INSERT INTO `files` VALUES (4, 'uploads/2019/08/30/20190830_1567130496_5d6883800571a.jpg', 'truoc04.jpg', '20190830_1567130496_5d6883800571a.jpg', 'jpg', '2019-08-30 09:01:36', '2019-08-30 09:01:36');
INSERT INTO `files` VALUES (5, 'uploads/2019/08/30/20190830_1567131726_5d68884ea63b9.jpg', 'truoc03.jpg', '20190830_1567131726_5d68884ea63b9.jpg', 'jpg', '2019-08-30 09:22:06', '2019-08-30 09:22:06');
INSERT INTO `files` VALUES (6, 'uploads/2019/08/30/20190830_1567132061_5d68899ddc36f.jpg', 'truoc04.jpg', '20190830_1567132061_5d68899ddc36f.jpg', 'jpg', '2019-08-30 09:27:41', '2019-08-30 09:27:41');
INSERT INTO `files` VALUES (7, 'uploads/2019/08/31/20190831_1567239488_5d6a2d4068d34.jpg', 'truoc04.jpg', '20190831_1567239488_5d6a2d4068d34.jpg', 'jpg', '2019-08-31 15:18:08', '2019-08-31 15:18:08');
INSERT INTO `files` VALUES (8, 'uploads/2019/08/31/20190831_1567239625_5d6a2dc94cee4.jpg', 'truoc02.jpg', '20190831_1567239625_5d6a2dc94cee4.jpg', 'jpg', '2019-08-31 15:20:25', '2019-08-31 15:20:25');
INSERT INTO `files` VALUES (9, 'uploads/2019/08/31/20190831_1567239757_5d6a2e4dc024c.jpg', 'truoc03.jpg', '20190831_1567239757_5d6a2e4dc024c.jpg', 'jpg', '2019-08-31 15:22:37', '2019-08-31 15:22:37');
INSERT INTO `files` VALUES (10, 'uploads/2019/08/31/20190831_1567239883_5d6a2ecb513c7.jpg', 'truoc02.jpg', '20190831_1567239883_5d6a2ecb513c7.jpg', 'jpg', '2019-08-31 15:24:43', '2019-08-31 15:24:43');
INSERT INTO `files` VALUES (11, 'uploads/2019/08/31/20190831_1567240003_5d6a2f43c1ecd.jpg', 'truoc02.jpg', '20190831_1567240003_5d6a2f43c1ecd.jpg', 'jpg', '2019-08-31 15:26:43', '2019-08-31 15:26:43');
INSERT INTO `files` VALUES (12, 'uploads/2019/08/31/20190831_1567240102_5d6a2fa65aca1.jpg', 'truoc01.jpg', '20190831_1567240102_5d6a2fa65aca1.jpg', 'jpg', '2019-08-31 15:28:22', '2019-08-31 15:28:22');
INSERT INTO `files` VALUES (13, 'uploads/2019/08/31/20190831_1567240210_5d6a301289372.jpg', 'truoc03.jpg', '20190831_1567240210_5d6a301289372.jpg', 'jpg', '2019-08-31 15:30:10', '2019-08-31 15:30:10');
INSERT INTO `files` VALUES (14, 'uploads/2019/08/31/20190831_1567240284_5d6a305ceb7fc.jpg', 'truoc02.jpg', '20190831_1567240284_5d6a305ceb7fc.jpg', 'jpg', '2019-08-31 15:31:24', '2019-08-31 15:31:24');
INSERT INTO `files` VALUES (15, 'uploads/2019/08/31/20190831_1567240377_5d6a30b95b47d.jpg', 'truoc04.jpg', '20190831_1567240377_5d6a30b95b47d.jpg', 'jpg', '2019-08-31 15:32:57', '2019-08-31 15:32:57');
INSERT INTO `files` VALUES (16, 'uploads/2019/08/31/20190831_1567240465_5d6a3111857e1.jpg', 'truoc02.jpg', '20190831_1567240465_5d6a3111857e1.jpg', 'jpg', '2019-08-31 15:34:25', '2019-08-31 15:34:25');
INSERT INTO `files` VALUES (17, 'uploads/2019/09/09/20190909_1568002884_5d75d34428a5f.jpg', 'm-blanc-hinh-web.jpg', '20190909_1568002884_5d75d34428a5f.jpg', 'jpg', '2019-09-09 11:21:24', '2019-09-09 11:21:24');
INSERT INTO `files` VALUES (18, 'uploads/2019/09/09/20190909_1568003267_5d75d4c333bc3.jpg', 'm-blanc-hinh-web.jpg', '20190909_1568003267_5d75d4c333bc3.jpg', 'jpg', '2019-09-09 11:27:47', '2019-09-09 11:27:47');
INSERT INTO `files` VALUES (19, 'uploads/2019/09/09/20190909_1568003648_5d75d640a2a50.jpg', 'm-blanc-hinh-web.jpg', '20190909_1568003648_5d75d640a2a50.jpg', 'jpg', '2019-09-09 11:34:08', '2019-09-09 11:34:08');
INSERT INTO `files` VALUES (20, 'uploads/2019/09/09/20190909_1568004479_5d75d97f08c1c.jpg', 'BoA_at_Incheon.jpg', '20190909_1568004479_5d75d97f08c1c.jpg', 'jpg', '2019-09-09 11:47:59', '2019-09-09 11:47:59');
INSERT INTO `files` VALUES (21, 'uploads/2019/09/09/20190909_1568004634_5d75da1a1a647.jpg', 'BoA_at_Incheon.jpg', '20190909_1568004634_5d75da1a1a647.jpg', 'jpg', '2019-09-09 11:50:34', '2019-09-09 11:50:34');
INSERT INTO `files` VALUES (22, 'uploads/2019/09/13/20190913_1568390641_5d7bbdf19740d.jpg', 'nam-da.jpg', '20190913_1568390641_5d7bbdf19740d.jpg', 'jpg', '2019-09-13 23:04:01', '2019-09-13 23:04:01');
INSERT INTO `files` VALUES (23, 'uploads/2019/09/13/20190913_1568390765_5d7bbe6da6edf.jpg', 'nam-da.jpg', '20190913_1568390765_5d7bbe6da6edf.jpg', 'jpg', '2019-09-13 23:06:05', '2019-09-13 23:06:05');
INSERT INTO `files` VALUES (24, 'uploads/2019/09/13/20190913_1568390897_5d7bbef13e970.jpg', 'nam-da.jpg', '20190913_1568390897_5d7bbef13e970.jpg', 'jpg', '2019-09-13 23:08:17', '2019-09-13 23:08:17');
INSERT INTO `files` VALUES (25, 'uploads/2019/09/13/20190913_1568391126_5d7bbfd627051.jpg', 'nam-da.jpg', '20190913_1568391126_5d7bbfd627051.jpg', 'jpg', '2019-09-13 23:12:06', '2019-09-13 23:12:06');
INSERT INTO `files` VALUES (26, 'uploads/2019/09/13/20190913_1568391249_5d7bc0510061a.jpg', 'nam-da.jpg', '20190913_1568391249_5d7bc0510061a.jpg', 'jpg', '2019-09-13 23:14:09', '2019-09-13 23:14:09');
INSERT INTO `files` VALUES (27, 'uploads/2019/09/15/20190915_1568539864_5d7e04d885ffd.jpg', 'nam-da.jpg', '20190915_1568539864_5d7e04d885ffd.jpg', 'jpg', '2019-09-15 16:31:04', '2019-09-15 16:31:04');
INSERT INTO `files` VALUES (28, 'uploads/2019/09/20/20190920_1568969932_5d8494cc87ecc.jpg', 'triphasic.jpg', '20190920_1568969932_5d8494cc87ecc.jpg', 'jpg', '2019-09-20 15:58:52', '2019-09-20 15:58:52');
INSERT INTO `files` VALUES (29, 'uploads/2019/09/28/20190928_1569659428_5d8f1a249eb4c.jpg', 'm-blanc-hinh-web.jpg', '20190928_1569659428_5d8f1a249eb4c.jpg', 'jpg', '2019-09-28 15:30:28', '2019-09-28 15:30:28');
INSERT INTO `files` VALUES (30, 'uploads/2019/10/01/20191001_1569912133_5d92f5451a24a.jpg', 'truoc03.jpg', '20191001_1569912133_5d92f5451a24a.jpg', 'jpg', '2019-10-01 13:42:13', '2019-10-01 13:42:13');
INSERT INTO `files` VALUES (31, 'uploads/2019/10/01/20191001_1569912586_5d92f70ab34ef.jpg', 'truoc04.jpg', '20191001_1569912586_5d92f70ab34ef.jpg', 'jpg', '2019-10-01 13:49:46', '2019-10-01 13:49:46');
INSERT INTO `files` VALUES (32, 'uploads/2019/10/01/20191001_1569912831_5d92f7ffabea9.jpg', 'truoc02.jpg', '20191001_1569912831_5d92f7ffabea9.jpg', 'jpg', '2019-10-01 13:53:51', '2019-10-01 13:53:51');
INSERT INTO `files` VALUES (33, 'uploads/2019/10/01/20191001_1569920216_5d9314d843949.jpg', 'truoc01.jpg', '20191001_1569920216_5d9314d843949.jpg', 'jpg', '2019-10-01 15:56:56', '2019-10-01 15:56:56');
INSERT INTO `files` VALUES (34, 'uploads/2019/10/01/20191001_1569920349_5d93155d68890.jpg', 'truoc03.jpg', '20191001_1569920349_5d93155d68890.jpg', 'jpg', '2019-10-01 15:59:09', '2019-10-01 15:59:09');
INSERT INTO `files` VALUES (35, 'uploads/2019/10/01/20191001_1569920861_5d93175d8ccbf.jpg', 'truoc01.jpg', '20191001_1569920861_5d93175d8ccbf.jpg', 'jpg', '2019-10-01 16:07:41', '2019-10-01 16:07:41');
INSERT INTO `files` VALUES (36, 'uploads/2019/10/01/20191001_1569920861_5d93175da916e.jpg', 'truoc02.jpg', '20191001_1569920861_5d93175da916e.jpg', 'jpg', '2019-10-01 16:07:41', '2019-10-01 16:07:41');
INSERT INTO `files` VALUES (37, 'uploads/2019/10/01/20191001_1569920861_5d93175dbec74.jpg', 'truoc04.jpg', '20191001_1569920861_5d93175dbec74.jpg', 'jpg', '2019-10-01 16:07:41', '2019-10-01 16:07:41');
INSERT INTO `files` VALUES (38, 'uploads/2019/10/07/20191007_1570430821_5d9adf65f2553.jpg', 'triphasic.jpg', '20191007_1570430821_5d9adf65f2553.jpg', 'jpg', '2019-10-07 13:47:02', '2019-10-07 13:47:02');
INSERT INTO `files` VALUES (39, 'uploads/2019/10/07/20191007_1570430822_5d9adf66158c9.jpg', 'm-blanc-hinh-web.jpg', '20191007_1570430822_5d9adf66158c9.jpg', 'jpg', '2019-10-07 13:47:02', '2019-10-07 13:47:02');
INSERT INTO `files` VALUES (40, 'uploads/2019/10/07/20191007_1570430822_5d9adf6623ba4.jpg', 'triphasic.jpg', '20191007_1570430822_5d9adf6623ba4.jpg', 'jpg', '2019-10-07 13:47:02', '2019-10-07 13:47:02');
INSERT INTO `files` VALUES (41, 'uploads/2019/10/12/20191012_1570852500_5da14e9411e5d.png', '', '20191012_1570852500_5da14e9411e5d.png', 'png', '2019-10-12 10:55:00', '2019-10-12 10:55:00');
INSERT INTO `files` VALUES (42, 'uploads/2019/10/12/20191012_1570852517_5da14ea5b3c45.png', '', '20191012_1570852517_5da14ea5b3c45.png', 'png', '2019-10-12 10:55:17', '2019-10-12 10:55:17');
INSERT INTO `files` VALUES (43, 'uploads/2019/10/12/20191012_1570852717_5da14f6d7ead9.png', '', '20191012_1570852717_5da14f6d7ead9.png', 'png', '2019-10-12 10:58:37', '2019-10-12 10:58:37');
INSERT INTO `files` VALUES (44, 'uploads/2019/10/12/20191012_1570852779_5da14fabacbd4.png', '', '20191012_1570852779_5da14fabacbd4.png', 'png', '2019-10-12 10:59:39', '2019-10-12 10:59:39');
INSERT INTO `files` VALUES (45, 'uploads/2019/10/12/20191012_1570852788_5da14fb429eeb.png', '', '20191012_1570852788_5da14fb429eeb.png', 'png', '2019-10-12 10:59:48', '2019-10-12 10:59:48');
INSERT INTO `files` VALUES (46, 'uploads/2019/10/15/20191015_1571121559_5da56997578ca.png', '', '20191015_1571121559_5da56997578ca.png', 'png', '2019-10-15 13:39:19', '2019-10-15 13:39:19');
INSERT INTO `files` VALUES (47, 'uploads/2020/01/29/20200129_1580299504_5e3174f057903.png', '', '20200129_1580299504_5e3174f057903.png', 'png', '2020-01-29 19:05:04', '2020-01-29 19:05:04');
INSERT INTO `files` VALUES (48, 'uploads/2020/02/01/20200201_1580537197_5e35156d1674d.png', '', '20200201_1580537197_5e35156d1674d.png', 'png', '2020-02-01 13:06:37', '2020-02-01 13:06:37');
INSERT INTO `files` VALUES (49, 'uploads/2020/02/01/20200201_1580537801_5e3517c920a4d.jpg', 'bs1s.jpg', '20200201_1580537801_5e3517c920a4d.jpg', 'jpg', '2020-02-01 13:16:41', '2020-02-01 13:16:41');
INSERT INTO `files` VALUES (50, 'uploads/2020/02/01/20200201_1580537801_5e3517c9369a7.jpg', 'bs2.jpg', '20200201_1580537801_5e3517c9369a7.jpg', 'jpg', '2020-02-01 13:16:41', '2020-02-01 13:16:41');

-- ----------------------------
-- Table structure for grants
-- ----------------------------
DROP TABLE IF EXISTS `grants`;
CREATE TABLE `grants`  (
  `idgrant` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idrole` int(10) UNSIGNED NOT NULL,
  `to_iduser` int(11) NOT NULL,
  `by_iduser` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idgrant`) USING BTREE,
  INDEX `fr_grant_role`(`idrole`) USING BTREE,
  INDEX `fr_grant_user`(`to_iduser`) USING BTREE,
  INDEX `fr_grant_byuser`(`by_iduser`) USING BTREE,
  CONSTRAINT `fr_grant_byuser` FOREIGN KEY (`by_iduser`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_grant_role` FOREIGN KEY (`idrole`) REFERENCES `roles` (`idrole`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_grant_user` FOREIGN KEY (`to_iduser`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of grants
-- ----------------------------
INSERT INTO `grants` VALUES (1, 1, 2, 2, '2019-04-13 08:30:20', '2019-04-13 08:30:20');
INSERT INTO `grants` VALUES (2, 3, 24, 2, '2020-01-27 14:08:22', '2020-02-05 22:29:49');
INSERT INTO `grants` VALUES (3, 3, 23, 2, '2020-01-27 14:38:17', '2020-01-27 14:38:17');
INSERT INTO `grants` VALUES (4, 3, 15, 2, '2020-01-28 15:14:58', '2020-01-28 15:14:58');
INSERT INTO `grants` VALUES (5, 3, 15, 2, '2020-03-10 17:09:56', '2020-03-10 17:09:56');

-- ----------------------------
-- Table structure for imagetype
-- ----------------------------
DROP TABLE IF EXISTS `imagetype`;
CREATE TABLE `imagetype`  (
  `idimagetype` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nametype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idimagetype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of imagetype
-- ----------------------------
INSERT INTO `imagetype` VALUES (1, 'thumbnail', '2019-08-24 09:22:39', '2019-08-24 09:22:39');
INSERT INTO `imagetype` VALUES (2, 'gallery', '2019-08-24 09:22:52', '2019-08-24 09:22:52');

-- ----------------------------
-- Table structure for imp_perms
-- ----------------------------
DROP TABLE IF EXISTS `imp_perms`;
CREATE TABLE `imp_perms`  (
  `idimp_perm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idperm` int(10) UNSIGNED NOT NULL,
  `idrole` int(10) UNSIGNED NOT NULL,
  `iduserimp` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idimp_perm`) USING BTREE,
  INDEX `fr_impperm`(`idperm`) USING BTREE,
  INDEX `fr_impperm_role`(`idrole`) USING BTREE,
  INDEX `fr_impperm_user`(`iduserimp`) USING BTREE,
  CONSTRAINT `fr_impperm` FOREIGN KEY (`idperm`) REFERENCES `permissions` (`idperm`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_impperm_role` FOREIGN KEY (`idrole`) REFERENCES `roles` (`idrole`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_impperm_user` FOREIGN KEY (`iduserimp`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of imp_perms
-- ----------------------------
INSERT INTO `imp_perms` VALUES (1, 2, 1, 2, '2019-04-13 08:30:03', '2020-02-05 22:21:49');
INSERT INTO `imp_perms` VALUES (2, 2, 2, 2, '2020-01-23 10:21:14', '2020-01-23 10:21:14');
INSERT INTO `imp_perms` VALUES (3, 2, 3, 2, '2020-01-27 14:04:13', '2020-01-27 14:04:13');
INSERT INTO `imp_perms` VALUES (4, 3, 3, 2, '2020-01-28 14:53:19', '2020-01-28 14:53:19');
INSERT INTO `imp_perms` VALUES (5, 1, 3, 2, '2020-01-28 15:07:14', '2020-01-28 15:07:14');
INSERT INTO `imp_perms` VALUES (6, 3, 1, 2, '2020-01-29 14:29:05', '2020-01-29 14:29:05');
INSERT INTO `imp_perms` VALUES (7, 1, 1, 2, '2020-02-05 22:47:52', '2020-02-05 22:47:52');
INSERT INTO `imp_perms` VALUES (8, 4, 1, 2, '2020-02-29 18:35:19', '2020-02-29 18:35:19');
INSERT INTO `imp_perms` VALUES (9, 5, 1, 2, '2020-02-29 18:35:32', '2020-02-29 18:35:32');
INSERT INTO `imp_perms` VALUES (10, 6, 1, 2, '2020-02-29 18:35:45', '2020-02-29 18:35:45');
INSERT INTO `imp_perms` VALUES (11, 7, 1, 2, '2020-02-29 18:36:09', '2020-02-29 18:36:09');
INSERT INTO `imp_perms` VALUES (13, 9, 1, 2, '2020-02-29 18:36:33', '2020-02-29 18:36:33');
INSERT INTO `imp_perms` VALUES (14, 10, 1, 2, '2020-02-29 18:36:47', '2020-02-29 18:36:47');
INSERT INTO `imp_perms` VALUES (16, 11, 1, 2, '2020-02-29 18:52:20', '2020-02-29 18:52:20');
INSERT INTO `imp_perms` VALUES (17, 12, 1, 2, '2020-02-29 18:52:44', '2020-02-29 18:52:44');
INSERT INTO `imp_perms` VALUES (18, 13, 1, 2, '2020-03-06 17:12:27', '2020-03-06 17:12:27');
INSERT INTO `imp_perms` VALUES (19, 14, 1, 2, '2020-03-06 17:13:00', '2020-03-06 17:13:00');
INSERT INTO `imp_perms` VALUES (20, 15, 1, 2, '2020-03-06 17:13:22', '2020-03-06 17:13:22');
INSERT INTO `imp_perms` VALUES (21, 16, 1, 2, '2020-03-06 17:15:38', '2020-03-06 17:15:38');
INSERT INTO `imp_perms` VALUES (22, 18, 1, 2, '2020-03-07 10:15:35', '2020-03-07 10:15:35');
INSERT INTO `imp_perms` VALUES (23, 8, 1, 2, '2020-03-10 11:46:30', '2020-03-10 11:46:30');
INSERT INTO `imp_perms` VALUES (24, 19, 1, 2, '2020-03-10 12:55:15', '2020-03-10 12:55:15');
INSERT INTO `imp_perms` VALUES (25, 20, 1, 2, '2020-03-10 14:54:42', '2020-03-10 14:54:42');
INSERT INTO `imp_perms` VALUES (26, 21, 1, 2, '2020-03-10 17:08:13', '2020-03-10 17:08:13');
INSERT INTO `imp_perms` VALUES (27, 22, 1, 2, '2020-03-11 09:15:45', '2020-03-11 09:15:45');
INSERT INTO `imp_perms` VALUES (28, 23, 1, 2, '2020-03-11 12:03:04', '2020-03-11 12:03:04');
INSERT INTO `imp_perms` VALUES (29, 24, 1, 2, '2020-03-11 14:09:56', '2020-03-11 14:09:56');
INSERT INTO `imp_perms` VALUES (30, 25, 1, 2, '2020-03-11 14:21:25', '2020-03-11 14:21:25');
INSERT INTO `imp_perms` VALUES (31, 26, 1, 2, '2020-03-12 09:15:09', '2020-03-12 09:15:09');
INSERT INTO `imp_perms` VALUES (32, 27, 1, 2, '2020-03-12 12:33:26', '2020-03-12 12:33:26');
INSERT INTO `imp_perms` VALUES (33, 28, 1, 2, '2020-03-12 15:38:23', '2020-03-12 15:38:23');
INSERT INTO `imp_perms` VALUES (34, 29, 1, 2, '2020-03-12 15:54:24', '2020-03-12 15:54:24');
INSERT INTO `imp_perms` VALUES (35, 31, 1, 2, '2020-03-13 14:01:15', '2020-03-13 14:01:15');
INSERT INTO `imp_perms` VALUES (36, 32, 1, 2, '2020-03-13 14:03:22', '2020-03-13 14:03:22');
INSERT INTO `imp_perms` VALUES (37, 33, 1, 2, '2020-03-13 14:17:45', '2020-03-13 14:17:45');
INSERT INTO `imp_perms` VALUES (38, 30, 1, 2, '2020-03-13 16:21:47', '2020-03-13 16:21:47');
INSERT INTO `imp_perms` VALUES (39, 34, 1, 2, '2020-03-13 16:42:02', '2020-03-13 16:42:02');
INSERT INTO `imp_perms` VALUES (40, 35, 1, 2, '2020-03-13 16:44:08', '2020-03-13 16:44:08');
INSERT INTO `imp_perms` VALUES (41, 36, 1, 2, '2020-03-13 16:47:55', '2020-03-13 16:47:55');
INSERT INTO `imp_perms` VALUES (42, 37, 1, 2, '2020-03-13 17:11:48', '2020-03-13 17:11:48');
INSERT INTO `imp_perms` VALUES (43, 38, 1, 2, '2020-03-13 22:12:08', '2020-03-13 22:12:08');

-- ----------------------------
-- Table structure for imp_products
-- ----------------------------
DROP TABLE IF EXISTS `imp_products`;
CREATE TABLE `imp_products`  (
  `idimp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `idcustomer` int(11) NULL DEFAULT NULL,
  `iduser` int(11) NULL DEFAULT NULL,
  `idcrosstype` int(11) UNSIGNED NULL DEFAULT 0,
  `idparentcross` int(11) NULL DEFAULT 0,
  `amount` double(20, 0) NULL DEFAULT 0,
  `price_import` double(20, 0) NULL DEFAULT 0,
  `price` double(20, 0) NULL DEFAULT 0,
  `quality_sale` int(11) UNSIGNED NULL DEFAULT 0,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `idstore` int(11) NULL DEFAULT 0,
  `axis_x` int(11) NULL DEFAULT 0,
  `axis_y` int(11) NULL DEFAULT 0,
  `axis_z` int(11) NULL DEFAULT 0,
  `id_status_type` int(11) NULL DEFAULT 0,
  `fromdate` timestamp(0) NULL DEFAULT NULL,
  `todate` timestamp(0) NULL DEFAULT NULL,
  `prev_id` bigint(20) UNSIGNED NULL DEFAULT 0,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idimp`) USING BTREE,
  INDEX `fr_imp_product`(`idproduct`) USING BTREE,
  INDEX `fr_imp_crosstype`(`idcrosstype`) USING BTREE,
  CONSTRAINT `imp_crosstype` FOREIGN KEY (`idcrosstype`) REFERENCES `cross_type` (`idcrosstype`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_import` FOREIGN KEY (`idproduct`) REFERENCES `products` (`idproduct`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of imp_products
-- ----------------------------
INSERT INTO `imp_products` VALUES (1, 1, 0, 2, 0, 0, 0, 0, 0, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-29 15:26:05', '2019-09-13 15:06:55');
INSERT INTO `imp_products` VALUES (2, 2, 0, 2, 1, 1, 0, 0, 1500000, 5, '', 31, 0, 0, 0, 4, '2019-09-15 00:00:00', '2019-09-15 23:59:59', 0, '2019-08-29 15:29:34', '2019-09-15 11:38:49');
INSERT INTO `imp_products` VALUES (3, 4, 0, 2, 1, 1, 0, 0, 2400000, 15, '', 31, 0, 0, 0, 4, '2019-09-10 00:00:00', '2019-09-30 23:59:59', 0, '2019-08-29 21:56:45', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (4, 5, 0, 2, 1, 1, 0, 0, 5000000, 5, '', 31, 0, 0, 0, 4, '2019-09-15 00:00:00', '2019-09-15 23:59:59', 0, '2019-08-30 08:53:07', '2019-09-15 11:38:49');
INSERT INTO `imp_products` VALUES (5, 6, 0, 2, 2, 1, 0, 0, 2400000, 24, '', 31, 0, 0, 0, 4, '2019-09-15 00:00:00', '2019-09-15 23:59:59', 0, '2019-08-30 09:22:06', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (6, 7, 0, 2, 2, 1, 0, 0, 800000, 72, '', 31, 0, 0, 0, 4, '2019-09-15 00:00:00', '2019-09-15 23:59:59', 0, '2019-08-30 09:27:42', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (7, 8, 0, 2, 0, 0, 0, 0, 0, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:18:08', '2019-09-20 08:35:28');
INSERT INTO `imp_products` VALUES (8, 9, 0, 2, 1, 8, 0, 0, 480000, 10, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:20:25', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (9, 10, 0, 2, 1, 8, 0, 0, 2400000, 10, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:22:37', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (10, 11, 0, 2, 1, 8, 0, 0, 6000000, 5, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:24:43', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (11, 12, 0, 2, 0, 0, 0, 0, 0, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:26:43', '2019-09-20 08:35:28');
INSERT INTO `imp_products` VALUES (12, 13, 0, 2, 1, 12, 0, 0, 2400000, 10, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:28:22', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (13, 14, 0, 2, 1, 12, 0, 0, 9000000, 5, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:30:10', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (14, 15, 0, 2, 0, 0, 0, 0, 0, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:31:24', '2019-09-20 08:35:28');
INSERT INTO `imp_products` VALUES (15, 16, 0, 2, 1, 15, 0, 0, 1800000, 10, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:32:57', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (16, 17, 0, 2, 1, 15, 0, 0, 6000000, 5, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-08-31 15:34:25', '2019-09-20 08:36:24');
INSERT INTO `imp_products` VALUES (17, 20, 0, 2, 1, 1, 0, 0, 2000000, 5, '', 31, 0, 0, 0, 5, NULL, NULL, 0, '2019-09-09 11:34:08', '2019-09-20 08:35:28');
INSERT INTO `imp_products` VALUES (18, 21, 0, 2, 1, 20, 0, 0, 10000000, 5, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 11:47:59', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (19, 22, 0, 2, 2, 20, 0, 0, 9000000, 10, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 11:50:34', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (40, 2, 0, 2, 0, 0, 0, 0, 3000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (41, 4, 0, 2, 0, 0, 0, 0, 4000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (42, 5, 0, 2, 0, 0, 0, 0, 15000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (43, 9, 0, 2, 0, 0, 0, 0, 800000, 0, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-20 08:17:31');
INSERT INTO `imp_products` VALUES (44, 10, 0, 2, 0, 0, 0, 0, 400000, 0, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-20 08:17:31');
INSERT INTO `imp_products` VALUES (45, 11, 0, 2, 0, 0, 0, 0, 10000000, 0, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-20 08:17:31');
INSERT INTO `imp_products` VALUES (46, 13, 0, 2, 0, 0, 0, 0, 4000000, 0, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-20 08:17:31');
INSERT INTO `imp_products` VALUES (47, 14, 0, 2, 0, 0, 0, 0, 15000000, 0, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-20 08:17:31');
INSERT INTO `imp_products` VALUES (48, 16, 0, 2, 0, 0, 0, 0, 3000000, 0, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-20 08:17:31');
INSERT INTO `imp_products` VALUES (49, 17, 0, 2, 0, 0, 0, 0, 10000000, 0, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-09 15:37:49', '2019-09-20 08:17:31');
INSERT INTO `imp_products` VALUES (55, 6, 0, 2, 0, 0, 0, 0, 2000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 15:38:43', '2019-09-13 15:14:31');
INSERT INTO `imp_products` VALUES (56, 7, 0, 2, 0, 0, 0, 0, 800000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 15:38:43', '2019-09-13 15:12:37');
INSERT INTO `imp_products` VALUES (57, 21, 0, 2, 0, 0, 0, 0, 15000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 15:38:43', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (58, 22, 0, 2, 0, 0, 0, 0, 9000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-09 15:38:43', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (59, 20, 0, 2, 0, 0, 0, 0, 0, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-10 16:56:33', '2019-09-13 10:57:36');
INSERT INTO `imp_products` VALUES (60, 2, 0, 2, 2, 20, 0, 0, 1000000, 9, NULL, 31, NULL, NULL, NULL, 4, NULL, NULL, 0, '2019-09-11 08:34:09', '2019-09-20 09:08:27');
INSERT INTO `imp_products` VALUES (61, 20, 0, 1, 1, 1, 0, 0, 0, 10, NULL, 31, 0, 0, 0, 5, NULL, NULL, 0, '2019-09-13 16:57:33', '2019-09-13 17:25:06');
INSERT INTO `imp_products` VALUES (62, 21, 0, 2, 2, 1, 0, 0, 100000, 5, NULL, 11, 0, 0, 0, 4, '2019-09-15 00:00:00', '2019-09-15 23:59:59', 0, '2019-09-13 17:24:42', '2019-09-15 11:38:49');
INSERT INTO `imp_products` VALUES (63, 20, 0, 1, 1, 1, 0, 0, 1000000, 10, '0', 31, 0, 0, 0, 5, NULL, NULL, 0, '2019-09-13 22:18:50', '2019-09-26 09:34:34');
INSERT INTO `imp_products` VALUES (64, 26, 0, 2, 0, 0, 0, 0, 4000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-13 23:12:06', '2019-09-20 08:35:28');
INSERT INTO `imp_products` VALUES (65, 27, 0, 2, 0, 0, 0, 0, 4000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-13 23:14:09', '2019-09-14 08:13:11');
INSERT INTO `imp_products` VALUES (66, 27, 0, 2, 1, 26, 0, 0, 10000000, 9, '', 31, 0, 0, 0, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2019-09-13 23:14:09', '2019-09-20 15:03:18');
INSERT INTO `imp_products` VALUES (67, 2, 0, 2, 1, 27, 0, 0, 100000, 10, NULL, 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-13 23:32:41', '2019-09-29 11:16:52');
INSERT INTO `imp_products` VALUES (68, 22, 0, 2, 2, 1, 0, 0, 100000, 10, NULL, 11, 0, 0, 0, 5, NULL, NULL, 0, '2019-09-14 08:58:37', '2019-09-14 08:58:46');
INSERT INTO `imp_products` VALUES (69, 1, 0, 2, 4, 1, 0, 0, 110000, 0, NULL, 31, 0, 0, 0, 5, '2019-09-13 00:00:00', '2019-09-15 23:59:59', 0, '2019-09-14 11:37:18', '2019-09-15 15:05:57');
INSERT INTO `imp_products` VALUES (70, 28, 0, 2, 0, 0, 0, 0, 0, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-15 16:31:04', '2019-09-20 08:35:28');
INSERT INTO `imp_products` VALUES (71, 29, 0, 2, 0, 0, 0, 0, 4000000, 15, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-20 15:58:52', '2019-09-20 16:44:09');
INSERT INTO `imp_products` VALUES (74, 29, 0, 2, 4, 29, 0, 0, 3500000, 10, NULL, 31, 0, 0, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 71, '2019-09-20 16:58:25', '2019-09-28 22:36:03');
INSERT INTO `imp_products` VALUES (75, 29, 0, 2, 4, 29, 0, 0, 2400000, 15, NULL, 31, 0, 0, 0, 4, NULL, NULL, 74, '2019-09-24 15:30:59', '2019-09-28 22:36:09');
INSERT INTO `imp_products` VALUES (76, 30, 0, 2, 0, 0, 0, 0, 20000000, 0, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-28 15:30:28', '2019-09-28 15:30:28');
INSERT INTO `imp_products` VALUES (77, 30, 0, 2, 4, 30, 0, 0, 14000000, 15, '', 31, 0, 0, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 76, '2019-09-28 20:18:12', '2019-09-28 20:22:41');
INSERT INTO `imp_products` VALUES (78, 30, 0, 2, 4, 30, 0, 0, 10000000, 10, NULL, 31, 0, 0, 0, 4, NULL, NULL, 77, '2019-09-28 20:22:41', '2019-09-28 20:22:41');
INSERT INTO `imp_products` VALUES (79, 27, 0, 2, 1, 30, 0, 0, 1000000, 10, NULL, 11, 0, 0, 0, 4, NULL, NULL, 0, '2019-09-29 11:56:09', '2019-09-29 11:56:09');
INSERT INTO `imp_products` VALUES (80, 31, 0, 2, 0, 0, 0, 0, 4000000, 15, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-10-01 12:36:46', '2019-10-01 12:36:46');
INSERT INTO `imp_products` VALUES (81, 31, 0, 2, 4, 31, 0, 0, 2400000, 15, NULL, 31, 0, 0, 0, 4, '2019-10-01 13:43:30', '2019-10-02 13:43:37', 80, '2019-10-01 13:43:45', '2019-10-01 13:43:45');
INSERT INTO `imp_products` VALUES (82, 31, 0, 2, 4, 31, 0, 0, 1500000, 20, NULL, 31, 0, 0, 0, 4, NULL, NULL, 81, '2019-10-01 13:49:46', '2019-10-01 13:49:46');
INSERT INTO `imp_products` VALUES (83, 32, 0, 2, 0, 0, 0, 0, 4000000, 10, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-10-01 13:53:51', '2019-10-01 13:53:51');
INSERT INTO `imp_products` VALUES (84, 32, 0, 2, 4, 32, 0, 0, 2400000, 15, NULL, 31, 0, 0, 0, 4, '2019-10-01 13:54:42', '2019-10-02 13:54:45', 83, '2019-10-01 13:54:55', '2019-10-01 13:54:55');
INSERT INTO `imp_products` VALUES (85, 16, 0, 2, 1, 28, 0, 0, 100000, 10, NULL, 31, 0, 0, 0, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2019-10-01 14:37:54', '2019-10-01 15:51:44');
INSERT INTO `imp_products` VALUES (86, 32, 0, 2, 1, 28, 0, 0, 1000000, 10, NULL, 31, 0, 0, 0, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2019-10-01 15:07:11', '2019-10-01 15:51:44');
INSERT INTO `imp_products` VALUES (87, 6, 0, 2, 1, 28, 0, 0, 1000000, 15, NULL, 31, 0, 0, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 55, '2019-10-01 15:53:36', '2019-10-01 16:07:42');
INSERT INTO `imp_products` VALUES (88, 33, 0, 2, 0, 0, 0, 0, 0, 10, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-10-01 15:56:56', '2019-10-01 15:56:56');
INSERT INTO `imp_products` VALUES (89, 33, 0, 2, 1, 28, 0, 0, 10000000, 10, '', 31, 0, 0, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2019-10-01 15:56:56', '2019-10-01 16:07:42');
INSERT INTO `imp_products` VALUES (90, 34, 0, 2, 0, 0, 0, 0, 0, 12, '', 31, 0, 0, 0, 4, NULL, NULL, 0, '2019-10-01 15:59:09', '2019-10-01 15:59:09');
INSERT INTO `imp_products` VALUES (91, 34, 0, 2, 2, 28, 0, 0, 2000000, 12, '', 31, 0, 0, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2019-10-01 15:59:09', '2019-10-01 16:07:42');

-- ----------------------------
-- Table structure for impposts
-- ----------------------------
DROP TABLE IF EXISTS `impposts`;
CREATE TABLE `impposts`  (
  `idimppost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` bigint(20) NULL DEFAULT NULL,
  `id_status_type` int(11) NULL DEFAULT NULL,
  `percent_process` decimal(8, 2) NULL DEFAULT NULL,
  `iduser_imp` int(11) NULL DEFAULT NULL,
  `idemployee` int(11) NULL DEFAULT NULL,
  `address_reg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_idpost_imp` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idimppost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for listorder
-- ----------------------------
DROP TABLE IF EXISTS `listorder`;
CREATE TABLE `listorder`  (
  `idnumberorder` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idnumberorder`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of listorder
-- ----------------------------
INSERT INTO `listorder` VALUES (1, '', '2019-10-07 14:19:30', '2019-10-07 14:19:30');
INSERT INTO `listorder` VALUES (2, '', '2019-10-07 14:43:21', '2019-10-07 14:43:21');
INSERT INTO `listorder` VALUES (3, '', '2019-10-07 14:44:20', '2019-10-07 14:44:20');
INSERT INTO `listorder` VALUES (4, '', '2019-10-08 09:48:04', '2019-10-08 09:48:04');
INSERT INTO `listorder` VALUES (5, '', '2019-10-08 12:07:58', '2019-10-08 12:07:58');
INSERT INTO `listorder` VALUES (6, '', '2019-10-08 12:44:02', '2019-10-08 12:44:02');
INSERT INTO `listorder` VALUES (7, '', '2019-10-11 13:51:38', '2019-10-11 13:51:38');
INSERT INTO `listorder` VALUES (8, '', '2019-10-11 13:55:29', '2019-10-11 13:55:29');
INSERT INTO `listorder` VALUES (9, '', '2019-10-11 16:12:20', '2019-10-11 16:12:20');
INSERT INTO `listorder` VALUES (10, '', '2019-10-11 16:18:24', '2019-10-11 16:18:24');
INSERT INTO `listorder` VALUES (11, '', '2019-11-12 08:31:18', '2019-11-12 08:31:18');
INSERT INTO `listorder` VALUES (12, '', '2019-12-02 16:00:12', '2019-12-02 16:00:12');

-- ----------------------------
-- Table structure for menu_has_cate
-- ----------------------------
DROP TABLE IF EXISTS `menu_has_cate`;
CREATE TABLE `menu_has_cate`  (
  `idmenuhascate` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idmenu` int(11) UNSIGNED NOT NULL,
  `idcategory` int(11) UNSIGNED NOT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `depth` int(10) NULL DEFAULT NULL,
  `reorder` int(11) NULL DEFAULT NULL,
  `trash` int(5) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idmenuhascate`) USING BTREE,
  INDEX `fr_cate_belong_menu`(`idmenu`) USING BTREE,
  INDEX `fr_menu_has_cat`(`idcategory`) USING BTREE,
  CONSTRAINT `fr_cate_belong_menu` FOREIGN KEY (`idmenu`) REFERENCES `menus` (`idmenu`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_menu_has_cat` FOREIGN KEY (`idcategory`) REFERENCES `categories` (`idcategory`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_has_cate
-- ----------------------------
INSERT INTO `menu_has_cate` VALUES (129, 1, 9, 0, 0, 1, 0, '2019-07-29 08:55:25', '2020-02-04 17:30:57');
INSERT INTO `menu_has_cate` VALUES (133, 1, 28, 0, 0, 3, 0, '2019-07-29 08:55:44', '2020-02-04 17:30:57');
INSERT INTO `menu_has_cate` VALUES (142, 1, 24, 0, 0, 2, 0, '2019-08-02 17:07:01', '2020-02-04 17:30:57');
INSERT INTO `menu_has_cate` VALUES (145, 1, 29, 0, 0, 4, 1, '2019-08-02 17:08:56', '2020-02-05 10:01:10');
INSERT INTO `menu_has_cate` VALUES (146, 1, 6, 0, 0, 0, 0, '2019-08-02 17:08:56', '2019-08-03 10:01:20');
INSERT INTO `menu_has_cate` VALUES (147, 1, 33, 145, 1, 5, 1, '2019-11-12 15:39:25', '2020-02-05 10:00:24');
INSERT INTO `menu_has_cate` VALUES (148, 1, 35, 145, 1, 6, 1, '2020-02-04 16:26:31', '2020-02-05 09:50:23');
INSERT INTO `menu_has_cate` VALUES (149, 1, 29, 0, 0, 4, 0, '2020-02-05 10:01:43', '2020-02-05 10:01:54');
INSERT INTO `menu_has_cate` VALUES (150, 1, 33, 149, 1, 5, 0, '2020-02-05 10:01:43', '2020-02-05 10:01:54');
INSERT INTO `menu_has_cate` VALUES (151, 1, 35, 149, 1, 6, 0, '2020-02-05 10:01:43', '2020-02-05 10:01:54');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `idmenu` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namemenu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idmenu`) USING BTREE,
  UNIQUE INDEX `menu_namemenu_unique`(`namemenu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'menu-primary', '2019-07-09 17:43:25', '2019-07-09 17:43:25');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `migrations` VALUES (8, '2018_09_28_071047_create_sv_customers_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_09_28_071406_create_sv_sends_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_09_28_071547_create_sv_receives_table', 1);
INSERT INTO `migrations` VALUES (11, '2018_09_28_071605_create_sv_campaigns_table', 1);
INSERT INTO `migrations` VALUES (12, '2018_09_28_092221_create_sv_post_types_table', 1);
INSERT INTO `migrations` VALUES (13, '2018_10_01_070557_create_sv_posts_table', 1);
INSERT INTO `migrations` VALUES (14, '2018_10_28_070541_create_products_table', 1);
INSERT INTO `migrations` VALUES (15, '2018_10_28_070821_create_imp_products_table', 1);
INSERT INTO `migrations` VALUES (16, '2018_10_28_070834_create_exp_products_table', 1);
INSERT INTO `migrations` VALUES (17, '2018_11_29_134641_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (18, '2018_11_29_135338_create_roles_table', 1);
INSERT INTO `migrations` VALUES (19, '2018_11_29_135505_create_imp_perms_table', 1);
INSERT INTO `migrations` VALUES (20, '2018_11_29_135523_create_grants_table', 1);
INSERT INTO `migrations` VALUES (21, '2018_12_14_132905_listgrantbyid_procedure', 1);
INSERT INTO `migrations` VALUES (22, '2018_12_15_032820_listpost_procedure', 1);
INSERT INTO `migrations` VALUES (23, '2018_12_16_102228_create_post_types_table', 1);
INSERT INTO `migrations` VALUES (24, '2018_12_16_125347_create_category_types_table', 1);
INSERT INTO `migrations` VALUES (25, '2018_12_18_081612_listcatparent_procedure', 1);
INSERT INTO `migrations` VALUES (26, '2018_12_18_094626_sellistcategorybyid_procedure', 1);
INSERT INTO `migrations` VALUES (27, '2018_12_20_042704_create_status_types_table', 1);
INSERT INTO `migrations` VALUES (28, '2018_12_23_092920_update_imppost_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (29, '2019_01_03_084802_creat_files_table', 1);
INSERT INTO `migrations` VALUES (30, '2019_01_03_085744_insert_files_procedure', 1);
INSERT INTO `migrations` VALUES (31, '2019_01_06_144658_sel_department_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (32, '2019_01_06_174759_create_depart_employees_table', 1);
INSERT INTO `migrations` VALUES (33, '2019_01_06_175900_create_profiles_table', 1);
INSERT INTO `migrations` VALUES (34, '2019_01_06_204904_list_depart_parent_procedure', 1);
INSERT INTO `migrations` VALUES (35, '2019_01_06_212731_sel_list_department_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (36, '2019_01_06_223105_list_department_procedure', 1);
INSERT INTO `migrations` VALUES (37, '2019_01_06_225258_create_departments_table', 1);
INSERT INTO `migrations` VALUES (38, '2019_01_08_233801_list_sel_emp_depart_procedure', 1);
INSERT INTO `migrations` VALUES (39, '2019_02_11_091036_create_post_has_files_table', 1);
INSERT INTO `migrations` VALUES (40, '2019_02_11_095450_create_posts_table', 1);
INSERT INTO `migrations` VALUES (41, '2019_02_11_100541_post_has_file_procedure', 1);
INSERT INTO `migrations` VALUES (42, '2019_02_11_114745_list_type_selected_procedure', 1);
INSERT INTO `migrations` VALUES (43, '2019_02_11_154503_getparentidprocedure', 1);
INSERT INTO `migrations` VALUES (44, '2019_02_11_172247_post_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (45, '2019_02_11_231226_create_impposts_table', 1);
INSERT INTO `migrations` VALUES (46, '2019_02_11_231546_create_expposts_table', 1);
INSERT INTO `migrations` VALUES (47, '2019_02_12_042124_create_categories_table', 1);
INSERT INTO `migrations` VALUES (48, '2019_02_12_044223_list_category_procedure', 1);
INSERT INTO `migrations` VALUES (49, '2019_02_12_234640_sel_categoryby_id_procedure', 1);
INSERT INTO `migrations` VALUES (50, '2019_02_13_000954_insert_post_procedure', 1);
INSERT INTO `migrations` VALUES (51, '2019_02_17_142125_list_impperm_procedure', 1);
INSERT INTO `migrations` VALUES (52, '2019_02_17_142536_imppermbyid_procedure', 1);
INSERT INTO `migrations` VALUES (53, '2019_02_17_142814_listgrant_procedure', 1);
INSERT INTO `migrations` VALUES (57, '2019_02_26_222724_list_role_idperm_procedure', 2);
INSERT INTO `migrations` VALUES (58, '2019_02_28_153458_create_post_has_file_table', 2);
INSERT INTO `migrations` VALUES (59, '2019_02_28_171709_creat_post_api_procedure', 3);
INSERT INTO `migrations` VALUES (60, '2019_03_01_234312_creat_api_post_procedure', 4);
INSERT INTO `migrations` VALUES (61, '2019_04_09_173504_filter_user_reg', 5);
INSERT INTO `migrations` VALUES (62, '2019_04_11_085120_customer_reg_procedure', 6);
INSERT INTO `migrations` VALUES (63, '2019_04_14_151243_list_all_category_procedure', 7);
INSERT INTO `migrations` VALUES (64, '2019_04_14_152226_create_post_types_table', 8);
INSERT INTO `migrations` VALUES (65, '2019_04_14_202707_creat_post_api_procedure', 9);
INSERT INTO `migrations` VALUES (66, '2019_04_14_205408_create_impposts_table', 10);
INSERT INTO `migrations` VALUES (67, '2019_04_14_220123_list_customer_register_procedure', 11);
INSERT INTO `migrations` VALUES (68, '2019_04_15_215628_create_categories_table', 12);
INSERT INTO `migrations` VALUES (69, '2019_04_16_113436_list_all_cat_by_type', 12);
INSERT INTO `migrations` VALUES (70, '2019_04_16_221907_list_post_type_procedure', 12);
INSERT INTO `migrations` VALUES (71, '2019_04_18_135716_list_status_type_procedure', 13);
INSERT INTO `migrations` VALUES (72, '2019_04_18_171344_create_expposts_table', 14);
INSERT INTO `migrations` VALUES (73, '2019_05_01_221732_create_table_profile', 15);
INSERT INTO `migrations` VALUES (74, '2019_05_07_195350_creat_profile_procedure', 16);
INSERT INTO `migrations` VALUES (75, '2019_05_08_211922_create_cache_table', 17);
INSERT INTO `migrations` VALUES (76, '2019_05_08_214108_delete_user_procedure', 17);
INSERT INTO `migrations` VALUES (77, '2019_05_08_215614_create_profile_procedure', 18);
INSERT INTO `migrations` VALUES (78, '2019_05_08_222732_select_profile_procedure', 19);
INSERT INTO `migrations` VALUES (79, '2019_05_09_163643_update_profile_procedure', 20);
INSERT INTO `migrations` VALUES (80, '2019_05_10_164806_upload_avatar_procedure', 20);
INSERT INTO `migrations` VALUES (81, '2019_05_27_104911_catehasproduct', 21);
INSERT INTO `migrations` VALUES (82, '2019_05_27_152435_insert_product_procedure', 22);
INSERT INTO `migrations` VALUES (83, '2019_05_28_114143_sel_row_category_by_id_procedure', 23);
INSERT INTO `migrations` VALUES (84, '2019_05_28_134126_create_table_producthas_file', 24);
INSERT INTO `migrations` VALUES (85, '2019_05_28_170738_string_split_procedure', 25);
INSERT INTO `migrations` VALUES (86, '2019_05_29_102104_producthas_file', 26);
INSERT INTO `migrations` VALUES (87, '2019_05_29_110136_insert_file_path', 27);
INSERT INTO `migrations` VALUES (88, '2019_05_29_153414_category_has_product', 28);
INSERT INTO `migrations` VALUES (89, '2019_05_30_140614_list_product_procedure', 29);
INSERT INTO `migrations` VALUES (90, '2019_06_01_144224_product_belong_category_procedure', 30);
INSERT INTO `migrations` VALUES (91, '2019_06_02_210958_import_product_procedure', 31);
INSERT INTO `migrations` VALUES (92, '2019_06_03_093621_producthas_file_procedure', 32);
INSERT INTO `migrations` VALUES (93, '2019_06_04_134808_sel_product_by_id_procedure', 33);
INSERT INTO `migrations` VALUES (94, '2019_06_04_172642_sel_cate_selected_procedure', 34);
INSERT INTO `migrations` VALUES (95, '2019_06_05_104747_sel_gallery_procedure', 35);
INSERT INTO `migrations` VALUES (96, '2019_06_07_095122_update_catehaspro_procedure', 36);
INSERT INTO `migrations` VALUES (97, '2019_06_07_164035_update_import_product_procedure', 37);
INSERT INTO `migrations` VALUES (98, '2019_06_08_092425_delete_producthas_file_procedure', 38);
INSERT INTO `migrations` VALUES (99, '2019_06_08_112052_trash_gellery_procedure', 39);
INSERT INTO `migrations` VALUES (100, '2019_06_09_202259_list_product_by_idcate_procedure', 40);
INSERT INTO `migrations` VALUES (101, '2019_06_10_082603_create_option_table', 41);
INSERT INTO `migrations` VALUES (102, '2019_06_11_165955_add_product_procedure', 42);
INSERT INTO `migrations` VALUES (103, '2019_06_12_162710_relate_product_procedure', 43);
INSERT INTO `migrations` VALUES (104, '2019_06_12_170254_most_popular_procedure', 44);
INSERT INTO `migrations` VALUES (105, '2019_06_13_095459_create_size_table', 44);
INSERT INTO `migrations` VALUES (106, '2019_06_13_095534_create_color_table', 44);
INSERT INTO `migrations` VALUES (107, '2019_06_13_103656_sel_all_size_procedure', 45);
INSERT INTO `migrations` VALUES (108, '2019_06_13_104318_sel_all_color_procedure', 46);
INSERT INTO `migrations` VALUES (109, '2019_06_13_110756_create_cross_product_table', 47);
INSERT INTO `migrations` VALUES (110, '2019_06_13_151846_sel_cross_product_procedure', 48);
INSERT INTO `migrations` VALUES (111, '2019_06_17_143326_cross_product_has_file_procedure', 49);
INSERT INTO `migrations` VALUES (112, '2019_06_18_100206_sel_cross_product_by_id_procedure', 50);
INSERT INTO `migrations` VALUES (113, '2019_06_18_141119_sel_parent_cross_product_procedure', 51);
INSERT INTO `migrations` VALUES (114, '2019_06_18_212706_detail_by_id_product_procedure', 52);
INSERT INTO `migrations` VALUES (115, '2019_06_19_103953_create_exclude_category_table', 53);
INSERT INTO `migrations` VALUES (116, '2019_06_19_112758_sel_topping_procedure', 54);
INSERT INTO `migrations` VALUES (117, '2019_06_24_112322_order_product_procedure', 55);
INSERT INTO `migrations` VALUES (118, '2019_06_27_082956_create_district_table', 56);
INSERT INTO `migrations` VALUES (119, '2019_06_27_083752_create_city_town_table', 56);
INSERT INTO `migrations` VALUES (120, '2019_06_27_083811_create_ward_table', 56);
INSERT INTO `migrations` VALUES (121, '2019_06_27_083919_create_province_table', 56);
INSERT INTO `migrations` VALUES (122, '2019_06_27_091046_create_country_tablec', 57);
INSERT INTO `migrations` VALUES (123, '2019_06_27_091607_create_country_table', 58);
INSERT INTO `migrations` VALUES (124, '2019_06_27_093255_sel_dicstrict_procedure', 59);
INSERT INTO `migrations` VALUES (125, '2019_06_27_095338_create_sex_table', 60);
INSERT INTO `migrations` VALUES (126, '2019_06_27_114710_sel_city_town_procedure', 60);
INSERT INTO `migrations` VALUES (127, '2019_06_27_120047_sel_sex_procedure', 61);
INSERT INTO `migrations` VALUES (128, '2019_06_29_103605_update_order_number_procedure', 62);
INSERT INTO `migrations` VALUES (129, '2019_06_29_112040_complete_list_order_procedure', 63);
INSERT INTO `migrations` VALUES (130, '2019_06_30_195404_detail_customer_procedure', 64);
INSERT INTO `migrations` VALUES (131, '2019_07_01_085148_short_total_procedure', 65);
INSERT INTO `migrations` VALUES (132, '2019_07_01_160129_info_order_product_procedure', 65);
INSERT INTO `migrations` VALUES (133, '2019_07_01_204528_info_order_product_procedure', 66);
INSERT INTO `migrations` VALUES (134, '2019_07_02_150311_list_order_product_procedure', 67);
INSERT INTO `migrations` VALUES (135, '2019_07_09_142546_category_by_idcatetype', 68);
INSERT INTO `migrations` VALUES (136, '2019_07_09_161441_create_menu_table', 69);
INSERT INTO `migrations` VALUES (137, '2019_07_09_163201_create_menu_has_cate_table', 70);
INSERT INTO `migrations` VALUES (138, '2019_07_09_170403_list_menu_procedure', 71);
INSERT INTO `migrations` VALUES (139, '2019_07_09_221448_menu_has_idcate_procedure', 72);
INSERT INTO `migrations` VALUES (140, '2019_07_15_110803_list_all_cate_by_idcatetype', 72);
INSERT INTO `migrations` VALUES (141, '2019_07_25_165403_create_menu_has_id_cate_procedure', 73);
INSERT INTO `migrations` VALUES (142, '2019_07_26_133757_add_menu_item_procedure', 74);
INSERT INTO `migrations` VALUES (143, '2019_07_27_150609_list_item_cate_by_id_menu_procedure', 75);
INSERT INTO `migrations` VALUES (144, '2019_07_27_211645_update_menu_item_by_idhas_procedure', 75);
INSERT INTO `migrations` VALUES (145, '2019_07_28_182139_update_menu_has_cate_procedure', 75);
INSERT INTO `migrations` VALUES (146, '2019_07_30_084741_list_cate_by_idmenu_procedure', 76);
INSERT INTO `migrations` VALUES (147, '2019_08_02_110003_list_view_product_by_id_cate_procedure', 77);
INSERT INTO `migrations` VALUES (148, '2019_08_23_152153_create_cross_type_table', 78);
INSERT INTO `migrations` VALUES (149, '2019_08_23_160158_sel_cross_type_procedure', 79);
INSERT INTO `migrations` VALUES (150, '2019_08_23_171638_insert_cross_product_procedure', 80);
INSERT INTO `migrations` VALUES (151, '2019_08_24_091907_create_imagetype_table', 81);
INSERT INTO `migrations` VALUES (152, '2019_08_29_142745_list_all_product_procedure', 82);
INSERT INTO `migrations` VALUES (153, '2019_08_29_184843_testprocedure', 83);
INSERT INTO `migrations` VALUES (154, '2019_08_30_103515_create_order_history_table', 83);
INSERT INTO `migrations` VALUES (155, '2019_08_30_161407_order_history_procedure', 84);
INSERT INTO `migrations` VALUES (156, '2019_08_30_225055_create_sessions_table', 85);
INSERT INTO `migrations` VALUES (157, '2019_08_31_092013_sel_idproduct_his_procedure', 86);
INSERT INTO `migrations` VALUES (158, '2019_09_01_202848_create_sessions_table', 87);
INSERT INTO `migrations` VALUES (159, '2019_09_03_084821_lst_ord_session_procedure', 88);
INSERT INTO `migrations` VALUES (160, '2019_09_04_170446_load_order_init_session_procedure', 89);
INSERT INTO `migrations` VALUES (161, '2019_09_05_092532_sel_list_order_ses_procedure', 90);
INSERT INTO `migrations` VALUES (162, '2019_09_05_150453_lst_order_from_session_procedure', 90);
INSERT INTO `migrations` VALUES (163, '2019_09_07_204144_create_listorder_table', 91);
INSERT INTO `migrations` VALUES (164, '2019_09_07_223720_order_product_from_session_procedure', 92);
INSERT INTO `migrations` VALUES (165, '2019_09_09_141942_sel_product_cross_by_id_procedure', 93);
INSERT INTO `migrations` VALUES (166, '2019_09_09_155911_import_product_cross_procedure', 93);
INSERT INTO `migrations` VALUES (167, '2019_09_10_083411_sel_product_cross_origin_procedure', 94);
INSERT INTO `migrations` VALUES (168, '2019_09_10_135720_sel_parent_product_cross_procedure', 94);
INSERT INTO `migrations` VALUES (169, '2019_09_10_204036_sel_product_by_idimp_procedure', 95);
INSERT INTO `migrations` VALUES (170, '2019_09_11_084219_sel_import_by_i_d_product_procedure', 96);
INSERT INTO `migrations` VALUES (171, '2019_09_11_135944_update_imp_product_procedure', 97);
INSERT INTO `migrations` VALUES (172, '2019_09_12_111630_list_product_by_lst_id_cate_procedure', 98);
INSERT INTO `migrations` VALUES (173, '2019_09_13_170201_make_crosstype_procedure', 99);
INSERT INTO `migrations` VALUES (174, '2019_09_14_105844_insert_import_product_procedure', 100);
INSERT INTO `migrations` VALUES (175, '2019_09_15_172446_list_product_combo_procedure', 101);
INSERT INTO `migrations` VALUES (176, '2019_09_19_100656_reach_init_session_procedure', 102);
INSERT INTO `migrations` VALUES (177, '2019_09_21_230610_latest_product_by_idcate_procedure', 103);
INSERT INTO `migrations` VALUES (178, '2019_09_25_104738_initsession_procedure', 104);
INSERT INTO `migrations` VALUES (179, '2019_09_25_162904_lst_order_frm_session_procedure', 105);
INSERT INTO `migrations` VALUES (180, '2019_09_26_084537_latest_price_procedure', 106);
INSERT INTO `migrations` VALUES (181, '2019_09_29_094701_edit_detail_by_id_procedure', 107);
INSERT INTO `migrations` VALUES (182, '2019_09_29_150355_latest_promotion_procedure', 108);
INSERT INTO `migrations` VALUES (183, '2019_10_03_112815_init_import_product_procedure', 109);
INSERT INTO `migrations` VALUES (184, '2019_10_03_113810_import_by_cross_parent_procedure', 110);
INSERT INTO `migrations` VALUES (185, '2019_10_08_103328_detail_order_by_idorder_procedure', 111);
INSERT INTO `migrations` VALUES (186, '2019_10_10_154622_detail_customer_order_procedure', 112);
INSERT INTO `migrations` VALUES (187, '2019_10_10_161135_detail_order_by_idnumber_order_procedure', 113);
INSERT INTO `migrations` VALUES (188, '2019_10_14_172958_create_perm_command_table', 114);
INSERT INTO `migrations` VALUES (189, '2019_10_23_173245_lst_parent_by_idcattype_procedure', 115);
INSERT INTO `migrations` VALUES (190, '2019_11_19_161722_add_permission_procedure', 115);
INSERT INTO `migrations` VALUES (191, '2019_11_20_144512_list_permission_procedure', 116);
INSERT INTO `migrations` VALUES (192, '2019_11_20_160030_list_roles_procedure', 117);
INSERT INTO `migrations` VALUES (193, '2019_11_21_142534_permission_byid_procedure', 118);
INSERT INTO `migrations` VALUES (194, '2020_01_24_092635_update_permission_procedure', 119);

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
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('003723079dbfc44ccefb659f10ce82088af4a85acfa796120115edd55ed28aeaf3e1be9d8acf2951', 16, 1, 'MyApp', '[]', 0, '2019-05-21 09:45:33', '2019-05-21 09:45:33', '2020-05-21 09:45:33');
INSERT INTO `oauth_access_tokens` VALUES ('0050e160ec902df3b553a93643b0c6b4d52b03295788d4febe2c8130199a02b39621c4fb008c23ed', 2, 7, 'MyApp', '[]', 0, '2019-09-19 08:53:49', '2019-09-19 08:53:49', '2020-09-19 08:53:49');
INSERT INTO `oauth_access_tokens` VALUES ('00f813966a46c4c2eab2bb1ad8a9beb34242627ebd07167cc0f8c26d35bfb4f430ebba94f527cfb2', 2, 1, 'MyApp', '[]', 0, '2019-07-14 11:28:07', '2019-07-14 11:28:07', '2020-07-14 11:28:07');
INSERT INTO `oauth_access_tokens` VALUES ('017151f6e3594e400be8f361d5561be19d1b646c45cb23edc42050f1fcfeaacdad30f26332e7bf3c', 2, 1, 'MyApp', '[]', 0, '2019-07-22 14:05:39', '2019-07-22 14:05:39', '2020-07-22 14:05:39');
INSERT INTO `oauth_access_tokens` VALUES ('01cfd3163ee5705287574a0cf78d7959a7190bbc214871e84bf528f7a856073916a9d4ba90660e02', 21, 1, 'MyApp', '[]', 0, '2019-06-24 10:43:23', '2019-06-24 10:43:23', '2020-06-24 10:43:23');
INSERT INTO `oauth_access_tokens` VALUES ('0255d773a919658141315d3d111e177b15a17d57a8d5b04ecbaf09be6789c7a22c64e6e2a9c99a6b', 2, 1, 'MyApp', '[]', 0, '2019-06-28 08:23:12', '2019-06-28 08:23:12', '2020-06-28 08:23:12');
INSERT INTO `oauth_access_tokens` VALUES ('02c5eb6246239dc8c502a00f04cd968d914088f56382271351eaa125d81d96bc05cef22fa727ac2e', 2, 1, 'MyApp', '[]', 0, '2019-02-27 15:50:47', '2019-02-27 15:50:47', '2020-02-27 15:50:47');
INSERT INTO `oauth_access_tokens` VALUES ('0385844a3cb619e34a057680ed8132cc573c6fdbcd9abf9b187b20ce1f32ce8775db5fe6a17411fd', 15, 9, 'MyApp', '[]', 0, '2020-01-29 18:38:08', '2020-01-29 18:38:08', '2021-01-29 18:38:08');
INSERT INTO `oauth_access_tokens` VALUES ('04efc9ed5af1655c64c2590bc9f572b32eb7eca07e429129cb9efd1baca6c0ec2e5ff66746fee23f', 2, 1, 'MyApp', '[]', 0, '2019-05-10 10:38:18', '2019-05-10 10:38:18', '2020-05-10 10:38:18');
INSERT INTO `oauth_access_tokens` VALUES ('04f344456a751f13528e8617784360e9bb2ce58dc9268a91707aa468aba479b212f12573574c3d1b', 2, 1, 'MyApp', '[]', 0, '2019-07-15 11:02:02', '2019-07-15 11:02:02', '2020-07-15 11:02:02');
INSERT INTO `oauth_access_tokens` VALUES ('058b761ebb5c44442216c31bde2d03760794215a28345c0944207b7a001d52aefaed7d7b36ab7d78', 2, 1, 'MyApp', '[]', 0, '2019-05-16 14:40:12', '2019-05-16 14:40:12', '2020-05-16 14:40:12');
INSERT INTO `oauth_access_tokens` VALUES ('067dac3746bfb9865589ab25f53533f9f3eed249169d635653c218b448f75bf1cac28cbb8eca3250', 2, 1, 'MyApp', '[]', 0, '2019-05-01 17:33:54', '2019-05-01 17:33:54', '2020-05-01 17:33:54');
INSERT INTO `oauth_access_tokens` VALUES ('0932576f7ac4ca702fd83f9c0d1181b2bb4ca461c52af492bcde5e1cf5fdbe3ac2170f23c2364a6f', 3, 1, 'MyApp', '[]', 0, '2019-05-05 21:38:59', '2019-05-05 21:38:59', '2020-05-05 21:38:59');
INSERT INTO `oauth_access_tokens` VALUES ('096218f4c8508b93d23381d4d757b6a898a5f7f57d775802d3c7781cb095559f9c710fcbaa7f88f2', 2, 1, 'MyApp', '[]', 0, '2019-04-26 09:06:09', '2019-04-26 09:06:09', '2020-04-26 09:06:09');
INSERT INTO `oauth_access_tokens` VALUES ('0a38cac016fe0b4a9addb193b5f3d823ba868c4bcbb702fe8ee8f5875654325bda145ba9f6b210be', 2, 1, 'MyApp', '[]', 0, '2019-08-03 10:43:57', '2019-08-03 10:43:57', '2020-08-03 10:43:57');
INSERT INTO `oauth_access_tokens` VALUES ('0a4c7a79b0a3f46cd45270bb3473c86f1c8f55fdf1ca06a038722871509ec00d9a6c5ddd7db3c097', 2, 1, 'MyApp', '[]', 0, '2019-06-24 16:23:04', '2019-06-24 16:23:04', '2020-06-24 16:23:04');
INSERT INTO `oauth_access_tokens` VALUES ('0a59300c4e51a3a7a3759534da04f5c54f09c39dbcbf2c77ccadd56f6725dd7a40a92a7b25104ed7', 2, 9, 'MyApp', '[]', 0, '2020-02-23 12:25:08', '2020-02-23 12:25:08', '2021-02-23 12:25:08');
INSERT INTO `oauth_access_tokens` VALUES ('0a737436e49be3ebdf2edc35f2624eb697af9a7b336040c1e6071553bbc58617a9117ec719ab89f6', 2, 9, 'MyApp', '[]', 0, '2020-01-29 14:24:55', '2020-01-29 14:24:55', '2021-01-29 14:24:55');
INSERT INTO `oauth_access_tokens` VALUES ('0b60a19cd4c3ba274cb06a8ae770000add99ba97d47448883fd4c44f84e7f588ea40eb7fa3ec1795', 2, 1, 'MyApp', '[]', 0, '2019-05-16 21:38:22', '2019-05-16 21:38:22', '2020-05-16 21:38:22');
INSERT INTO `oauth_access_tokens` VALUES ('0c4180dee3e171b7f1cbec9e01101d1e92d26832430d1e1641434ae24fd31c45569db9ff726ffb75', 18, 1, 'MyApp', '[]', 0, '2019-08-01 08:30:02', '2019-08-01 08:30:02', '2020-08-01 08:30:02');
INSERT INTO `oauth_access_tokens` VALUES ('0c830db51457b967b9969a00da795e3ba8d2ae3f55dea4a6d1d771a65dcd13cb1aff8a643bb9c3c6', 2, 9, 'MyApp', '[]', 0, '2020-02-25 16:19:06', '2020-02-25 16:19:06', '2021-02-25 16:19:06');
INSERT INTO `oauth_access_tokens` VALUES ('0ca6252eef7576a538f17629976215369137378cda4f9bde3bc885afe275f028d275b6c91720b16f', 2, 9, 'MyApp', '[]', 0, '2020-03-04 14:56:26', '2020-03-04 14:56:26', '2021-03-04 14:56:26');
INSERT INTO `oauth_access_tokens` VALUES ('0efdc5a556eede90f27f44bb0558447a74f4b71201bf3a6fee7dba2cc231aa586c6eb8a662cb4e9b', 2, 9, 'MyApp', '[]', 0, '2020-01-27 13:57:35', '2020-01-27 13:57:35', '2021-01-27 13:57:35');
INSERT INTO `oauth_access_tokens` VALUES ('0f756d73a4677ca66d5ac5ccf63c56c39f2a0fc36a40b78bebe93604cf4bf291f7afbfcfdf9cda0f', 18, 1, 'MyApp', '[]', 0, '2019-05-17 09:39:23', '2019-05-17 09:39:23', '2020-05-17 09:39:23');
INSERT INTO `oauth_access_tokens` VALUES ('10b5bc791b083126a3bd6bc39f6ff89beffff2e417adcaa7ebd081f4f30d18367fcfbdc8153ca8ea', 2, 9, 'MyApp', '[]', 0, '2020-02-20 22:35:34', '2020-02-20 22:35:34', '2021-02-20 22:35:34');
INSERT INTO `oauth_access_tokens` VALUES ('10d71c1d53ffb38f16120f45b7f4ea50fba48e03ff3fb46db24d739a90d65a182bdc3afb8ff34bef', 2, 9, 'MyApp', '[]', 0, '2020-01-28 14:51:17', '2020-01-28 14:51:17', '2021-01-28 14:51:17');
INSERT INTO `oauth_access_tokens` VALUES ('10efb86325f09f6027e678077a974b501933c092c6a33c6c22e1f00865f85ac350f9228e25a6a1ff', 17, 1, 'MyApp', '[]', 0, '2019-05-20 08:56:22', '2019-05-20 08:56:22', '2020-05-20 08:56:22');
INSERT INTO `oauth_access_tokens` VALUES ('114792509f5c33ac5ae710663876d91eeea6885676508e9e22b0c6b41f1d287451383592a789d6e7', 2, 1, 'MyApp', '[]', 0, '2019-05-13 15:16:00', '2019-05-13 15:16:00', '2020-05-13 15:16:00');
INSERT INTO `oauth_access_tokens` VALUES ('117a3ac930a04e89fbcd898cadbc6520751ce821af16fd5e3db6002f0cc5f475d6d68ed9037fc17b', 2, 1, 'MyApp', '[]', 0, '2019-06-24 17:01:40', '2019-06-24 17:01:40', '2020-06-24 17:01:40');
INSERT INTO `oauth_access_tokens` VALUES ('1184348ed15b1be44e047f7fc4601940afd89b47522feb2214e52bbfc416fee3dd1ce24d3bb31fa3', 2, 1, 'MyApp', '[]', 0, '2019-07-05 13:38:25', '2019-07-05 13:38:25', '2020-07-05 13:38:25');
INSERT INTO `oauth_access_tokens` VALUES ('119c6356e35dad14eecb5673189c6c23f267980e190608a2cb7e9d620e78a91731a54de034ab2167', 2, 1, 'MyApp', '[]', 0, '2019-07-17 08:10:12', '2019-07-17 08:10:12', '2020-07-17 08:10:12');
INSERT INTO `oauth_access_tokens` VALUES ('11c75086a35484405e54865fd1bf2c72b10eba9679ff1293c427712ec66f62bdc24918752e316360', 2, 9, 'MyApp', '[]', 0, '2020-02-17 14:36:24', '2020-02-17 14:36:24', '2021-02-17 14:36:24');
INSERT INTO `oauth_access_tokens` VALUES ('11fd90efa8b1ffc1780c3899af04cc6ef25df8b30a97508a9e7aca7ee6e37dab12c2e62fe532c6a8', 2, 1, 'MyApp', '[]', 0, '2019-04-23 08:09:32', '2019-04-23 08:09:32', '2020-04-23 08:09:32');
INSERT INTO `oauth_access_tokens` VALUES ('120ce46d0f0a4a52c2040cd4e7bdd113cb80f7c37dab46f37afc3fd30c74aadef7b80448e39789fe', 2, 9, 'MyApp', '[]', 0, '2020-02-22 16:42:40', '2020-02-22 16:42:40', '2021-02-22 16:42:40');
INSERT INTO `oauth_access_tokens` VALUES ('129d09689dc82206833403e3855a89b985d6f90463516b28b3aa496509dad671adf2f9c8da040218', 2, 1, 'MyApp', '[]', 0, '2019-05-01 21:45:08', '2019-05-01 21:45:08', '2020-05-01 21:45:08');
INSERT INTO `oauth_access_tokens` VALUES ('12c7eb54fd88206c647ec1a9018e4f870c367356d040270d7c68ebd7f6f236543747b3a591b0954f', 2, 1, 'MyApp', '[]', 0, '2019-07-19 08:24:33', '2019-07-19 08:24:33', '2020-07-19 08:24:33');
INSERT INTO `oauth_access_tokens` VALUES ('132273c7c1c6c977a2f62bf0ee7d1d9dd8cac7bf07808d3efbe0000e01e3a2f1c1739f6ce7e2ab90', 2, 1, 'MyApp', '[]', 0, '2019-07-04 12:00:01', '2019-07-04 12:00:01', '2020-07-04 12:00:01');
INSERT INTO `oauth_access_tokens` VALUES ('14fadc8eb48e6f841b30759cd1619ff57deb7ffb0367940679e96a3c6b0a204ed138576e294b04d1', 2, 1, 'MyApp', '[]', 0, '2019-04-25 11:28:06', '2019-04-25 11:28:06', '2020-04-25 11:28:06');
INSERT INTO `oauth_access_tokens` VALUES ('14ff2708081aabe8a8b7a96a99e2e9a0cd999a633dd6c07ea8d30ce2e96bb1f56defc25ff6cd958c', 2, 7, 'MyApp', '[]', 0, '2019-11-14 08:20:36', '2019-11-14 08:20:36', '2020-11-14 08:20:36');
INSERT INTO `oauth_access_tokens` VALUES ('150c79a0f92c3be1b7c557997cee4642677ca29e2dee5512285747ef14e84497e090daf328e4bc30', 15, 9, 'MyApp', '[]', 0, '2020-01-29 16:01:30', '2020-01-29 16:01:30', '2021-01-29 16:01:30');
INSERT INTO `oauth_access_tokens` VALUES ('15bdcc909e0762864865a6b43e54606a85174db18475ad51a94f3ad6a51131dba8bbd7a2726f11ec', 17, 1, 'MyApp', '[]', 0, '2019-05-18 10:00:03', '2019-05-18 10:00:03', '2020-05-18 10:00:03');
INSERT INTO `oauth_access_tokens` VALUES ('166b0b84cdb24e6a85664051841c493dc28509ae2e651ecc9f8cd7bd6521a901d4d138f0a1f6986c', 2, 9, 'MyApp', '[]', 0, '2020-03-06 16:55:28', '2020-03-06 16:55:28', '2021-03-06 16:55:28');
INSERT INTO `oauth_access_tokens` VALUES ('16fe0af2ab1657be8e59aca0b4008d8eb9abbc6afdcc722dd0132c98888149e5e9dec2a4e726cda9', 2, 1, 'MyApp', '[]', 0, '2019-08-01 08:29:57', '2019-08-01 08:29:57', '2020-08-01 08:29:57');
INSERT INTO `oauth_access_tokens` VALUES ('1794dcd211c487d12089c4edde48cb58c0aec2fcfb794f1efefdd6005c1867c6bd964d8872b8d635', 2, 1, 'MyApp', '[]', 0, '2019-06-22 13:36:52', '2019-06-22 13:36:52', '2020-06-22 13:36:52');
INSERT INTO `oauth_access_tokens` VALUES ('17b21775cf6079c603283918bb55014cb927a5d2a6b997667f583498cb6301635ace8c2f39f15360', 2, 1, 'MyApp', '[]', 0, '2019-04-27 08:36:55', '2019-04-27 08:36:55', '2020-04-27 08:36:55');
INSERT INTO `oauth_access_tokens` VALUES ('1965204fe3ef4e6e544b64b1ecb76d6e15f8a9a48139d910616d35f7107a44f12057969a6b7aa4a1', 2, 1, 'MyApp', '[]', 0, '2019-07-06 08:36:46', '2019-07-06 08:36:46', '2020-07-06 08:36:46');
INSERT INTO `oauth_access_tokens` VALUES ('1a0d2c5b55c8eae6c89a0768a6042d6f3edbed863d9c28852b0b76566134a1970a6f90fe678befb9', 2, 1, 'MyApp', '[]', 0, '2019-05-30 09:21:00', '2019-05-30 09:21:00', '2020-05-30 09:21:00');
INSERT INTO `oauth_access_tokens` VALUES ('1ac74cf32baae6591346d6eb6cc6f19b369ec9aab755b619a6084a9b749f0242f08cb23f74d776b1', 2, 9, 'MyApp', '[]', 0, '2020-03-07 10:08:40', '2020-03-07 10:08:40', '2021-03-07 10:08:40');
INSERT INTO `oauth_access_tokens` VALUES ('1c29ea624a989003a55f6b2546ba6b0b59964228688c0e96d0a676d45f899e44dc4900f17e2272b2', 2, 9, 'MyApp', '[]', 0, '2020-03-13 17:22:55', '2020-03-13 17:22:55', '2021-03-13 17:22:55');
INSERT INTO `oauth_access_tokens` VALUES ('1c924153c83792025006713f21e037468db18b2c724ff404b83420811845eabf57a1d256c5f630c6', 2, 1, 'MyApp', '[]', 0, '2019-05-17 14:04:51', '2019-05-17 14:04:51', '2020-05-17 14:04:51');
INSERT INTO `oauth_access_tokens` VALUES ('1d94de5a8b51dcb733805d5e494b75b90008775d490e3bb6a58738d916c5717f9d06dcf385a66a10', 2, 9, 'MyApp', '[]', 0, '2020-02-10 09:17:41', '2020-02-10 09:17:41', '2021-02-10 09:17:41');
INSERT INTO `oauth_access_tokens` VALUES ('1e1a23c4e9674bfece4379f73d15468e20cc93117bef03de63fb810baabe0e147d47647222e3d0eb', 2, 7, 'MyApp', '[]', 0, '2019-09-29 09:53:21', '2019-09-29 09:53:21', '2020-09-29 09:53:21');
INSERT INTO `oauth_access_tokens` VALUES ('1e5c53b47c5a38423ae1c7fe3ff4f004bcd25d8f2a10b1170f445a89baa598efb0252afd18b940ae', 2, 1, 'MyApp', '[]', 0, '2019-07-09 13:36:07', '2019-07-09 13:36:07', '2020-07-09 13:36:07');
INSERT INTO `oauth_access_tokens` VALUES ('1ead5a470d110a58011734d21f331b4f32f0c60414042bdc36cc4a6d40e73d8ae2150edd611a60dc', 2, 5, 'MyApp', '[]', 0, '2019-09-11 08:14:00', '2019-09-11 08:14:00', '2020-09-11 08:14:00');
INSERT INTO `oauth_access_tokens` VALUES ('1ec13bac250e8c2dde5c65ff9f6cd2a50e84531737a31947c2e494c7f204442284d6c7d61b9a64ba', 18, 1, 'MyApp', '[]', 0, '2019-08-01 08:35:39', '2019-08-01 08:35:39', '2020-08-01 08:35:39');
INSERT INTO `oauth_access_tokens` VALUES ('1f736237bd5b2795b3fe4d67c70c259a800187d1262f7a682e12dc709b1255b8876529cce09fc6c4', 2, 1, 'MyApp', '[]', 0, '2019-04-25 15:15:20', '2019-04-25 15:15:20', '2020-04-25 15:15:20');
INSERT INTO `oauth_access_tokens` VALUES ('209cb88bfa7ffebf236395e2a39de20ffe42c65d0524b7df9e45ddf9002ffe9a1c1c3c31a0312fbb', 2, 1, 'MyApp', '[]', 0, '2019-06-22 08:20:30', '2019-06-22 08:20:30', '2020-06-22 08:20:30');
INSERT INTO `oauth_access_tokens` VALUES ('21705ddc701941ec0030e51556d727d2aba54641c93fdb9dae38e1426884f313801ebfde1bb73d76', 24, 1, 'MyApp', '[]', 0, '2019-08-01 16:49:22', '2019-08-01 16:49:22', '2020-08-01 16:49:22');
INSERT INTO `oauth_access_tokens` VALUES ('229286ee58146d5b363b7b3b15a47ae9ae8ee0b0627bf167dd75b0fcf2664b78c9ed5e400fae7dec', 15, 9, 'MyApp', '[]', 0, '2020-01-29 19:00:09', '2020-01-29 19:00:09', '2021-01-29 19:00:09');
INSERT INTO `oauth_access_tokens` VALUES ('22d1e2cd25ef2208663edb0a12559a28b1900dce2354dfbe3e7326cf66b65213fc95f0a962e1f831', 2, 3, 'MyApp', '[]', 0, '2019-08-31 12:52:22', '2019-08-31 12:52:22', '2020-08-31 12:52:22');
INSERT INTO `oauth_access_tokens` VALUES ('232b3cb564badeb91709bedac2c338dad144890e9d51a39055ac0d497a4f47fb11eed976da0f7907', 2, 1, 'MyApp', '[]', 0, '2019-07-26 08:13:34', '2019-07-26 08:13:34', '2020-07-26 08:13:34');
INSERT INTO `oauth_access_tokens` VALUES ('241b17895075f84cc18f380d036d7e5840e61f826db14c36d1397a096fc7b4782655a4b5d9f8da90', 2, 1, 'MyApp', '[]', 0, '2019-03-26 13:54:32', '2019-03-26 13:54:32', '2020-03-26 13:54:32');
INSERT INTO `oauth_access_tokens` VALUES ('256d309a276e1b2156417da67697796a42945156e38384fbb6ae0acf7215dd7d0a22fc8d7027f913', 2, 1, 'MyApp', '[]', 0, '2019-07-05 08:30:46', '2019-07-05 08:30:46', '2020-07-05 08:30:46');
INSERT INTO `oauth_access_tokens` VALUES ('258bb0e1d030b2986a7073203e589e7f940950fc9250eea631544844dd2cfc25a7e1256356a91428', 2, 9, 'MyApp', '[]', 0, '2020-01-23 17:05:27', '2020-01-23 17:05:27', '2021-01-23 17:05:27');
INSERT INTO `oauth_access_tokens` VALUES ('25a054f9ff6ea7b195963e4b79cb5e8e69b66e593e79e0b07376ee4d7918b8af212b9a79756ade17', 2, 9, 'MyApp', '[]', 0, '2020-02-08 08:50:38', '2020-02-08 08:50:38', '2021-02-08 08:50:38');
INSERT INTO `oauth_access_tokens` VALUES ('25e20610a63c42679ee3d08e368b7ce5c6740ca4d24ced15330cacf90e7ab1f51690d40c2918f15e', 2, 1, 'MyApp', '[]', 0, '2019-07-14 16:14:19', '2019-07-14 16:14:19', '2020-07-14 16:14:19');
INSERT INTO `oauth_access_tokens` VALUES ('2644caea4b35f16e4a1e3c46f09c5e29707e3ebc5cf5f35bd535239141654afc0fd8b8baf72c5c3d', 2, 5, 'MyApp', '[]', 0, '2019-09-13 08:15:19', '2019-09-13 08:15:19', '2020-09-13 08:15:19');
INSERT INTO `oauth_access_tokens` VALUES ('26ed3ac4b3c790e8c70379739dbd813588957183db51b669218c54becacb9748109aae56c71e3e7e', 2, 7, 'MyApp', '[]', 0, '2019-10-07 13:34:43', '2019-10-07 13:34:43', '2020-10-07 13:34:43');
INSERT INTO `oauth_access_tokens` VALUES ('27b40fc5bcc1599b94511fc5e70b29b0e2198b4691137288a9ca25850179a07e00cfb882cceb819a', 2, 3, 'MyApp', '[]', 0, '2019-08-29 18:54:43', '2019-08-29 18:54:43', '2020-08-29 18:54:43');
INSERT INTO `oauth_access_tokens` VALUES ('28a0fcfa1ade07d20ac6da7747bbf31d7435d18a48a2110bd201ac5d337dd9b83e4d47f2b2f21a91', 2, 1, 'MyApp', '[]', 0, '2019-05-05 20:59:14', '2019-05-05 20:59:14', '2020-05-05 20:59:14');
INSERT INTO `oauth_access_tokens` VALUES ('295bc9007134ae31d525ab3209a83d13cbf1c68fcc68cb4f12836e2001f2659a3539c988a05c56e1', 2, 9, 'MyApp', '[]', 0, '2020-01-29 08:44:36', '2020-01-29 08:44:36', '2021-01-29 08:44:36');
INSERT INTO `oauth_access_tokens` VALUES ('29f32cd7e62afccec2f43fb5df42b2a7f48a38a4e0c8ea56a728d2fdaba864deea206834784167fe', 2, 1, 'MyApp', '[]', 0, '2019-02-27 10:15:01', '2019-02-27 10:15:01', '2020-02-27 10:15:01');
INSERT INTO `oauth_access_tokens` VALUES ('2a1c77e9b2f2ab04ab04abbb8e33587a187d9b8a2bd2364b86791e8e7bc0346463ab29770a6bdcaa', 2, 1, 'MyApp', '[]', 0, '2019-07-03 08:50:54', '2019-07-03 08:50:54', '2020-07-03 08:50:54');
INSERT INTO `oauth_access_tokens` VALUES ('2cba882915664fbc39f5544ee473cb65956038fd270c9ad249039393b7e742d5f671e3b5619244c7', 2, 9, 'MyApp', '[]', 0, '2020-03-13 08:56:27', '2020-03-13 08:56:27', '2021-03-13 08:56:27');
INSERT INTO `oauth_access_tokens` VALUES ('2d437e02c4ffd98fd86eae21d0e9f0ea1f6556db5dd7290001f02575ccc773766d855857bb2182a8', 2, 1, 'MyApp', '[]', 0, '2019-07-25 22:22:26', '2019-07-25 22:22:26', '2020-07-25 22:22:26');
INSERT INTO `oauth_access_tokens` VALUES ('2d48e6079962345f9fb322fbafd7e55a933c0384b2c281786f8f92e8e98af187d60e2f9c229d61c8', 2, 1, 'MyApp', '[]', 0, '2019-07-27 08:17:11', '2019-07-27 08:17:11', '2020-07-27 08:17:11');
INSERT INTO `oauth_access_tokens` VALUES ('2d4e4f6c487aeb65d97a4c1ca61110c68d53de18a7b459c9c7b9f3ccbfa13ed883a35eb07ca4cbc9', 2, 1, 'MyApp', '[]', 0, '2019-05-14 08:05:49', '2019-05-14 08:05:49', '2020-05-14 08:05:49');
INSERT INTO `oauth_access_tokens` VALUES ('2de3bc5849bd7d366c6998ea24c4a3e1fbd9cbdb0252d7c07f5e1e1cabd6dda51a3fe8af55745dbf', 2, 1, 'MyApp', '[]', 0, '2019-05-21 13:35:38', '2019-05-21 13:35:38', '2020-05-21 13:35:38');
INSERT INTO `oauth_access_tokens` VALUES ('2e14da8a476bc27cd5af18fa8bc549e54129911d7988a72a0a94a821996f4d9d12a20c1d487c4777', 2, 9, 'MyApp', '[]', 0, '2020-02-29 16:25:03', '2020-02-29 16:25:03', '2021-03-01 16:25:03');
INSERT INTO `oauth_access_tokens` VALUES ('2e2c129b53a31bd1bbe1bff0c665dff8d88a82d50fb76db8646f1893713743b423f62e62bbf3a044', 2, 7, 'MyApp', '[]', 0, '2019-11-23 08:18:42', '2019-11-23 08:18:42', '2020-11-23 08:18:42');
INSERT INTO `oauth_access_tokens` VALUES ('2e8a8d2f07b4942ef9c795e50d2bef662fda0e7d4e096dc0d8e2290dbc1eefa310374a0e8456ac52', 2, 1, 'MyApp', '[]', 0, '2019-06-08 16:33:16', '2019-06-08 16:33:16', '2020-06-08 16:33:16');
INSERT INTO `oauth_access_tokens` VALUES ('2f24223be4a7d955cb08e54e436b429234dcbd4a0882953b5a2899b325dab48f803c3ad1d8b2ded6', 2, 7, 'MyApp', '[]', 0, '2019-10-08 09:48:43', '2019-10-08 09:48:43', '2020-10-08 09:48:43');
INSERT INTO `oauth_access_tokens` VALUES ('3089e07e48e983d117508033bdb4638a080f6ffa9a5ff51efb5933a2973ee32ff4196fa1c6673a73', 2, 1, 'MyApp', '[]', 0, '2019-05-10 10:02:47', '2019-05-10 10:02:47', '2020-05-10 10:02:47');
INSERT INTO `oauth_access_tokens` VALUES ('325cdc3ca68af589fe22ec144c335c3b95e833cf51dd38e8aa830a9d0f4abfe80cde9458953d9af6', 2, 1, 'MyApp', '[]', 0, '2019-05-11 08:10:02', '2019-05-11 08:10:02', '2020-05-11 08:10:02');
INSERT INTO `oauth_access_tokens` VALUES ('327b2c1e59dd29fb99ab2e3481d0d172cc2977c4b6b5fd55b0934b04344caa470ca0a5bce949e673', 2, 1, 'MyApp', '[]', 0, '2019-07-08 19:33:10', '2019-07-08 19:33:10', '2020-07-08 19:33:10');
INSERT INTO `oauth_access_tokens` VALUES ('32b0f24fbab58f05d16edd12d80d4f010e88cb28fd104fcbc1b56e6dd7c55d7d8f396bf205f53162', 2, 1, 'MyApp', '[]', 0, '2019-04-22 08:10:07', '2019-04-22 08:10:07', '2020-04-22 08:10:07');
INSERT INTO `oauth_access_tokens` VALUES ('340f7abe85cc72a813f1b8cfdde06734c551a5013fe4ea3ff91c8af4760e1625968c3594619296f9', 2, 1, 'MyApp', '[]', 0, '2019-06-10 20:19:57', '2019-06-10 20:19:57', '2020-06-10 20:19:57');
INSERT INTO `oauth_access_tokens` VALUES ('34264f67b892acd309407bf9f54fff37cc9dd0469168db9afa520e758657a693defc6539eae5f2b3', 2, 1, 'MyApp', '[]', 0, '2019-05-21 08:10:13', '2019-05-21 08:10:13', '2020-05-21 08:10:13');
INSERT INTO `oauth_access_tokens` VALUES ('34a74ab1625693d9e64d772dddc35a6aad295a47c079d1b4d963726ce816393e95f3437efdc3d152', 2, 1, 'MyApp', '[]', 0, '2019-05-01 21:05:29', '2019-05-01 21:05:29', '2020-05-01 21:05:29');
INSERT INTO `oauth_access_tokens` VALUES ('36e48d91998df9621f6e9833f5ba424dcbdfeb69c193813c4ff947797920ea3c0794015a4490c9f5', 2, 1, 'MyApp', '[]', 0, '2019-06-04 08:17:17', '2019-06-04 08:17:17', '2020-06-04 08:17:17');
INSERT INTO `oauth_access_tokens` VALUES ('37965a97bbe4f241967daa66debd655fb103ac02bfe732eaeefeed9145ec7169436300ab938ce461', 2, 5, 'MyApp', '[]', 0, '2019-09-03 11:51:09', '2019-09-03 11:51:09', '2020-09-03 11:51:09');
INSERT INTO `oauth_access_tokens` VALUES ('3853eedd8cdad69da0d2604dd6ac6704067111d15cf4460beccd98ac39d98c40f3b24d8f8ba1fd2b', 10, 1, 'MyApp', '[]', 0, '2019-05-07 20:27:10', '2019-05-07 20:27:10', '2020-05-07 20:27:10');
INSERT INTO `oauth_access_tokens` VALUES ('38ec2a406a32277bb6e0076a6676027854606083ee8f7c341144664bf5d4ca455eb95480c8e09e72', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:48:00', '2019-05-17 09:48:00', '2020-05-17 09:48:00');
INSERT INTO `oauth_access_tokens` VALUES ('3993bdf4d11879b4043c4c09c13feaabf6bb77e5f4a36931e79953e03b6ae33115c54bdf4fd14c6e', 2, 7, 'MyApp', '[]', 0, '2019-11-22 16:09:52', '2019-11-22 16:09:52', '2020-11-22 16:09:52');
INSERT INTO `oauth_access_tokens` VALUES ('39b7d38fe8cd344efeb16af4bf982cbc61ddc276e7867ecb4dbb88600ae07b7f08b6918d974ccb99', 2, 3, 'MyApp', '[]', 0, '2019-08-31 14:31:41', '2019-08-31 14:31:41', '2020-08-31 14:31:41');
INSERT INTO `oauth_access_tokens` VALUES ('3a03058acd7d70fd9d02299599e0a33304bdad2b0c64d9746411cc65892e7257e15a40309723456b', 2, 9, 'MyApp', '[]', 0, '2020-02-03 22:46:18', '2020-02-03 22:46:18', '2021-02-03 22:46:18');
INSERT INTO `oauth_access_tokens` VALUES ('3a5d77230fa8c5eb6f8d26a7541488af5b6a0a7cdfc1450355fa14098eda90d0b5c8c64eca863cd3', 2, 3, 'MyApp', '[]', 0, '2019-08-31 22:28:13', '2019-08-31 22:28:13', '2020-08-31 22:28:13');
INSERT INTO `oauth_access_tokens` VALUES ('3cdb41f9872fdb5710cf0868782fce853b4407eefb29b07fc556dab6ee401b6801f23aeff8aacf02', 2, 1, 'MyApp', '[]', 0, '2019-05-23 08:14:00', '2019-05-23 08:14:00', '2020-05-23 08:14:00');
INSERT INTO `oauth_access_tokens` VALUES ('3d191b70ea87fa97ceeb18df926d48ce8f5b0c1e9b6b7310d76b5112f5a50b40062e1d8066a1ab7c', 2, 1, 'MyApp', '[]', 0, '2019-05-18 15:14:36', '2019-05-18 15:14:36', '2020-05-18 15:14:36');
INSERT INTO `oauth_access_tokens` VALUES ('3dca02eab9f69a6f59d7138b6bf7948e8d1ce5165a00020e51429c54ccc1ce7f6e80b2a32b2ddb05', 2, 9, 'MyApp', '[]', 0, '2020-01-31 10:33:49', '2020-01-31 10:33:49', '2021-01-31 10:33:49');
INSERT INTO `oauth_access_tokens` VALUES ('3f16c297a4305998873ead59276f56653df2ad9ecf17e0c238d3fc7f726d0cfd4a5a0897fc652557', 2, 1, 'MyApp', '[]', 0, '2019-02-28 13:33:42', '2019-02-28 13:33:42', '2020-02-28 13:33:42');
INSERT INTO `oauth_access_tokens` VALUES ('3fbb71718018480dbd344ab00ce53b2a4c1afc0b431659506ce43bc51bcf53b2183e572a9974496d', 2, 9, 'MyApp', '[]', 0, '2020-01-24 12:58:47', '2020-01-24 12:58:47', '2021-01-24 12:58:47');
INSERT INTO `oauth_access_tokens` VALUES ('40b67f3d0f979692b672b5c94557e81f8a9995e7bad153b842f273f7be7fd637f61558da2f9e1071', 2, 1, 'MyApp', '[]', 0, '2019-05-15 11:35:50', '2019-05-15 11:35:50', '2020-05-15 11:35:50');
INSERT INTO `oauth_access_tokens` VALUES ('40d24b69789279f0fb880c3cdaa3c687ba893a9df524606025e0c68fa0738c57b030d5157bc8a638', 2, 7, 'MyApp', '[]', 0, '2019-11-20 09:28:04', '2019-11-20 09:28:04', '2020-11-20 09:28:04');
INSERT INTO `oauth_access_tokens` VALUES ('40f1c0c6f10bad82cffed7d95de01c3fab09d34cdd57e4583c649c3cc449f11bc27d19978c649595', 2, 1, 'MyApp', '[]', 0, '2019-07-14 20:21:59', '2019-07-14 20:21:59', '2020-07-14 20:21:59');
INSERT INTO `oauth_access_tokens` VALUES ('41db00424c7394500406d3e66a780faeff697ee15b2edee5fee1c513c5cdcd171b94689efbd789b3', 2, 1, 'MyApp', '[]', 0, '2019-07-20 08:10:36', '2019-07-20 08:10:36', '2020-07-20 08:10:36');
INSERT INTO `oauth_access_tokens` VALUES ('428ef3c092b33d50ab5bafe4869899c8505fd21b26a0a8dcd80b588db3562d5fd1a1283cf6c1858f', 2, 7, 'MyApp', '[]', 0, '2019-10-10 10:09:11', '2019-10-10 10:09:11', '2020-10-10 10:09:11');
INSERT INTO `oauth_access_tokens` VALUES ('4329c2b81a028ba21a9afbd2529bfa00aa397b4855e82a9c77e8f73cc42781e58c74d61bed0102b0', 2, 1, 'MyApp', '[]', 0, '2019-07-31 15:34:24', '2019-07-31 15:34:24', '2020-07-31 15:34:24');
INSERT INTO `oauth_access_tokens` VALUES ('432e6a569fe292f3e9fe186ecc5682a11874b23513495c7e2dc39e7b8bea34891be9c3fdf2d1f877', 24, 9, 'MyApp', '[]', 0, '2020-03-08 18:25:15', '2020-03-08 18:25:15', '2021-03-08 18:25:15');
INSERT INTO `oauth_access_tokens` VALUES ('434881af631f2459939d5f9685fe752f8c226d47bfec2d0a3910b9c37527760e0255230781934e3d', 2, 1, 'MyApp', '[]', 0, '2019-07-12 21:59:32', '2019-07-12 21:59:32', '2020-07-12 21:59:32');
INSERT INTO `oauth_access_tokens` VALUES ('43b9ed78e7c9778bfc62b2241119bd7e966de4b148a481282325daf5b666da51994c56e10a5563cc', 2, 1, 'MyApp', '[]', 0, '2019-05-03 20:00:48', '2019-05-03 20:00:48', '2020-05-03 20:00:48');
INSERT INTO `oauth_access_tokens` VALUES ('43d805f5102cbb4fceed27e90da0391cc3c71749643b6f09bbaef304a24fa01992c52979f2daee3d', 2, 1, 'MyApp', '[]', 0, '2019-05-28 08:16:19', '2019-05-28 08:16:19', '2020-05-28 08:16:19');
INSERT INTO `oauth_access_tokens` VALUES ('44ec7b99efd12d73fa64e6fff946edc47a34262246fcbe95baa9eee84e924cfc71e90e1f954516dc', 2, 1, 'MyApp', '[]', 0, '2019-07-05 17:32:54', '2019-07-05 17:32:54', '2020-07-05 17:32:54');
INSERT INTO `oauth_access_tokens` VALUES ('457e7f21f88806f11d88bb7c9f7b4cf5434dd78f778ff37a75276bf3a52bfc89ba86bea40b778d6f', 2, 9, 'MyApp', '[]', 0, '2020-03-13 13:32:26', '2020-03-13 13:32:26', '2021-03-13 13:32:26');
INSERT INTO `oauth_access_tokens` VALUES ('45a885012978aaf183fd066168f2c6f23a197bbe222bbfe6f83ad34b033f614c1a357f7fb5c0d04e', 2, 1, 'MyApp', '[]', 0, '2019-05-04 22:54:03', '2019-05-04 22:54:03', '2020-05-04 22:54:03');
INSERT INTO `oauth_access_tokens` VALUES ('473786458558c1d7c54f830b15808d3d8b56aecfbf81bb0beacad8ce730bfbdc05ce5c409a8d5e39', 2, 1, 'MyApp', '[]', 0, '2019-07-09 11:41:08', '2019-07-09 11:41:08', '2020-07-09 11:41:08');
INSERT INTO `oauth_access_tokens` VALUES ('473be711d7540fbc5f93c69099bb24f24a25757b168d85c08682c8c52f2204c0163a003b4eff4991', 2, 9, 'MyApp', '[]', 0, '2020-03-12 15:35:44', '2020-03-12 15:35:44', '2021-03-12 15:35:44');
INSERT INTO `oauth_access_tokens` VALUES ('48b00fbfc24daa157d6c1ae5153888cc44e096518fe2608bb53ae200731559ed8702a21bc72bb060', 15, 9, 'MyApp', '[]', 0, '2020-01-29 18:58:35', '2020-01-29 18:58:35', '2021-01-29 18:58:35');
INSERT INTO `oauth_access_tokens` VALUES ('49609829465c76dc226d9187f763654a192bc0f890c6721977df1f76a9aef652ebc8789d0fcc694a', 2, 9, 'MyApp', '[]', 0, '2020-03-12 08:28:02', '2020-03-12 08:28:02', '2021-03-12 08:28:02');
INSERT INTO `oauth_access_tokens` VALUES ('496e9535fb6740eec6bd08e701e413f8f6e47ac7fc010c848743ce3bcf7052da0dcfeb6d5d33c126', 2, 9, 'MyApp', '[]', 0, '2020-03-07 09:41:47', '2020-03-07 09:41:47', '2021-03-07 09:41:47');
INSERT INTO `oauth_access_tokens` VALUES ('49d6ad9b80eaaf693979d23bf4273779225ce6f6fa9bee6af07a3119f8b9a94a283f666cf6fa421b', 2, 1, 'MyApp', '[]', 0, '2019-05-27 08:32:34', '2019-05-27 08:32:34', '2020-05-27 08:32:34');
INSERT INTO `oauth_access_tokens` VALUES ('49fe6f4f37cf990aa3b94802027e71c168e323a911673da1ed53d3553777452514e3da071369b7f7', 2, 7, 'MyApp', '[]', 0, '2019-12-02 16:28:23', '2019-12-02 16:28:23', '2020-12-02 16:28:23');
INSERT INTO `oauth_access_tokens` VALUES ('4a19eeb56832f5dbbf4b723922558bfc4fcde5c83ea64b0ff59b41824f81fdead0fbce36430187a1', 2, 9, 'MyApp', '[]', 0, '2020-02-02 14:52:06', '2020-02-02 14:52:06', '2021-02-02 14:52:06');
INSERT INTO `oauth_access_tokens` VALUES ('4c346e85698cc25b416a9a411021931f694050355f63da324dc3afd18bf9bfe995d73ab801ddf2ec', 2, 1, 'MyApp', '[]', 0, '2019-08-07 10:06:57', '2019-08-07 10:06:57', '2020-08-07 10:06:57');
INSERT INTO `oauth_access_tokens` VALUES ('4d2751acf180655de73b09f0350704f25a85967e58fd9a98a39d1822ecd8bd78b6ba8cc2ccf78e67', 2, 1, 'MyApp', '[]', 0, '2019-06-24 10:05:09', '2019-06-24 10:05:09', '2020-06-24 10:05:09');
INSERT INTO `oauth_access_tokens` VALUES ('4d4caf5f40e26b4a72f0297d52614c3e7eaccad48968f92f2b70213cafe88292f27c7a7c45d6e0ed', 2, 1, 'MyApp', '[]', 0, '2019-04-19 15:14:57', '2019-04-19 15:14:57', '2020-04-19 15:14:57');
INSERT INTO `oauth_access_tokens` VALUES ('4deb216e03e4291942c85ee92fc219914125b5855a8919b97c39ed3d426b1b94e4722c73cd50fc52', 22, 1, 'MyApp', '[]', 0, '2019-06-24 10:46:31', '2019-06-24 10:46:31', '2020-06-24 10:46:31');
INSERT INTO `oauth_access_tokens` VALUES ('4e45c1047743a7b6dc94130846bbaee0fd9ca8458e2d771fe9fdc411b698479789053ed901e53b28', 2, 1, 'MyApp', '[]', 0, '2019-07-18 10:21:58', '2019-07-18 10:21:58', '2020-07-18 10:21:58');
INSERT INTO `oauth_access_tokens` VALUES ('4ec448ec95893522cf9a40681e0d207f242aa4860d3000b1318a8809964904b393cbefb2ff582627', 2, 1, 'MyApp', '[]', 0, '2019-08-03 09:41:53', '2019-08-03 09:41:53', '2020-08-03 09:41:53');
INSERT INTO `oauth_access_tokens` VALUES ('4f056d2e9cd72c9ad50e8aea6433897ee11c07cd759a9774543bb897c527ccf17b62ad0ac96f69f7', 12, 1, 'MyApp', '[]', 0, '2019-05-07 22:47:20', '2019-05-07 22:47:20', '2020-05-07 22:47:20');
INSERT INTO `oauth_access_tokens` VALUES ('4fbd8497ab1161001d1233a3cb1ffc6d49e2da41460f608b476b2888d66efab58e761b8c9a19f75c', 2, 1, 'MyApp', '[]', 0, '2019-04-30 22:32:09', '2019-04-30 22:32:09', '2020-04-30 22:32:09');
INSERT INTO `oauth_access_tokens` VALUES ('4fc48a84bd46657b32ef030f4e9db4e469279a9ec80e3e329bdc2521ac248e835fd71cc587b19486', 2, 1, 'MyApp', '[]', 0, '2019-06-30 16:06:38', '2019-06-30 16:06:38', '2020-06-30 16:06:38');
INSERT INTO `oauth_access_tokens` VALUES ('50851e2ac3623df38f509932a7ddf288381cbe2c52b4012c8ae3d13f697403dd2acbe90f8e858ec3', 2, 9, 'MyApp', '[]', 0, '2020-02-18 22:09:52', '2020-02-18 22:09:52', '2021-02-18 22:09:52');
INSERT INTO `oauth_access_tokens` VALUES ('51e882ef21177d9d4731f2ddbca95411ec23bbcc8665fc425b696cf812ada0aef7f9e4b324d5ccf3', 2, 7, 'MyApp', '[]', 0, '2019-10-06 20:21:55', '2019-10-06 20:21:55', '2020-10-06 20:21:55');
INSERT INTO `oauth_access_tokens` VALUES ('51f011f2b02ea0e805e2eab80fb6762e94c1ec52a794245828f4d8f9a318c4379e3d6e0daeb34305', 2, 3, 'MyApp', '[]', 0, '2019-08-29 14:37:04', '2019-08-29 14:37:04', '2020-08-29 14:37:04');
INSERT INTO `oauth_access_tokens` VALUES ('52e0d3f219394e03b94eb6e91f432b8a8ea903a5a398222ede074f08f6fc5943294d512f8edb43cf', 28, 1, 'MyApp', '[]', 0, '2019-08-01 17:02:19', '2019-08-01 17:02:19', '2020-08-01 17:02:19');
INSERT INTO `oauth_access_tokens` VALUES ('534218dcfefb2bfed9eccaf5a3fa1065f7a3a465193b06d6bb8f24d2cc2cc5656dc3335969a66f20', 2, 1, 'MyApp', '[]', 0, '2019-06-03 21:28:59', '2019-06-03 21:28:59', '2020-06-03 21:28:59');
INSERT INTO `oauth_access_tokens` VALUES ('54e6e5cfbd0547753525f23e7923a5e2d115f4c5fa87753ec185a22a93178a4d1f8a4c17d2c0f92a', 15, 1, 'MyApp', '[]', 0, '2019-05-11 09:27:34', '2019-05-11 09:27:34', '2020-05-11 09:27:34');
INSERT INTO `oauth_access_tokens` VALUES ('552114151665b92549d475bbe12ced7f1535798a8291d14f432520aa74417157da0687a235829aa5', 2, 1, 'MyApp', '[]', 0, '2019-08-23 11:56:36', '2019-08-23 11:56:36', '2020-08-23 11:56:36');
INSERT INTO `oauth_access_tokens` VALUES ('553abd13018c51106fb3245db77b36274db4b95eddb1c61a73b1722a3dd9a312cca093c7702c8e66', 2, 1, 'MyApp', '[]', 0, '2019-05-07 18:59:18', '2019-05-07 18:59:18', '2020-05-07 18:59:18');
INSERT INTO `oauth_access_tokens` VALUES ('5639c1e5da120bafe52a049a60419412e477a1608c1e9fa6682d40bb903d5d252697fdb7635d0f9b', 2, 1, 'MyApp', '[]', 0, '2019-04-25 08:23:43', '2019-04-25 08:23:43', '2020-04-25 08:23:43');
INSERT INTO `oauth_access_tokens` VALUES ('583779a215b8d1595d880c603b0d8e461d06f8ff55cb92b32c04d5f6645a9d584c498e14d7af61c1', 2, 1, 'MyApp', '[]', 0, '2019-08-02 15:15:45', '2019-08-02 15:15:45', '2020-08-02 15:15:45');
INSERT INTO `oauth_access_tokens` VALUES ('583a27a7b3b79ad1ead6e24564de574903441a703a1208587bfa4fa968b8be20a738082377b78add', 2, 1, 'MyApp', '[]', 0, '2019-05-29 17:13:17', '2019-05-29 17:13:17', '2020-05-29 17:13:17');
INSERT INTO `oauth_access_tokens` VALUES ('587fb93867dfa81b135fe374883068761a46d74293461a0f7fbe30e5077753a3e87c48dfa6be90db', 2, 1, 'MyApp', '[]', 0, '2019-04-12 11:12:38', '2019-04-12 11:12:38', '2020-04-12 11:12:38');
INSERT INTO `oauth_access_tokens` VALUES ('5b72a39001ae13cc956aee9bd0f8918a66a43100e4bcd46e0d036e2abc52fcffae067d9446dd33f5', 2, 9, 'MyApp', '[]', 0, '2019-12-22 21:28:46', '2019-12-22 21:28:46', '2020-12-22 21:28:46');
INSERT INTO `oauth_access_tokens` VALUES ('5c92bb000dbb0b751d46ae8fc333352b6e9f822756df93629f616876c4392708f5a182af1463f6af', 2, 7, 'MyApp', '[]', 0, '2019-10-06 10:07:57', '2019-10-06 10:07:57', '2020-10-06 10:07:57');
INSERT INTO `oauth_access_tokens` VALUES ('5db6b13492643a9a462c0dce4ce04a3d96df00ed18edbf0d26a1dac7d74271f69a084235734392ed', 2, 1, 'MyApp', '[]', 0, '2019-04-26 13:34:58', '2019-04-26 13:34:58', '2020-04-26 13:34:58');
INSERT INTO `oauth_access_tokens` VALUES ('603880efe258e0f330f18c1c3c7191736e04202a77e7639a02ab078889ff25becb9a30f0c77f4990', 15, 1, 'MyApp', '[]', 0, '2019-05-10 13:57:54', '2019-05-10 13:57:54', '2020-05-10 13:57:54');
INSERT INTO `oauth_access_tokens` VALUES ('6124e86b611137ff840c94d75140df3b9a9b5cb78b14eb54e216edf860ccc2f2b1a87c7a56068a6f', 16, 1, 'MyApp', '[]', 0, '2019-05-18 15:13:23', '2019-05-18 15:13:23', '2020-05-18 15:13:23');
INSERT INTO `oauth_access_tokens` VALUES ('612e0eccbd4da857db0825ff3aab22f4dd86c6a6d184c460341fd716ae2b5b7990cbc326d9effcfa', 2, 1, 'MyApp', '[]', 0, '2019-06-07 08:24:19', '2019-06-07 08:24:19', '2020-06-07 08:24:19');
INSERT INTO `oauth_access_tokens` VALUES ('62466961de48886a17f532889b3dc96ab4fcce3e13b524cd69acc6170eb867a69d3a3cde5e8b2c33', 2, 1, 'MyApp', '[]', 0, '2019-03-18 11:44:22', '2019-03-18 11:44:22', '2020-03-18 11:44:22');
INSERT INTO `oauth_access_tokens` VALUES ('635d3aef0a2c18123ec22e42a6b4473678147a048fade84223d4c3dbd41358ad295431ab21e56d15', 2, 3, 'MyApp', '[]', 0, '2019-08-27 23:12:23', '2019-08-27 23:12:23', '2020-08-27 23:12:23');
INSERT INTO `oauth_access_tokens` VALUES ('637979837d6b444ddb73d3167055561ba2e8dd00d00c4c4825a5534a8d6e652388f6e612f41c886b', 2, 1, 'MyApp', '[]', 0, '2019-04-29 11:01:47', '2019-04-29 11:01:47', '2020-04-29 11:01:47');
INSERT INTO `oauth_access_tokens` VALUES ('63dfa383a47cfa371afc20909d422671e19543c81e9d40854f0c51d889e76040a670f38f773f2ebe', 2, 1, 'MyApp', '[]', 0, '2019-04-09 08:08:54', '2019-04-09 08:08:54', '2020-04-09 08:08:54');
INSERT INTO `oauth_access_tokens` VALUES ('64388e16751f491255693a2c8dc3138269820ee1b1e764abd125ca1fb2d808a738f92153c76931b5', 2, 1, 'MyApp', '[]', 0, '2019-03-22 14:11:53', '2019-03-22 14:11:53', '2020-03-22 14:11:53');
INSERT INTO `oauth_access_tokens` VALUES ('64c77bdb8b11ef53adf99644e1b761241347a9932d944a27f0d981d0b1d0988d92b02c54e218db3c', 17, 1, 'MyApp', '[]', 0, '2019-08-02 08:47:12', '2019-08-02 08:47:12', '2020-08-02 08:47:12');
INSERT INTO `oauth_access_tokens` VALUES ('651b05d0a822beda10f48b8c7cd2214b09dca050513bd5e0413743bc9d131d07363338dca0091244', 2, 9, 'MyApp', '[]', 0, '2020-02-23 17:41:10', '2020-02-23 17:41:10', '2021-02-23 17:41:10');
INSERT INTO `oauth_access_tokens` VALUES ('66c5e53c2082668b01d50b880b5f0f885da1ba6ced84f8e1da2a90061017ba70e37a7e9bf0c4b1bb', 2, 7, 'MyApp', '[]', 0, '2019-12-19 10:46:43', '2019-12-19 10:46:43', '2020-12-19 10:46:43');
INSERT INTO `oauth_access_tokens` VALUES ('67306fcdc22aa5b8443942722784fc32d985baf4151f4bcada00a8969c0a6c4ea9bc6b9a801f1b45', 2, 1, 'MyApp', '[]', 0, '2019-04-18 15:18:25', '2019-04-18 15:18:25', '2020-04-18 15:18:25');
INSERT INTO `oauth_access_tokens` VALUES ('676d86f257186c95b4e61ef514c27bf1733b2d350dc1e0c6d404e38278c6373e085dd2a8aeeb2100', 2, 1, 'MyApp', '[]', 0, '2019-04-24 11:58:28', '2019-04-24 11:58:28', '2020-04-24 11:58:28');
INSERT INTO `oauth_access_tokens` VALUES ('67f937dc145cbf594bd03cf24db669a8420c13a360875c64f16f62aa9f07c71b1ff2d9d14851d30c', 2, 1, 'MyApp', '[]', 0, '2019-06-09 13:55:30', '2019-06-09 13:55:30', '2020-06-09 13:55:30');
INSERT INTO `oauth_access_tokens` VALUES ('699227a700f0a1ea60875e221a78c1601c50774dea3a8f88e9cb5efe5b4cd7295be842cff2d0a973', 2, 7, 'MyApp', '[]', 0, '2019-09-28 14:44:34', '2019-09-28 14:44:34', '2020-09-28 14:44:34');
INSERT INTO `oauth_access_tokens` VALUES ('69fb3f0f3d90f7f0c5fc8af0756a85974185ea7b721383b42532f440e3ef2dd9ae3ea7e4b3123c88', 2, 1, 'MyApp', '[]', 0, '2019-05-14 14:37:07', '2019-05-14 14:37:07', '2020-05-14 14:37:07');
INSERT INTO `oauth_access_tokens` VALUES ('6a5a881e83886e5de150d404f9837b5ecd784e385ae3c9ddfc20b93f0204e227f59ded804375d79c', 2, 1, 'MyApp', '[]', 0, '2019-06-10 11:21:47', '2019-06-10 11:21:47', '2020-06-10 11:21:47');
INSERT INTO `oauth_access_tokens` VALUES ('6a8cf12646ba3a01aec38b23a3d8e898b3caa2ebc4585da90150eb9642964c77be8dccdc6d1c745f', 2, 1, 'MyApp', '[]', 0, '2019-05-29 14:54:40', '2019-05-29 14:54:40', '2020-05-29 14:54:40');
INSERT INTO `oauth_access_tokens` VALUES ('6a8e04a0c74f204ed1225d7c19b13b15b7bee1afd94db125397ea001ebd7ae96d3643558695617a6', 2, 1, 'MyApp', '[]', 0, '2019-04-30 15:10:04', '2019-04-30 15:10:04', '2020-04-30 15:10:04');
INSERT INTO `oauth_access_tokens` VALUES ('6b0fb7eb0075b041715db75dfab09e862621d13ed3c1f1e663fcd69f429fd87c9a3b4900eb14663b', 2, 7, 'MyApp', '[]', 0, '2019-10-11 14:03:02', '2019-10-11 14:03:02', '2020-10-11 14:03:02');
INSERT INTO `oauth_access_tokens` VALUES ('6ccf9774c1a43a530d639c63734ffbe9516a03f64b99359f4bd4056fcf707b99a897dd332deb6b66', 2, 9, 'MyApp', '[]', 0, '2020-02-05 16:32:47', '2020-02-05 16:32:47', '2021-02-05 16:32:47');
INSERT INTO `oauth_access_tokens` VALUES ('6dfcc3bdabe0e793737bb463b23b24d5eb7ff5207ef421c01d6fc402bbf7e8ca696e1e067661e2c1', 25, 1, 'MyApp', '[]', 0, '2019-08-01 16:49:58', '2019-08-01 16:49:58', '2020-08-01 16:49:58');
INSERT INTO `oauth_access_tokens` VALUES ('6e98729a0c4e1e54fce7a96777dc287817a54f87519e047c0cc13b5aabe8f0df857446b0a9496fc0', 2, 1, 'MyApp', '[]', 0, '2019-04-12 15:45:29', '2019-04-12 15:45:29', '2020-04-12 15:45:29');
INSERT INTO `oauth_access_tokens` VALUES ('6ed887714edb952c96143b8c9d33e5c545e960e24be63dcc78be6b34ed18636033e0cd11c88deda5', 2, 1, 'MyApp', '[]', 0, '2019-06-17 22:40:16', '2019-06-17 22:40:16', '2020-06-17 22:40:16');
INSERT INTO `oauth_access_tokens` VALUES ('6f83e3687c1daaa2049f6832e39f265f2b2e59789cd56b93826e9acdcaee2e0fa9bb8b384e681c9b', 2, 1, 'MyApp', '[]', 0, '2019-07-14 19:26:08', '2019-07-14 19:26:08', '2020-07-14 19:26:08');
INSERT INTO `oauth_access_tokens` VALUES ('70843493499233c9b9beb3fe5f86261922fa2a51e9aebee813646cca0f394540d2f14ce0826417c3', 2, 9, 'MyApp', '[]', 0, '2020-01-31 14:11:56', '2020-01-31 14:11:56', '2021-01-31 14:11:56');
INSERT INTO `oauth_access_tokens` VALUES ('7094791c89daae48b29569e80af085c18f04dc601369631e619ccfd4db07ccfd3edd3dc6abe83e92', 2, 9, 'MyApp', '[]', 0, '2020-03-04 10:50:07', '2020-03-04 10:50:07', '2021-03-04 10:50:07');
INSERT INTO `oauth_access_tokens` VALUES ('7202309429ef48890b9f55208d84479aa6cb484e663da8836f0a4cf28add2d6732c737ff5d62bd4a', 2, 9, 'MyApp', '[]', 0, '2020-03-03 21:30:16', '2020-03-03 21:30:16', '2021-03-03 21:30:16');
INSERT INTO `oauth_access_tokens` VALUES ('724a3a57298275991328f300077a559155fa445f52fe0b6b018131702870446c3034d8ae86e1aedc', 2, 1, 'MyApp', '[]', 0, '2019-06-04 14:18:40', '2019-06-04 14:18:40', '2020-06-04 14:18:40');
INSERT INTO `oauth_access_tokens` VALUES ('731868eada1e734c46875d5f8cd9aa7dc9ce09d010a319c3120d8e0db5b8574c7e6c199ae4b28c1c', 2, 1, 'MyApp', '[]', 0, '2019-06-06 08:19:55', '2019-06-06 08:19:55', '2020-06-06 08:19:55');
INSERT INTO `oauth_access_tokens` VALUES ('737a7e77bd8fd489f65d343a4fdf6e0f274b709c2f543196fef2bce4bd3daf54dfa581e7dfbbe6f8', 15, 1, 'MyApp', '[]', 0, '2019-05-08 22:13:47', '2019-05-08 22:13:47', '2020-05-08 22:13:47');
INSERT INTO `oauth_access_tokens` VALUES ('73d00ac92ef83e5ebd65713545efaaca63dc704d013c2c03e1a64b3e6cd77399c369fe17a79ce08e', 28, 1, 'MyApp', '[]', 0, '2019-08-01 17:03:32', '2019-08-01 17:03:32', '2020-08-01 17:03:32');
INSERT INTO `oauth_access_tokens` VALUES ('75ea80618db778e84184ddc6eef2c5662b6ccf77bd470557c35b8c1bf92d9c4a3b1f68824aaf39f4', 2, 7, 'MyApp', '[]', 0, '2019-10-12 08:47:29', '2019-10-12 08:47:29', '2020-10-12 08:47:29');
INSERT INTO `oauth_access_tokens` VALUES ('770cac5c9f08f8a79a9b5b4e609c89a456179b7d4bd74a1157206e91859b50af203b255d3631587d', 2, 3, 'MyApp', '[]', 0, '2019-08-27 10:54:31', '2019-08-27 10:54:31', '2020-08-27 10:54:31');
INSERT INTO `oauth_access_tokens` VALUES ('77155dd2d0ecd79c4847de3822b861f1773255e1067f8fdce0ccc60ee6588cfd67069813e74d309b', 2, 1, 'MyApp', '[]', 0, '2019-05-01 08:55:11', '2019-05-01 08:55:11', '2020-05-01 08:55:11');
INSERT INTO `oauth_access_tokens` VALUES ('788f19af97a07f4a202d1af4c5f66cdbae573520e2258df416314f73f11d416a4845d04d4c12b6b4', 2, 7, 'MyApp', '[]', 0, '2019-11-19 14:38:38', '2019-11-19 14:38:38', '2020-11-19 14:38:38');
INSERT INTO `oauth_access_tokens` VALUES ('78b2bb1f8661378e17882229c1a748bc0db3e00a382df2a8f01bff7503bf26b52cbc0a67d92a07b3', 2, 7, 'MyApp', '[]', 0, '2019-10-01 10:25:31', '2019-10-01 10:25:31', '2020-10-01 10:25:31');
INSERT INTO `oauth_access_tokens` VALUES ('796cf6d7b08cfd5dd3573bd9ca4357982b396a3a167831a97c51c5623d78b761cb29188f06a6ef29', 2, 1, 'MyApp', '[]', 0, '2019-06-17 14:20:04', '2019-06-17 14:20:04', '2020-06-17 14:20:04');
INSERT INTO `oauth_access_tokens` VALUES ('79ff6ff67b3805dcc8e95f5e802b20a5137884f7ae51ad058b0f8480f071c6c72a6e8c1e5f08ab49', 2, 1, 'MyApp', '[]', 0, '2019-06-19 08:18:32', '2019-06-19 08:18:32', '2020-06-19 08:18:32');
INSERT INTO `oauth_access_tokens` VALUES ('7a1a5bf5aed3cf50575affeff8c29812fe3ea8018ae8f12ab9e024fbd71c60574c695e42c4005939', 2, 9, 'MyApp', '[]', 0, '2020-03-08 17:23:23', '2020-03-08 17:23:23', '2021-03-08 17:23:23');
INSERT INTO `oauth_access_tokens` VALUES ('7a51de89b0c493cc9438b947765146767fec212e427199a3abe3a5c858f7f44bd7c132970131895b', 2, 9, 'MyApp', '[]', 0, '2020-02-07 09:08:17', '2020-02-07 09:08:17', '2021-02-07 09:08:17');
INSERT INTO `oauth_access_tokens` VALUES ('7b89253aaad512dbbdb1c716ee1540274f6315215561a46f8c09651b6df750d31b6ff83f182a41f9', 2, 5, 'MyApp', '[]', 0, '2019-09-12 08:31:57', '2019-09-12 08:31:57', '2020-09-12 08:31:57');
INSERT INTO `oauth_access_tokens` VALUES ('7b9982592a0313da930390fcad1015b7351edf510915e3cad09dcc41e73bde7b4d19f4b59ca78bdb', 2, 1, 'MyApp', '[]', 0, '2019-06-25 16:14:09', '2019-06-25 16:14:09', '2020-06-25 16:14:09');
INSERT INTO `oauth_access_tokens` VALUES ('7d88adeac7bcb9c2af82229d4c4763b4e3859fb434f7a7d30851fe751ab917a2987229b085325550', 2, 1, 'MyApp', '[]', 0, '2019-07-08 14:41:34', '2019-07-08 14:41:34', '2020-07-08 14:41:34');
INSERT INTO `oauth_access_tokens` VALUES ('7e6323773adbba3ca5d66e94488ab9637f9cb31ff4ce6fe7e0c0ad2344b60979f1597bad2ae36e7a', 2, 9, 'MyApp', '[]', 0, '2020-03-02 19:20:58', '2020-03-02 19:20:58', '2021-03-02 19:20:58');
INSERT INTO `oauth_access_tokens` VALUES ('7f0d3e0dde161325a88968a0e6ac03fb4c212d9af85e7592ffc34e969882c07f2b03b478aaacb368', 15, 1, 'MyApp', '[]', 0, '2019-05-10 13:58:35', '2019-05-10 13:58:35', '2020-05-10 13:58:35');
INSERT INTO `oauth_access_tokens` VALUES ('7faa06fded3cefd3b20590ea56819dc8e4771aa129fa6d33be232fd852a86727d32ee2340dab36bf', 2, 5, 'MyApp', '[]', 0, '2019-09-13 14:11:21', '2019-09-13 14:11:21', '2020-09-13 14:11:21');
INSERT INTO `oauth_access_tokens` VALUES ('7fcc41c3c7e0b7e18b4a805e319c20ebd160c2be6f5903b830de4e92d063afa2099ff72190be6ebb', 2, 9, 'MyApp', '[]', 0, '2020-02-03 10:56:54', '2020-02-03 10:56:54', '2021-02-03 10:56:54');
INSERT INTO `oauth_access_tokens` VALUES ('8003504115997ba82b125bb797dd41dcd88cebfe325c9d21d98854628b9ad707b7d7bd04b828275a', 2, 9, 'MyApp', '[]', 0, '2020-02-15 14:55:29', '2020-02-15 14:55:29', '2021-02-15 14:55:29');
INSERT INTO `oauth_access_tokens` VALUES ('8082575ad3affa2f8fd574a6b89ea9c780beb27597c595792f95d569d6b948024f6c236892887fdb', 2, 1, 'MyApp', '[]', 0, '2019-05-08 21:07:41', '2019-05-08 21:07:41', '2020-05-08 21:07:41');
INSERT INTO `oauth_access_tokens` VALUES ('809d8aa479d04d48e514eb5374d4f74f447ebc0e8fef2096706f879bddde25029300ba89038aea0e', 2, 1, 'MyApp', '[]', 0, '2019-06-17 08:22:18', '2019-06-17 08:22:18', '2020-06-17 08:22:18');
INSERT INTO `oauth_access_tokens` VALUES ('80e67f5770458e7c116c533376a47afcc6314475956fdd2194befde4f9ae3a6b4d5976a2fe7257f3', 2, 9, 'MyApp', '[]', 0, '2020-03-04 08:27:08', '2020-03-04 08:27:08', '2021-03-04 08:27:08');
INSERT INTO `oauth_access_tokens` VALUES ('80f632630c3b5a1820417e07e66c83cdfc6aa408eb29be234bd26211380b98078b31c255f369b6d6', 2, 9, 'MyApp', '[]', 0, '2020-03-11 13:35:13', '2020-03-11 13:35:13', '2021-03-11 13:35:13');
INSERT INTO `oauth_access_tokens` VALUES ('826e068d775d21d4a42be19cfa3b7442952e2dc15c6d9348c1ac5aa2e3167f9ac2939ed404043d5d', 2, 1, 'MyApp', '[]', 0, '2019-05-11 14:49:54', '2019-05-11 14:49:54', '2020-05-11 14:49:54');
INSERT INTO `oauth_access_tokens` VALUES ('830b9b811bde283b7424f529c43531f008d032684d49c41990ef9d124c9a241184d28781b9590517', 2, 1, 'MyApp', '[]', 0, '2019-06-26 13:51:23', '2019-06-26 13:51:23', '2020-06-26 13:51:23');
INSERT INTO `oauth_access_tokens` VALUES ('83870b82718ef447c79c7e9db8790703bdf0329fb1e613c304f0f99b2bf4593bad36d2a782eab02e', 2, 1, 'MyApp', '[]', 0, '2019-06-05 08:11:10', '2019-06-05 08:11:10', '2020-06-05 08:11:10');
INSERT INTO `oauth_access_tokens` VALUES ('850d51d9b6b911e66b15de4658075119a027a98dc0092d26d221716e856ad7d916ecf9bc3227a8e9', 2, 7, 'MyApp', '[]', 0, '2019-09-20 12:41:15', '2019-09-20 12:41:15', '2020-09-20 12:41:15');
INSERT INTO `oauth_access_tokens` VALUES ('8582a0c2d267710eb00d2d4bd3e8cc64bea8bec6ec487da07d17ab417461f2167c6a06c0e77b7584', 2, 1, 'MyApp', '[]', 0, '2019-06-12 13:58:18', '2019-06-12 13:58:18', '2020-06-12 13:58:18');
INSERT INTO `oauth_access_tokens` VALUES ('870922a6bf84220acb1de1b4982f8cef476e390083b1c2360427e5c9cec76fb16e94d6d2c180aa99', 26, 1, 'MyApp', '[]', 0, '2019-08-01 16:50:55', '2019-08-01 16:50:55', '2020-08-01 16:50:55');
INSERT INTO `oauth_access_tokens` VALUES ('876aa6a3081bf953544f0bbca34a6408e233d61da30e361923ba2f517c0ebb0b9c60247edc239174', 2, 7, 'MyApp', '[]', 0, '2019-09-24 15:29:46', '2019-09-24 15:29:46', '2020-09-24 15:29:46');
INSERT INTO `oauth_access_tokens` VALUES ('876e654cceb60a716206813893c111a0b7672ff9964d11cea3354474b82fc0b602bcf7c6e3952d82', 2, 1, 'MyApp', '[]', 0, '2019-06-25 16:19:17', '2019-06-25 16:19:17', '2020-06-25 16:19:17');
INSERT INTO `oauth_access_tokens` VALUES ('87ebdd53ca407b004d09e3f2d1ffff6303130d3021ab06fe76604be837445cb72319de1ab339dab9', 2, 1, 'MyApp', '[]', 0, '2019-07-16 11:24:33', '2019-07-16 11:24:33', '2020-07-16 11:24:33');
INSERT INTO `oauth_access_tokens` VALUES ('884df25b8d2d8f07c6f719da19f57485fb3be7e149fb1389890d0fe6f6daf674085200985f258dbb', 29, 1, 'MyApp', '[]', 0, '2019-08-01 17:50:50', '2019-08-01 17:50:50', '2020-08-01 17:50:50');
INSERT INTO `oauth_access_tokens` VALUES ('893cde9fc94d443660ba6b1d87a11fb01d34df8e8e9c593b3edc565cb55a80ab33b26823f49fc2fa', 16, 1, 'MyApp', '[]', 0, '2019-05-18 08:56:34', '2019-05-18 08:56:34', '2020-05-18 08:56:34');
INSERT INTO `oauth_access_tokens` VALUES ('8a0aa2ea89018a3ff1cc65e1c802fbecc0248039300c146a57489f659d0554d1bd18f8f1d4c87f89', 2, 9, 'MyApp', '[]', 0, '2020-03-07 14:23:47', '2020-03-07 14:23:47', '2021-03-07 14:23:47');
INSERT INTO `oauth_access_tokens` VALUES ('8a271f3a720c69782cacf29f0e1c45b7d87285f49e9c95f798b05ba5da6feaa6b6520301216fbc13', 30, 3, 'MyApp', '[]', 0, '2019-09-01 10:10:14', '2019-09-01 10:10:14', '2020-09-01 10:10:14');
INSERT INTO `oauth_access_tokens` VALUES ('8b5f83c4e18dee6cb0f4233f1416c202cda6d7b9a8d175c7bbdc1126a3493d15e25d18faf96ea047', 2, 1, 'MyApp', '[]', 0, '2019-05-15 15:08:05', '2019-05-15 15:08:05', '2020-05-15 15:08:05');
INSERT INTO `oauth_access_tokens` VALUES ('8bf073bfb40c8f26daf32885f13fb64bad31f87d630b4cba4ad99cdcd242c7a3393946ccbc96961c', 2, 1, 'MyApp', '[]', 0, '2019-07-14 19:14:55', '2019-07-14 19:14:55', '2020-07-14 19:14:55');
INSERT INTO `oauth_access_tokens` VALUES ('8c55d72f2cac537f3bcef521be4ae2e14f3cb4975f89ae7848ec9e3be343a7fc2822c350fe079d16', 2, 1, 'MyApp', '[]', 0, '2019-08-01 17:49:38', '2019-08-01 17:49:38', '2020-08-01 17:49:38');
INSERT INTO `oauth_access_tokens` VALUES ('8d34e83c73e0dd3f8fb699b696a90ef7b292d24cba6394d48affc01774b6654b483bf904c6e620b8', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:42:32', '2019-05-17 09:42:32', '2020-05-17 09:42:32');
INSERT INTO `oauth_access_tokens` VALUES ('8d48005d2de0b2d01b9b345a1cb009639aad9cf61acfd69c7a761fa6a5798ace3af4e9701167f8ef', 2, 7, 'MyApp', '[]', 0, '2019-09-17 14:10:47', '2019-09-17 14:10:47', '2020-09-17 14:10:47');
INSERT INTO `oauth_access_tokens` VALUES ('8d50b826dacc986631f6304d16bde3a67224475800f3fe352915ce7c9e1208c90c53d7fb40d85446', 2, 1, 'MyApp', '[]', 0, '2019-06-11 20:27:25', '2019-06-11 20:27:25', '2020-06-11 20:27:25');
INSERT INTO `oauth_access_tokens` VALUES ('8d8ec8fb690211ecf871b5357e0614a0c8dcd59d7b7b6feb02a67073f002f206a806c994c864cb93', 2, 1, 'MyApp', '[]', 0, '2019-06-08 22:40:03', '2019-06-08 22:40:03', '2020-06-08 22:40:03');
INSERT INTO `oauth_access_tokens` VALUES ('8d8f42f3196d79e6d7a5f3df2dc3b1fe23965b534fda8f24e34aee9636e2c417658c0efd6eef68da', 2, 1, 'MyApp', '[]', 0, '2019-07-08 16:49:58', '2019-07-08 16:49:58', '2020-07-08 16:49:58');
INSERT INTO `oauth_access_tokens` VALUES ('8e29e5f7bea9377cb56a4b449a523639e0e40187e3b573158d7e5875f0d09bebed2701270f9ed1df', 2, 9, 'MyApp', '[]', 0, '2020-02-04 16:01:49', '2020-02-04 16:01:49', '2021-02-04 16:01:49');
INSERT INTO `oauth_access_tokens` VALUES ('9046bc10022bc3fe333c454a67c0ad3f25ea3a6994d4cdb4b8dadcb37063eb027fa9e2493ba8bb55', 2, 1, 'MyApp', '[]', 0, '2019-06-27 13:36:37', '2019-06-27 13:36:37', '2020-06-27 13:36:37');
INSERT INTO `oauth_access_tokens` VALUES ('90ba76c22e3e57985c99f55321015902bd43df32bd70750cb577ffb26e872500432385a1071157b2', 2, 7, 'MyApp', '[]', 0, '2019-10-15 09:17:14', '2019-10-15 09:17:14', '2020-10-15 09:17:14');
INSERT INTO `oauth_access_tokens` VALUES ('9164a7fe34814eed1ed8c53c22dd863104871ee90029dbfa6f65aafbd8baff7fdb869e556f7d602e', 2, 9, 'MyApp', '[]', 0, '2020-03-02 09:02:20', '2020-03-02 09:02:20', '2021-03-02 09:02:20');
INSERT INTO `oauth_access_tokens` VALUES ('91c07e9d787a7ff61e2fc36bb40bb15f126e5d5b3303370a2990c968e31acc244c692b9f25859f98', 2, 9, 'MyApp', '[]', 0, '2020-03-08 16:53:02', '2020-03-08 16:53:02', '2021-03-08 16:53:02');
INSERT INTO `oauth_access_tokens` VALUES ('93e3e9cc1d1dda63d76de5c82ac892695cfa728b2441d8d8e96cba0557f243bff7a31e28c208d749', 28, 1, 'MyApp', '[]', 0, '2019-08-01 16:56:43', '2019-08-01 16:56:43', '2020-08-01 16:56:43');
INSERT INTO `oauth_access_tokens` VALUES ('9451d5fa3edffe8a26a5a9f230e3a1525360a8fb4502456e24baa6e0bb368cf64a783d5f35e284dc', 2, 7, 'MyApp', '[]', 0, '2019-10-23 16:44:17', '2019-10-23 16:44:17', '2020-10-23 16:44:17');
INSERT INTO `oauth_access_tokens` VALUES ('956119920acaed8907b028192d2db47ea1074406540b328ed5ecacbcc4282cfbd871b41045ddeb57', 2, 9, 'MyApp', '[]', 0, '2020-02-08 12:49:34', '2020-02-08 12:49:34', '2021-02-08 12:49:34');
INSERT INTO `oauth_access_tokens` VALUES ('9850dee9625374d277c156c78cd112cfb6e51d41befd5f9a520159145ca146eee4d897de501c7381', 2, 7, 'MyApp', '[]', 0, '2019-09-28 22:43:41', '2019-09-28 22:43:41', '2020-09-28 22:43:41');
INSERT INTO `oauth_access_tokens` VALUES ('98a6f00376e75989642d08e34f5f224c8fb27bd3b34a32d50291717321265cfc3ddca23406ca87db', 2, 1, 'MyApp', '[]', 0, '2019-08-23 11:10:57', '2019-08-23 11:10:57', '2020-08-23 11:10:57');
INSERT INTO `oauth_access_tokens` VALUES ('991932e8988494f0559e93420d89944b3eb7ad7ad9046048915b19268abab6bb5cc1c62ee4cefca8', 2, 1, 'MyApp', '[]', 0, '2019-05-04 18:03:10', '2019-05-04 18:03:10', '2020-05-04 18:03:10');
INSERT INTO `oauth_access_tokens` VALUES ('99409acf139f3061fbde36e775502bdd970690ef1c4eefd9ab9d1e505834f26c0b298b329e35d90f', 2, 9, 'MyApp', '[]', 0, '2020-03-10 10:50:16', '2020-03-10 10:50:16', '2021-03-10 10:50:16');
INSERT INTO `oauth_access_tokens` VALUES ('9a694520f6b84a7b83a6726a349cffa9dff332dec8d46fa0a8eca9395f152f61b622dcd7df980182', 24, 1, 'MyApp', '[]', 0, '2019-08-01 17:46:20', '2019-08-01 17:46:20', '2020-08-01 17:46:20');
INSERT INTO `oauth_access_tokens` VALUES ('9b2d032065278cc4ba102d36ac8ae942aea78e586596849ff2b6e22c0f04e068aa5001c4252fcc35', 2, 5, 'MyApp', '[]', 0, '2019-09-09 10:52:11', '2019-09-09 10:52:11', '2020-09-09 10:52:11');
INSERT INTO `oauth_access_tokens` VALUES ('9b96e18443e36eb25a504938349045ab1a01ece7337b890779e6a61ae34ec4540a9a360c7811d30f', 2, 1, 'MyApp', '[]', 0, '2019-07-24 13:32:05', '2019-07-24 13:32:05', '2020-07-24 13:32:05');
INSERT INTO `oauth_access_tokens` VALUES ('9bba88e9d87e0ec78a35d5257ca44a10e77506eb4cfb606041ce3d3db9520067a5767ec9f150fb1c', 2, 1, 'MyApp', '[]', 0, '2019-04-17 08:46:50', '2019-04-17 08:46:50', '2020-04-17 08:46:50');
INSERT INTO `oauth_access_tokens` VALUES ('9da2db5f94161b541c8d644a7bbb0d3e24a9071e4af6254819690614d4e6eb720bdb87f7ea4ae47b', 2, 1, 'MyApp', '[]', 0, '2019-06-05 10:24:05', '2019-06-05 10:24:05', '2020-06-05 10:24:05');
INSERT INTO `oauth_access_tokens` VALUES ('9feeb2cf0d0a713ac191913f4f676549a37943f4dd4c79f7b3e5b37152f5dbab483bb77eb575db7d', 2, 9, 'MyApp', '[]', 0, '2020-03-09 16:38:18', '2020-03-09 16:38:18', '2021-03-09 16:38:18');
INSERT INTO `oauth_access_tokens` VALUES ('a04e68f91fd3bd84edda653e359bcbfa9dfdcbb54beaba6ea41af098e086d1470eef3a929eaac16d', 2, 9, 'MyApp', '[]', 0, '2020-03-13 22:07:55', '2020-03-13 22:07:55', '2021-03-13 22:07:55');
INSERT INTO `oauth_access_tokens` VALUES ('a06ad6bc9ebe165b2b4302af7e716d0296b00b418511335d92fd92169581a1c75fb5858810dbc021', 2, 1, 'MyApp', '[]', 0, '2019-07-22 08:44:59', '2019-07-22 08:44:59', '2020-07-22 08:44:59');
INSERT INTO `oauth_access_tokens` VALUES ('a079e3f003ea2847b1f53a00528b009d982dde864f8d3e4fea0c3aafa967f0694084d956aac112ba', 2, 1, 'MyApp', '[]', 0, '2019-05-13 08:08:57', '2019-05-13 08:08:57', '2020-05-13 08:08:57');
INSERT INTO `oauth_access_tokens` VALUES ('a0fbfb03a0d8eb10f3baa098b6cae6e8df9c1b03095cba56d9c8393360d7231c8838bbda4e63ecc7', 16, 1, 'MyApp', '[]', 0, '2019-05-20 09:27:16', '2019-05-20 09:27:16', '2020-05-20 09:27:16');
INSERT INTO `oauth_access_tokens` VALUES ('a1bffd81cbce675dc6671c4ba14e271ec420a1dd2125afcc21ca0010c37483a0844146aebd9edfb4', 2, 9, 'MyApp', '[]', 0, '2020-02-26 16:25:02', '2020-02-26 16:25:02', '2021-02-26 16:25:02');
INSERT INTO `oauth_access_tokens` VALUES ('a28a87583b0af205b6171128af5616c51edef53433f61162f145258a7951f081a160022914f60304', 2, 1, 'MyApp', '[]', 0, '2019-06-05 14:30:32', '2019-06-05 14:30:32', '2020-06-05 14:30:32');
INSERT INTO `oauth_access_tokens` VALUES ('a3298a5df2ee219b30885500eb88dde4c825f8e90809c79dcc074eb13568ee39899fcd27f4c997c6', 2, 1, 'MyApp', '[]', 0, '2019-03-05 14:43:40', '2019-03-05 14:43:40', '2020-03-05 14:43:40');
INSERT INTO `oauth_access_tokens` VALUES ('a3ca726af4a336a81e728b7a9700a2813ba0eab9879cda175d0d2cbfa4c963f1afb12c136781a4bb', 2, 1, 'MyApp', '[]', 0, '2019-06-18 20:27:24', '2019-06-18 20:27:24', '2020-06-18 20:27:24');
INSERT INTO `oauth_access_tokens` VALUES ('a4098adffd428a36ea6900bafba5da43b526d5c40ac7c35038321191e5688b2a6a7ea39de7bf23bf', 2, 1, 'MyApp', '[]', 0, '2019-07-04 21:12:12', '2019-07-04 21:12:12', '2020-07-04 21:12:12');
INSERT INTO `oauth_access_tokens` VALUES ('a467a9d63cd99dd6e4c2de12e6730d10454fc36a5239c38d7e6663aec773db73a16b8b6c4681c6ac', 2, 1, 'MyApp', '[]', 0, '2019-07-30 08:21:13', '2019-07-30 08:21:13', '2020-07-30 08:21:13');
INSERT INTO `oauth_access_tokens` VALUES ('a4a0d89cfacd2e4fa4ff8247f7a30acd12fb5adac78acb13f00cb1f66b2440f3dfd1616a8143abf4', 2, 1, 'MyApp', '[]', 0, '2019-03-06 08:23:41', '2019-03-06 08:23:41', '2020-03-06 08:23:41');
INSERT INTO `oauth_access_tokens` VALUES ('a513e9b3e2f1079d416a65a1d94e4884c70c05621ecb0abdbef460283c0edef03555735fae3fe0b6', 24, 1, 'MyApp', '[]', 0, '2019-08-01 16:52:49', '2019-08-01 16:52:49', '2020-08-01 16:52:49');
INSERT INTO `oauth_access_tokens` VALUES ('a58689b181f8cacb6aece9bdd27ef5056b1796b94790978ea7d58f4945e386fe8a8847cb488e6e38', 2, 7, 'MyApp', '[]', 0, '2019-10-14 08:25:21', '2019-10-14 08:25:21', '2020-10-14 08:25:21');
INSERT INTO `oauth_access_tokens` VALUES ('a7a8eae946a69943cd354815a800cd8823a8a3289b1b9b3f75bb1c7cf432546e0f9b065666e75da9', 2, 1, 'MyApp', '[]', 0, '2019-05-07 20:36:13', '2019-05-07 20:36:13', '2020-05-07 20:36:13');
INSERT INTO `oauth_access_tokens` VALUES ('a807201b6c0ebb50b570f25844be5389d4056c235b4f395660b027b80a48ac98245c1ba485c81ec3', 24, 9, 'MyApp', '[]', 0, '2020-03-08 17:24:29', '2020-03-08 17:24:29', '2021-03-08 17:24:29');
INSERT INTO `oauth_access_tokens` VALUES ('a83ee22ce98c9b1ee513e504ffce7a672c535f4eb868d7804a5660945f88dbec61d8fb8f856fb28b', 23, 1, 'MyApp', '[]', 0, '2019-08-01 16:40:25', '2019-08-01 16:40:25', '2020-08-01 16:40:25');
INSERT INTO `oauth_access_tokens` VALUES ('a869cba2e864239b3fd7b0d8edbbc2be087267822ea3bcb4d9348f59225aca932af8f40745fc8a93', 18, 1, 'MyApp', '[]', 0, '2019-08-01 08:29:52', '2019-08-01 08:29:52', '2020-08-01 08:29:52');
INSERT INTO `oauth_access_tokens` VALUES ('a87ddbf3f4e516e33f1fe2bd7a5b4599007bee7c0a99180a1353a3970eab9588d67f1b06f4204422', 2, 9, 'MyApp', '[]', 0, '2020-03-08 19:04:42', '2020-03-08 19:04:42', '2021-03-08 19:04:42');
INSERT INTO `oauth_access_tokens` VALUES ('aaa4922e63eaef2d316628fa41754a6ea34bde6c4998dc25c77d17fcdf9c4878d3d971b24dabf735', 2, 1, 'MyApp', '[]', 0, '2019-04-17 15:11:02', '2019-04-17 15:11:02', '2020-04-17 15:11:02');
INSERT INTO `oauth_access_tokens` VALUES ('aaad744270954488bca3097f31100a6db3e515a992982e33a868915cbe68bfe46437e8763b3ee497', 16, 1, 'MyApp', '[]', 0, '2019-05-17 16:04:59', '2019-05-17 16:04:59', '2020-05-17 16:04:59');
INSERT INTO `oauth_access_tokens` VALUES ('ab868f37953c95ff2fe4eba6f02138cda88889d957d0e0d1fbcb6e3f7035ba4cfce82f5de6e6e275', 2, 1, 'MyApp', '[]', 0, '2019-04-08 15:11:24', '2019-04-08 15:11:24', '2020-04-08 15:11:24');
INSERT INTO `oauth_access_tokens` VALUES ('ac72613869d4ae3e97a12b669f475f018845bac34378a7b4845011b7de543251bb1b8b3c7c15c567', 2, 1, 'MyApp', '[]', 0, '2019-08-01 22:52:54', '2019-08-01 22:52:54', '2020-08-01 22:52:54');
INSERT INTO `oauth_access_tokens` VALUES ('ad0390d653be4e1536cf8bed90e4920ba453f16f66a6ee90d4edd5022c7c5701dfc58aaa3a17768e', 2, 9, 'MyApp', '[]', 0, '2020-03-06 16:44:02', '2020-03-06 16:44:02', '2021-03-06 16:44:02');
INSERT INTO `oauth_access_tokens` VALUES ('ae33bda2c9f4146b4392f6e8d98a83ad23f594e6d3310d1e04c845c3867430d4c5d23bdbd86a2463', 2, 9, 'MyApp', '[]', 0, '2020-01-29 00:01:19', '2020-01-29 00:01:19', '2021-01-29 00:01:19');
INSERT INTO `oauth_access_tokens` VALUES ('aef69bc5d9d09e2338961f43503d36f7650c975c89c57bba66585643f570b34dcd51bd6900b12a64', 2, 9, 'MyApp', '[]', 0, '2020-02-01 12:39:12', '2020-02-01 12:39:12', '2021-02-01 12:39:12');
INSERT INTO `oauth_access_tokens` VALUES ('afba9dadd72aa517ff466752b8d6c861b38adcb5e8c28ae7087bcbae7f4f4c84bd40d6401d7f6525', 2, 9, 'MyApp', '[]', 0, '2020-03-08 17:22:33', '2020-03-08 17:22:33', '2021-03-08 17:22:33');
INSERT INTO `oauth_access_tokens` VALUES ('b0e45966d18e1111ed93409ce2045302d59d7ad2c3d299ec2933f3343a0fd3800ab03d707b124ee2', 2, 3, 'MyApp', '[]', 0, '2019-08-27 20:03:44', '2019-08-27 20:03:44', '2020-08-27 20:03:44');
INSERT INTO `oauth_access_tokens` VALUES ('b34a24a2b8c978632ec7c8cd362f41f0cd5037b8750e49401aa431751290bf418f54fd0539ff24cb', 16, 1, 'MyApp', '[]', 0, '2019-05-17 17:27:34', '2019-05-17 17:27:34', '2020-05-17 17:27:34');
INSERT INTO `oauth_access_tokens` VALUES ('b36753766b86993be21e5c8436c6f81e59c47d542d61c6f407bc3826efd64bbb700b1e19328c4a80', 2, 9, 'MyApp', '[]', 0, '2020-02-09 09:34:07', '2020-02-09 09:34:07', '2021-02-09 09:34:07');
INSERT INTO `oauth_access_tokens` VALUES ('b3dbd75c5aef6be09470b649d032dee4af35a3284ce4b75b87443fd4316b18faa29753d560883571', 2, 9, 'MyApp', '[]', 0, '2020-02-06 16:27:38', '2020-02-06 16:27:38', '2021-02-06 16:27:38');
INSERT INTO `oauth_access_tokens` VALUES ('b45aaed65e12443d8460c6a8edb9a3da27db514ca07aecd2cc8057a47ed8d6f52460d50624ddedad', 2, 1, 'MyApp', '[]', 0, '2019-06-26 15:00:44', '2019-06-26 15:00:44', '2020-06-26 15:00:44');
INSERT INTO `oauth_access_tokens` VALUES ('b45ae5222c4aa29bebf06a47f1f8451cad862cbededcebc663caa2dbb270ba58a9e6443faf4e81f3', 2, 1, 'MyApp', '[]', 0, '2019-06-01 08:07:35', '2019-06-01 08:07:35', '2020-06-01 08:07:35');
INSERT INTO `oauth_access_tokens` VALUES ('b572c6a2b427344728bfa8150882dd9a74feceee56846ca16d9e2218517628afbb153887fc8350c7', 2, 1, 'MyApp', '[]', 0, '2019-06-13 08:10:12', '2019-06-13 08:10:12', '2020-06-13 08:10:12');
INSERT INTO `oauth_access_tokens` VALUES ('b5b92a4a40186a7b769eca73469e06d1dfda1f2151c3071008685a7511821eb6cbe98a9d70117245', 2, 9, 'MyApp', '[]', 0, '2020-02-28 15:39:18', '2020-02-28 15:39:18', '2021-02-28 15:39:18');
INSERT INTO `oauth_access_tokens` VALUES ('b5bdb4e4e8f75a1f46aa2cf9bc4213e8d9a8d772756b11a2c5b5291e73d890476c69aa948881a060', 2, 9, 'MyApp', '[]', 0, '2020-02-18 14:52:43', '2020-02-18 14:52:43', '2021-02-18 14:52:43');
INSERT INTO `oauth_access_tokens` VALUES ('b65902c224481a8cc80e985d8a19a8d355e027c60d7d248cd06788fca8a94d27e0bee5ffa01d9548', 2, 1, 'MyApp', '[]', 0, '2019-06-20 08:18:24', '2019-06-20 08:18:24', '2020-06-20 08:18:24');
INSERT INTO `oauth_access_tokens` VALUES ('b68fc76b4cf8ab066dc1f93f6339f07ccb349b3735a2e2c4838e086d9ca9873f35349347fbbc6ab6', 2, 1, 'MyApp', '[]', 0, '2019-05-31 08:12:06', '2019-05-31 08:12:06', '2020-05-31 08:12:06');
INSERT INTO `oauth_access_tokens` VALUES ('b72a19b2ca359e6b1f19e385c9fc7788193520b1e8ee36ae6043416f0cc9df206189ad189f8a72ff', 2, 1, 'MyApp', '[]', 0, '2019-06-05 14:59:33', '2019-06-05 14:59:33', '2020-06-05 14:59:33');
INSERT INTO `oauth_access_tokens` VALUES ('b78dc4d321e2c1918e4c9f0ab6342742369464c3e6a83c8cdae4e6ff6588a3d8b6c80b21a536eba0', 2, 1, 'MyApp', '[]', 0, '2019-05-16 19:00:23', '2019-05-16 19:00:23', '2020-05-16 19:00:23');
INSERT INTO `oauth_access_tokens` VALUES ('b832fe9b7abbe886c3d5b9d2bb96d31b9f4c9b189fddf206b0472eebec1672a01b28711f2724c700', 2, 1, 'MyApp', '[]', 0, '2019-06-27 08:21:03', '2019-06-27 08:21:03', '2020-06-27 08:21:03');
INSERT INTO `oauth_access_tokens` VALUES ('b8501e0320a46169a7dc8903e396f9301006a380db27d6af94129aac90c3f52a6e899de9fb558366', 2, 1, 'MyApp', '[]', 0, '2019-06-24 16:58:32', '2019-06-24 16:58:32', '2020-06-24 16:58:32');
INSERT INTO `oauth_access_tokens` VALUES ('b892d31e4f216b5e841a64a37a1396430a8acea2cfc1882df62cd93a68da0310f20217af3af787ba', 2, 7, 'MyApp', '[]', 0, '2019-11-21 09:48:08', '2019-11-21 09:48:08', '2020-11-21 09:48:08');
INSERT INTO `oauth_access_tokens` VALUES ('b8df5d41e814fe0747f1e4055f7a3616ea8b53c28c3f1ad51cfb66146666a1e451573b2838f287cd', 2, 1, 'MyApp', '[]', 0, '2019-07-25 08:12:34', '2019-07-25 08:12:34', '2020-07-25 08:12:34');
INSERT INTO `oauth_access_tokens` VALUES ('b90668e6b1c11d5495d63289a12d3a82e0e4b6d02a75c806a9b27b70e62d9f701263fa80f65f410e', 2, 9, 'MyApp', '[]', 0, '2020-01-26 17:50:11', '2020-01-26 17:50:11', '2021-01-26 17:50:11');
INSERT INTO `oauth_access_tokens` VALUES ('b9d2f38ce6f67e2fc94907bd3382f20b84e79fa3050a4e9614aa329ea6d6599fa39a7811ab942bca', 18, 1, 'MyApp', '[]', 0, '2019-05-20 10:10:42', '2019-05-20 10:10:42', '2020-05-20 10:10:42');
INSERT INTO `oauth_access_tokens` VALUES ('ba863d122de17d4aaf1ba38733c0da9cf955f1fc3301376fc516fec0bc043e7646fffea88845eba3', 23, 1, 'MyApp', '[]', 0, '2019-08-02 08:48:46', '2019-08-02 08:48:46', '2020-08-02 08:48:46');
INSERT INTO `oauth_access_tokens` VALUES ('bb4f29906f22c4a681daa5ab02ac0dd7169f7c2478fa29ee3055b3c7849e361d3372d26ee01fa851', 15, 1, 'MyApp', '[]', 0, '2019-05-10 13:59:50', '2019-05-10 13:59:50', '2020-05-10 13:59:50');
INSERT INTO `oauth_access_tokens` VALUES ('bbb3670139a2aaef2c2df06c1afe5cde68f3cfb8cf0d5c3c4e3606231c315c3bc30e063c053dc988', 2, 9, 'MyApp', '[]', 0, '2020-03-04 20:50:32', '2020-03-04 20:50:32', '2021-03-04 20:50:32');
INSERT INTO `oauth_access_tokens` VALUES ('bbf2251bfb71cd902e1bde4451ad73633be162d6715a6b0aeab1197c371250c15992f79a12d42e97', 2, 9, 'MyApp', '[]', 0, '2020-01-26 10:42:45', '2020-01-26 10:42:45', '2021-01-26 10:42:45');
INSERT INTO `oauth_access_tokens` VALUES ('bc770cf7927b373b75211a1c39489e6147cc4d9dabf35e708ff7c5a0bc8382e322992a739a4c3b67', 2, 1, 'MyApp', '[]', 0, '2019-04-24 14:44:39', '2019-04-24 14:44:39', '2020-04-24 14:44:39');
INSERT INTO `oauth_access_tokens` VALUES ('bcbed5ab3f6e097d6ad36bf6703f098f4954617ea8ca4946f4e9092267041d24430038e4f2bcc131', 2, 1, 'MyApp', '[]', 0, '2019-02-27 10:14:16', '2019-02-27 10:14:16', '2020-02-27 10:14:16');
INSERT INTO `oauth_access_tokens` VALUES ('bd14264fb1ea6578e9bbecd7cd180ba56f40ea6f03f0f2f3a8697ece33fb7d213c7bfdbc1a34d14f', 2, 9, 'MyApp', '[]', 0, '2020-02-05 09:40:57', '2020-02-05 09:40:57', '2021-02-05 09:40:57');
INSERT INTO `oauth_access_tokens` VALUES ('bd478e91b3fedca43b66d583ad09c3e1613763c3e344f55c66c4a0a4ccfec7e0ce38b4a0f9942c3a', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:36:49', '2019-05-17 09:36:49', '2020-05-17 09:36:49');
INSERT INTO `oauth_access_tokens` VALUES ('be295188193163a7864d4368da2e87b8448b4933495a5d6d5b4e5f93a978081f8f9aae9cb5c860fb', 2, 1, 'MyApp', '[]', 0, '2019-04-24 08:08:03', '2019-04-24 08:08:03', '2020-04-24 08:08:03');
INSERT INTO `oauth_access_tokens` VALUES ('c04addffdc549131b92bdf5f2c8d1276c68e5ba0f9601eedfb5462f676b6a5693431ff4b4267da36', 2, 1, 'MyApp', '[]', 0, '2019-05-15 08:15:03', '2019-05-15 08:15:03', '2020-05-15 08:15:03');
INSERT INTO `oauth_access_tokens` VALUES ('c0ab0c07348a1da781db090c2a6c4faae17e0e4364f04bbadf372f6a1f878e17d0fda9ab0f888604', 2, 3, 'MyApp', '[]', 0, '2019-08-31 15:12:57', '2019-08-31 15:12:57', '2020-08-31 15:12:57');
INSERT INTO `oauth_access_tokens` VALUES ('c0ebcd2a5cdc1c24eb78c811a8e31a3a1bff8023390e89292cc29a3f74e12c83d78b6e48fe5b64e2', 2, 1, 'MyApp', '[]', 0, '2019-06-07 18:53:50', '2019-06-07 18:53:50', '2020-06-07 18:53:50');
INSERT INTO `oauth_access_tokens` VALUES ('c10d0b5c6979c9110bfac421c084dfd034b484e38228bab73f4949356abe614d93dd54bfe68726db', 2, 5, 'MyApp', '[]', 0, '2019-09-14 08:11:44', '2019-09-14 08:11:44', '2020-09-14 08:11:44');
INSERT INTO `oauth_access_tokens` VALUES ('c17e88138ef64e461aef135263cb60766aae95f140bcc78272426656926c269486dec96fa9548e79', 2, 1, 'MyApp', '[]', 0, '2019-07-29 08:22:05', '2019-07-29 08:22:05', '2020-07-29 08:22:05');
INSERT INTO `oauth_access_tokens` VALUES ('c336413a1a7b614f9c3b1cc542fc26ba33568881af0ca5a238696c6c4186005a7b8889096dbbe5dd', 2, 1, 'MyApp', '[]', 0, '2019-05-24 08:12:32', '2019-05-24 08:12:32', '2020-05-24 08:12:32');
INSERT INTO `oauth_access_tokens` VALUES ('c37225ef1539303153ec7e3625f3c4c5c47f7c5183b2b32c208452a4d559dd66dfdc72580782022a', 2, 1, 'MyApp', '[]', 0, '2019-04-09 11:01:23', '2019-04-09 11:01:23', '2020-04-09 11:01:23');
INSERT INTO `oauth_access_tokens` VALUES ('c66bf89ed3c15e4b92ab86d63b707d7b5d3b2d0e8d73b77b3d9c2e176ea0e7f35675d1ad56ff60a4', 2, 1, 'MyApp', '[]', 0, '2019-05-17 08:45:50', '2019-05-17 08:45:50', '2020-05-17 08:45:50');
INSERT INTO `oauth_access_tokens` VALUES ('c71c50272f464e51f02d0bfe55b937675318351fa2f0bc367d2acd201e27b983becd59f4dd518abe', 14, 1, 'MyApp', '[]', 0, '2019-05-08 22:11:56', '2019-05-08 22:11:56', '2020-05-08 22:11:56');
INSERT INTO `oauth_access_tokens` VALUES ('c75e9a4299e0b85bb8dc94d30c406690c4fccf2e731ea360cbee0d4c34ab4f32075f26cb5ea946a8', 2, 5, 'MyApp', '[]', 0, '2019-09-10 08:17:58', '2019-09-10 08:17:58', '2020-09-10 08:17:58');
INSERT INTO `oauth_access_tokens` VALUES ('c76ab95b6ca6d6a61edd95e802f5453f665846d9503bc544d63b1714af382c4b375a710d38fcd2c0', 2, 7, 'MyApp', '[]', 0, '2019-11-12 13:30:28', '2019-11-12 13:30:28', '2020-11-12 13:30:28');
INSERT INTO `oauth_access_tokens` VALUES ('c7df752287b9f44570cd28ee07fa1e8ca432905d801c3803aff128ed8fd9b3367127740abcdc9c8a', 2, 9, 'MyApp', '[]', 0, '2020-02-06 09:57:06', '2020-02-06 09:57:06', '2021-02-06 09:57:06');
INSERT INTO `oauth_access_tokens` VALUES ('c9dc32450fa3678a3011a88d25f008df0f97444b3fd4b7997403a2fc50619065ec24eb4d34996cef', 2, 1, 'MyApp', '[]', 0, '2019-08-24 08:29:02', '2019-08-24 08:29:02', '2020-08-24 08:29:02');
INSERT INTO `oauth_access_tokens` VALUES ('ca0830b60fdd6ff23e8068066fe3592922922871622dd9e3bdaded4e6d0af13de5215963242e453b', 2, 1, 'MyApp', '[]', 0, '2019-06-27 11:42:44', '2019-06-27 11:42:44', '2020-06-27 11:42:44');
INSERT INTO `oauth_access_tokens` VALUES ('ca9087419ae0358f575af4a602fcecc0f2f54ebff8294f5c99e72d0b3d48e307e17f581b1eb80a15', 2, 1, 'MyApp', '[]', 0, '2019-04-18 08:32:48', '2019-04-18 08:32:48', '2020-04-18 08:32:48');
INSERT INTO `oauth_access_tokens` VALUES ('caa5829e589e32b969468fae1ad69e03ecdd69b997018399dd9fd21910838e943e0d0658f6f033e0', 11, 1, 'MyApp', '[]', 0, '2019-05-07 20:30:27', '2019-05-07 20:30:27', '2020-05-07 20:30:27');
INSERT INTO `oauth_access_tokens` VALUES ('caf233061a79e92ec8f62209dc61fee142f30200459f63c6101d56f83bdbf3a7aaaba99b39cf38fb', 2, 1, 'MyApp', '[]', 0, '2019-07-15 21:38:05', '2019-07-15 21:38:05', '2020-07-15 21:38:05');
INSERT INTO `oauth_access_tokens` VALUES ('cb0ffa7026ddc4a9259a29276d4d1b57e197070cefe238148fa7d0132a2057392ef71aecd3af6f61', 2, 1, 'MyApp', '[]', 0, '2019-07-02 10:40:45', '2019-07-02 10:40:45', '2020-07-02 10:40:45');
INSERT INTO `oauth_access_tokens` VALUES ('cb694bfb52d361c2bef04d22bd8eca368f6889fbda88e1237b31841eab18ffae7f3c894d7d527fcf', 2, 1, 'MyApp', '[]', 0, '2019-04-20 08:22:12', '2019-04-20 08:22:12', '2020-04-20 08:22:12');
INSERT INTO `oauth_access_tokens` VALUES ('ccdd05d158c5d97cd5658b2a653465e7a7562d4ab6e9e8dfb5485a61461b22e4f7da556ef81af426', 2, 1, 'MyApp', '[]', 0, '2019-06-18 08:14:28', '2019-06-18 08:14:28', '2020-06-18 08:14:28');
INSERT INTO `oauth_access_tokens` VALUES ('ce2b92df610d1638c2a75d423f371f5dd5b902935818851b55385545d91abdb1d71d1292dae62166', 2, 9, 'MyApp', '[]', 0, '2020-03-11 08:15:35', '2020-03-11 08:15:35', '2021-03-11 08:15:35');
INSERT INTO `oauth_access_tokens` VALUES ('cea0de1545baa2a5ea628ac3b342551f11148de095c54674f73b0c4495d96362c149485e48d18e8c', 2, 1, 'MyApp', '[]', 0, '2019-07-17 11:48:02', '2019-07-17 11:48:02', '2020-07-17 11:48:02');
INSERT INTO `oauth_access_tokens` VALUES ('cf918b59b9a43555ab4f6e5b84e875962d123c549652d28071e013ea6c48681fe30d54221f43ddae', 2, 1, 'MyApp', '[]', 0, '2019-06-19 13:32:12', '2019-06-19 13:32:12', '2020-06-19 13:32:12');
INSERT INTO `oauth_access_tokens` VALUES ('d02caadbe84fd28b0aa4211e62994ca49301e0262629b9ad5782f207df349048fdf60856309f9e1a', 27, 1, 'MyApp', '[]', 0, '2019-08-01 16:51:49', '2019-08-01 16:51:49', '2020-08-01 16:51:49');
INSERT INTO `oauth_access_tokens` VALUES ('d09fe90b308eda2daac310b0eb9cdbc739b91fd9ffe51244f405fed15e77d197aba610704b72ec16', 2, 1, 'MyApp', '[]', 0, '2019-07-26 19:04:12', '2019-07-26 19:04:12', '2020-07-26 19:04:12');
INSERT INTO `oauth_access_tokens` VALUES ('d13f0c2e4c697c9d7b266da46569f284d4b6dc87ae1a512b0afa005205e85a1ce2a2cc966684a4f4', 2, 1, 'MyApp', '[]', 0, '2019-04-13 08:19:03', '2019-04-13 08:19:03', '2020-04-13 08:19:03');
INSERT INTO `oauth_access_tokens` VALUES ('d15030a90a5c96a02379defc11f2e964f24160bf7b7c40eabf11490be4da1e49e10a3bc071381666', 2, 3, 'MyApp', '[]', 0, '2019-08-31 13:47:26', '2019-08-31 13:47:26', '2020-08-31 13:47:26');
INSERT INTO `oauth_access_tokens` VALUES ('d16f6d3038c011fb84bf52e54fe91bcb2af735135184c67aefb5cdac4040857cc4edad45f9706244', 2, 1, 'MyApp', '[]', 0, '2019-08-02 09:13:57', '2019-08-02 09:13:57', '2020-08-02 09:13:57');
INSERT INTO `oauth_access_tokens` VALUES ('d196b2697657b0346cb96ece465df61389d7cb63c46acac5ba2aef9959ea2b3dd749aa1e2eceb593', 2, 9, 'MyApp', '[]', 0, '2020-02-04 09:39:40', '2020-02-04 09:39:40', '2021-02-04 09:39:40');
INSERT INTO `oauth_access_tokens` VALUES ('d29912b39930e85e47247b4a592fecff880c0b1c4ba890e03336a8bdbb3997c7443e2a4915d73650', 2, 9, 'MyApp', '[]', 0, '2020-02-02 18:28:23', '2020-02-02 18:28:23', '2021-02-02 18:28:23');
INSERT INTO `oauth_access_tokens` VALUES ('d2c8ca5403cc73031fc6f7fa1790164a9ebd28ec2603e4c5b24aa88c05cf3b043fbc7d953ea2066b', 2, 1, 'MyApp', '[]', 0, '2019-07-04 14:34:53', '2019-07-04 14:34:53', '2020-07-04 14:34:53');
INSERT INTO `oauth_access_tokens` VALUES ('d3b2536339e2c94d48a7caff9373db0ef71f252d3dc137afdfe072864da359a95365aa22d3f2522b', 2, 9, 'MyApp', '[]', 0, '2020-03-04 14:53:26', '2020-03-04 14:53:26', '2021-03-04 14:53:26');
INSERT INTO `oauth_access_tokens` VALUES ('d54d9f21ea288de0d6177acf95a6c449bf591ad9a18e606950084437b54052f1602d7a9ea395beea', 18, 1, 'MyApp', '[]', 0, '2019-08-01 16:35:57', '2019-08-01 16:35:57', '2020-08-01 16:35:57');
INSERT INTO `oauth_access_tokens` VALUES ('d5a2198f95ff44e5489155d375ff56a2b76a8ad74dc269ffa14eaa7f6e9298f5492a0b21da638837', 9, 1, 'MyApp', '[]', 0, '2019-05-07 19:17:11', '2019-05-07 19:17:11', '2020-05-07 19:17:11');
INSERT INTO `oauth_access_tokens` VALUES ('d6a04bb62fee99a1c1caf96009a1e00a376a48fc772a1e7cf6c708bf3425f072b5cd16f0e84c6af9', 2, 1, 'MyApp', '[]', 0, '2019-05-05 16:24:06', '2019-05-05 16:24:06', '2020-05-05 16:24:06');
INSERT INTO `oauth_access_tokens` VALUES ('d836e80f293b2fd237cab37db22dd7f18c9686084094ccffb02c22dc88c1f391d33ddd34bb90e14a', 16, 1, 'MyApp', '[]', 0, '2019-05-17 09:36:04', '2019-05-17 09:36:04', '2020-05-17 09:36:04');
INSERT INTO `oauth_access_tokens` VALUES ('d8a7b0ea0070cc35b5a07d42d6df6e2926eda9100cc5ef6a467762daeae19adf69f3df298802ab6a', 2, 1, 'MyApp', '[]', 0, '2019-05-13 15:28:54', '2019-05-13 15:28:54', '2020-05-13 15:28:54');
INSERT INTO `oauth_access_tokens` VALUES ('d8f2fbeef10c9ed28a33992ccea7cfae9570a35909539e28139fda0eca2fc3421f4fe1305ac0053d', 2, 7, 'MyApp', '[]', 0, '2019-11-12 08:32:39', '2019-11-12 08:32:39', '2020-11-12 08:32:39');
INSERT INTO `oauth_access_tokens` VALUES ('d932de0315dd2f36c812034d2205b4049a0057b245cc342b4eb57c12b821ed4ca42681ac12cc3ee2', 2, 1, 'MyApp', '[]', 0, '2019-03-06 15:07:14', '2019-03-06 15:07:14', '2020-03-06 15:07:14');
INSERT INTO `oauth_access_tokens` VALUES ('d9a5030f5a6e36f535a2644ca2ac40750847ceb8ba838b09e92186b4f924a98ff0e0068efcc40f9d', 2, 9, 'MyApp', '[]', 0, '2020-02-07 17:45:34', '2020-02-07 17:45:34', '2021-02-07 17:45:34');
INSERT INTO `oauth_access_tokens` VALUES ('da27db48423af44a0c53bfda9c76dff9f2395c1a176c9ecc821108b5b66a9c9a729f43864af50056', 2, 1, 'MyApp', '[]', 0, '2019-07-24 08:59:45', '2019-07-24 08:59:45', '2020-07-24 08:59:45');
INSERT INTO `oauth_access_tokens` VALUES ('daa11ebf2597b97605e25aacb3e8c02d97d87c38c0d0b8f67897f86cdd4c22c50affc007038031a5', 17, 1, 'MyApp', '[]', 0, '2019-05-21 09:36:24', '2019-05-21 09:36:24', '2020-05-21 09:36:24');
INSERT INTO `oauth_access_tokens` VALUES ('dc087b5a6677060985acc89e36bd73654478f879002047b43c24e49a3505f0c48a01f2a0308f5306', 2, 9, 'MyApp', '[]', 0, '2020-03-04 17:29:09', '2020-03-04 17:29:09', '2021-03-04 17:29:09');
INSERT INTO `oauth_access_tokens` VALUES ('dc6d13628502f05582be719561fd6ca4d11b3df28370afece4fd9fedbae2c2c07548941b7a7c2efa', 2, 1, 'MyApp', '[]', 0, '2019-05-25 11:59:20', '2019-05-25 11:59:20', '2020-05-25 11:59:20');
INSERT INTO `oauth_access_tokens` VALUES ('dc7b66dbbc823bc0fa2831d7091c741a504a95418a80c67e0ad8b6847856a320fc84ba827060cc48', 2, 9, 'MyApp', '[]', 0, '2020-03-10 08:16:12', '2020-03-10 08:16:12', '2021-03-10 08:16:12');
INSERT INTO `oauth_access_tokens` VALUES ('de33d617088f439eff8047790a638319db10e5480f541fe15e1214998ab469ecc3e45da83855d4a6', 13, 1, 'MyApp', '[]', 0, '2019-05-08 22:05:35', '2019-05-08 22:05:35', '2020-05-08 22:05:35');
INSERT INTO `oauth_access_tokens` VALUES ('de68415e902dd4fcf04a7ae1e476f3d30a16b1cf1d0f6320a6813325260943eacdd1e7a4a7753081', 2, 7, 'MyApp', '[]', 0, '2019-10-03 14:59:44', '2019-10-03 14:59:44', '2020-10-03 14:59:44');
INSERT INTO `oauth_access_tokens` VALUES ('df45fc915774d70657e7aafd768e88407f0f7286146b0b802b0646a0a3bffc5ddb01d64d63615465', 2, 1, 'MyApp', '[]', 0, '2019-06-13 13:36:07', '2019-06-13 13:36:07', '2020-06-13 13:36:07');
INSERT INTO `oauth_access_tokens` VALUES ('df99239b883b868d17e70c88a2de5a2efadd07e9cd5bee7702562d0fd736a4ff6055694e11f916d0', 2, 1, 'MyApp', '[]', 0, '2019-06-27 15:32:16', '2019-06-27 15:32:16', '2020-06-27 15:32:16');
INSERT INTO `oauth_access_tokens` VALUES ('e08ebf0b2550f2e86d6ec3222179cbe70d9ef996e612d67ca16eb96b940feff448e2d52d811c96cf', 2, 7, 'MyApp', '[]', 0, '2019-11-13 13:46:30', '2019-11-13 13:46:30', '2020-11-13 13:46:30');
INSERT INTO `oauth_access_tokens` VALUES ('e2e4c7dde17d8b116d3348d9528a68f9dcb635c17790ea8c016d4875fced3f452d6d6aa205ce0486', 2, 7, 'MyApp', '[]', 0, '2019-10-14 16:08:04', '2019-10-14 16:08:04', '2020-10-14 16:08:04');
INSERT INTO `oauth_access_tokens` VALUES ('e3890b95009f672f41289c3125d7b687961e5e1cf8ceb6528db40e6cae29dbd54cdc458deb8d70f4', 2, 1, 'MyApp', '[]', 0, '2019-08-19 16:53:02', '2019-08-19 16:53:02', '2020-08-19 16:53:02');
INSERT INTO `oauth_access_tokens` VALUES ('e4b9c34997f907f1d754dc13e2b2df744ba7e298a94eec05e2e14cce6e08532efd41b84a911d0421', 2, 1, 'MyApp', '[]', 0, '2019-07-12 08:36:29', '2019-07-12 08:36:29', '2020-07-12 08:36:29');
INSERT INTO `oauth_access_tokens` VALUES ('e4fcd3c507c33197236ee600fbfae1890b5a381fc33d975f25d75637e37d17d743365529d69553bf', 2, 1, 'MyApp', '[]', 0, '2019-05-16 08:13:16', '2019-05-16 08:13:16', '2020-05-16 08:13:16');
INSERT INTO `oauth_access_tokens` VALUES ('e6893bef8e2915752e591986b782d915db460fb1967745a6670a5b996b75630c6ca4f009141706ec', 2, 7, 'MyApp', '[]', 0, '2019-11-22 10:12:25', '2019-11-22 10:12:25', '2020-11-22 10:12:25');
INSERT INTO `oauth_access_tokens` VALUES ('e788fa1ef9774df7027b727e77aacd2148dbd98755c505eab1d34fd00e0412ee97f61d5aa683b911', 2, 9, 'MyApp', '[]', 0, '2020-02-03 17:06:18', '2020-02-03 17:06:18', '2021-02-03 17:06:18');
INSERT INTO `oauth_access_tokens` VALUES ('e796b9947fd8bdf963fef371bc1f708fdb4ff243462e1ee1c4fe0b254d84eaaf1d6343fb0fec107a', 2, 7, 'MyApp', '[]', 0, '2019-12-04 09:08:46', '2019-12-04 09:08:46', '2020-12-04 09:08:46');
INSERT INTO `oauth_access_tokens` VALUES ('ea941ba89a58f6f69ffbfb65dbe8102486e5aee43526e3cc9ecc54db4dcfe71fb8db3d52882594de', 2, 1, 'MyApp', '[]', 0, '2019-02-28 08:53:52', '2019-02-28 08:53:52', '2020-02-28 08:53:52');
INSERT INTO `oauth_access_tokens` VALUES ('eb199816de787761c0fd652f6de4ec75f903776d07c6b194692d121e399de87f979af0f20380331c', 18, 1, 'MyApp', '[]', 0, '2019-08-01 08:30:20', '2019-08-01 08:30:20', '2020-08-01 08:30:20');
INSERT INTO `oauth_access_tokens` VALUES ('eb3a64432aa2a5bb7edf3cc7410b2df171a0052aeacdbfba84be21987e96b29d99de55a44a702cd5', 2, 9, 'MyApp', '[]', 0, '2020-02-09 14:29:52', '2020-02-09 14:29:52', '2021-02-09 14:29:52');
INSERT INTO `oauth_access_tokens` VALUES ('ebd04747bb251c9ec534f5870414c0711377c875a47855bd69440b7813a80b1ada26b58259036035', 2, 9, 'MyApp', '[]', 0, '2020-03-04 21:38:12', '2020-03-04 21:38:12', '2021-03-04 21:38:12');
INSERT INTO `oauth_access_tokens` VALUES ('ec900d3d79ea229f630aec2aed91b68d07adedb5696c67b9be3312ec21c57b4d2952723e7dd7aafa', 2, 1, 'MyApp', '[]', 0, '2019-06-25 16:24:42', '2019-06-25 16:24:42', '2020-06-25 16:24:42');
INSERT INTO `oauth_access_tokens` VALUES ('edd8592520c0805f08f3f4cb50be68a5dc7341d4061acdaada73e547da129b06e5553c1211d2051f', 2, 1, 'MyApp', '[]', 0, '2019-03-02 08:09:02', '2019-03-02 08:09:02', '2020-03-02 08:09:02');
INSERT INTO `oauth_access_tokens` VALUES ('ee516afb3890478cad4d40604f06275ec5afdb0b7e2c3cb4d10b33e892e4a734d93d5a1415e1c818', 29, 1, 'MyApp', '[]', 0, '2019-08-01 17:51:07', '2019-08-01 17:51:07', '2020-08-01 17:51:07');
INSERT INTO `oauth_access_tokens` VALUES ('ee9116e8e468f48e97d04ab45d5af40e24cbcb8ac12964c3a2db78f280a30aee8435aca20621761a', 2, 1, 'MyApp', '[]', 0, '2019-07-15 08:30:54', '2019-07-15 08:30:54', '2020-07-15 08:30:54');
INSERT INTO `oauth_access_tokens` VALUES ('eebcb8b6c0881d51285f1b3175057a4d91c17aa90281daee2bf4b3fb622847bb7f493f11e12e601c', 2, 1, 'MyApp', '[]', 0, '2019-03-21 17:01:19', '2019-03-21 17:01:19', '2020-03-21 17:01:19');
INSERT INTO `oauth_access_tokens` VALUES ('ef38df2fbf3c6ca485ce4e4b9f495d5653f0acedb9688d773dddf91572f84889879eecdd99f1b9c5', 2, 1, 'MyApp', '[]', 0, '2019-06-07 14:03:20', '2019-06-07 14:03:20', '2020-06-07 14:03:20');
INSERT INTO `oauth_access_tokens` VALUES ('efc8814ca3968510c60966734ac3ab76fb7927067c231b055663351d5bb15eaa07a219527c10e33a', 2, 1, 'MyApp', '[]', 0, '2019-08-03 22:04:13', '2019-08-03 22:04:13', '2020-08-03 22:04:13');
INSERT INTO `oauth_access_tokens` VALUES ('f0e5c2dc0fe82cef934732f7963344fc5c87662674625201956aea79297268765712804f744a359a', 2, 5, 'MyApp', '[]', 0, '2019-09-09 16:12:23', '2019-09-09 16:12:23', '2020-09-09 16:12:23');
INSERT INTO `oauth_access_tokens` VALUES ('f1a93b1534fdbd63545d6fb9d777f94f72474f0ad76d73b22c8c0a291f3e4772fa26f39694972f95', 2, 9, 'MyApp', '[]', 0, '2020-02-18 09:49:36', '2020-02-18 09:49:36', '2021-02-18 09:49:36');
INSERT INTO `oauth_access_tokens` VALUES ('f1ee8a965d2867bf2235a9d647b98ec847dc3862b9e47331c7f443bba7e4e29ab2f91a85cdc378bd', 2, 7, 'MyApp', '[]', 0, '2019-10-11 09:59:07', '2019-10-11 09:59:07', '2020-10-11 09:59:07');
INSERT INTO `oauth_access_tokens` VALUES ('f440d733d86874bd55e90f565f8122efa04c3cb5f89a3cab2dda3c626a2ac803a1c7cfabe4e86592', 2, 1, 'MyApp', '[]', 0, '2019-05-10 14:00:20', '2019-05-10 14:00:20', '2020-05-10 14:00:20');
INSERT INTO `oauth_access_tokens` VALUES ('f450c8bc7277de19e3ec39a525199ccdef38ed354ee9da81a6883923e96cfb86916c3f4757310a7d', 2, 9, 'MyApp', '[]', 0, '2020-02-28 09:41:26', '2020-02-28 09:41:26', '2021-02-28 09:41:26');
INSERT INTO `oauth_access_tokens` VALUES ('f4cf186493094c0baa9ea5b4d3f149de3de2961b7963272064e540537dfe7d98db76601e6345af07', 2, 1, 'MyApp', '[]', 0, '2019-07-14 20:28:06', '2019-07-14 20:28:06', '2020-07-14 20:28:06');
INSERT INTO `oauth_access_tokens` VALUES ('f546c05eb151d890150d21f93f715e808821c62a0baf659f0b1d81a8fc044d33f70dbedff9e00682', 2, 9, 'MyApp', '[]', 0, '2020-03-03 16:16:26', '2020-03-03 16:16:26', '2021-03-03 16:16:26');
INSERT INTO `oauth_access_tokens` VALUES ('f5e2b2f0195eb9946ada086c63c04d82b8e94d3015d4594f0b19659ef043f8966699c000faab1bd0', 2, 1, 'MyApp', '[]', 0, '2019-05-10 08:23:58', '2019-05-10 08:23:58', '2020-05-10 08:23:58');
INSERT INTO `oauth_access_tokens` VALUES ('f66ca15e94fd11f4fa3b5e497355be704e3ba4a7b7bed055d0d543fea64fbcd3e16f51bf90090567', 2, 1, 'MyApp', '[]', 0, '2019-04-23 13:36:16', '2019-04-23 13:36:16', '2020-04-23 13:36:16');
INSERT INTO `oauth_access_tokens` VALUES ('f70216bd4ea904b025e609647afaa62ee33f394a7816e10e76c15ab14fbe9d624979674190b54ce4', 2, 7, 'MyApp', '[]', 0, '2019-10-10 16:00:57', '2019-10-10 16:00:57', '2020-10-10 16:00:57');
INSERT INTO `oauth_access_tokens` VALUES ('f867dd75382d40379874b24a53ecf5272cb6696d47fa8331452cf0a43cd5bdb24e0339908f3f3aab', 2, 1, 'MyApp', '[]', 0, '2019-04-22 17:26:22', '2019-04-22 17:26:22', '2020-04-22 17:26:22');
INSERT INTO `oauth_access_tokens` VALUES ('f8d5092db08fe0e67fc640afab3eac8626ac3fb579fd8a04d8ecd707c064db967658b14d848c6bf2', 2, 1, 'MyApp', '[]', 0, '2019-06-29 10:45:12', '2019-06-29 10:45:12', '2020-06-29 10:45:12');
INSERT INTO `oauth_access_tokens` VALUES ('f9bbbe2806902f3a7d1f5d479e3acdd6a95d5bc1f0030e0f67c57d105087dd7bfe46807bc9f24add', 2, 9, 'MyApp', '[]', 0, '2020-01-23 09:39:27', '2020-01-23 09:39:27', '2021-01-23 09:39:27');
INSERT INTO `oauth_access_tokens` VALUES ('f9de553db938cbc7df3a7da7c509510a66d507f5f7cb3b3ac39ab50445aeb42f5de1a7afff0b74ca', 2, 1, 'MyApp', '[]', 0, '2019-07-22 08:12:38', '2019-07-22 08:12:38', '2020-07-22 08:12:38');
INSERT INTO `oauth_access_tokens` VALUES ('fb1085609dd53df7a1b0bc7ffddc0a27552da0681ca83dccdc3856f03b478022f666d8a5e79d331d', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:41:27', '2019-05-17 09:41:27', '2020-05-17 09:41:27');
INSERT INTO `oauth_access_tokens` VALUES ('fb452856dc1b66b6002da8863caef9b17730072341ad6c5fbd0b716f61abf8792b4b9b0dcc6e44ee', 5, 1, 'MyApp', '[]', 0, '2019-05-05 21:54:13', '2019-05-05 21:54:13', '2020-05-05 21:54:13');
INSERT INTO `oauth_access_tokens` VALUES ('fb9213eaaf9b7812fbff14987cb5f1a75ba77085af359d9040b182e1a26cbb98d730f113e1c4dc04', 2, 9, 'MyApp', '[]', 0, '2020-02-03 13:57:34', '2020-02-03 13:57:34', '2021-02-03 13:57:34');
INSERT INTO `oauth_access_tokens` VALUES ('fbaa68275cea65ecfd5a751325b78ac0bb015655f6c35e33e2b84b05301fad770a178811924eada1', 2, 1, 'MyApp', '[]', 0, '2019-06-11 09:06:22', '2019-06-11 09:06:22', '2020-06-11 09:06:22');
INSERT INTO `oauth_access_tokens` VALUES ('fc06b29579a37f34c51a2b6923e2ed73bcb8b6e61ceba59714131a142cc0dc3f03d30deddce7ba8a', 2, 1, 'MyApp', '[]', 0, '2019-05-17 16:59:24', '2019-05-17 16:59:24', '2020-05-17 16:59:24');
INSERT INTO `oauth_access_tokens` VALUES ('fcf2560586963cea6481f301476d43e1a39af320b5543d89eba5288028c9f581ff661e8111ff5d42', 2, 5, 'MyApp', '[]', 0, '2019-09-11 13:40:59', '2019-09-11 13:40:59', '2020-09-11 13:40:59');
INSERT INTO `oauth_access_tokens` VALUES ('fd183820538e61fce86c656fa1d51e83b6d0138c80c4408e6c656447ca363529840f0fdc7d4af0e7', 2, 1, 'MyApp', '[]', 0, '2019-07-27 14:08:34', '2019-07-27 14:08:34', '2020-07-27 14:08:34');
INSERT INTO `oauth_access_tokens` VALUES ('fdda24a96ad12020fd4fc444397dd86c7a7997a639922aa5989b173a22b767ece966e9db886043eb', 2, 1, 'MyApp', '[]', 0, '2019-07-26 16:20:09', '2019-07-26 16:20:09', '2020-07-26 16:20:09');
INSERT INTO `oauth_access_tokens` VALUES ('fdeba7fd61f711165e9eb468e7951e8f8acffae5795c6fee7e37c83b26fde606a58acff245e9fff2', 2, 1, 'MyApp', '[]', 0, '2019-06-19 22:14:22', '2019-06-19 22:14:22', '2020-06-19 22:14:22');

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
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'pKAxvNpKupq4MXxptmzvuT38ByuPIWyKv87fuiQt', 'http://localhost', 1, 0, 0, '2019-02-27 09:46:34', '2019-02-27 09:46:34');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', '4Djvc7dyJChiOr3UGmcYTjI0OrpCFenogIdusJDM', 'http://localhost', 0, 1, 0, '2019-02-27 09:46:34', '2019-02-27 09:46:34');
INSERT INTO `oauth_clients` VALUES (3, NULL, 'Laravel Personal Access Client', '5wBwHFfu9kPhNF00knK43U65WJvdzaRc3wH9nHSu', 'http://localhost', 1, 0, 0, '2019-08-27 10:51:01', '2019-08-27 10:51:01');
INSERT INTO `oauth_clients` VALUES (4, NULL, 'Laravel Password Grant Client', 'UaHM0IOnA8b4HYRhlasb9CY4VzqICMT0VKxuWdLI', 'http://localhost', 0, 1, 0, '2019-08-27 10:51:02', '2019-08-27 10:51:02');
INSERT INTO `oauth_clients` VALUES (5, NULL, 'Laravel Personal Access Client', 'RaYtPQVltggi3FPmbDiezmoArJEUtpy5kdNz1lQy', 'http://localhost', 1, 0, 0, '2019-09-03 08:33:54', '2019-09-03 08:33:54');
INSERT INTO `oauth_clients` VALUES (6, NULL, 'Laravel Password Grant Client', 'YlV8gs9OXBzIyFLMxePrNe4cdreLREoLJjMhY95T', 'http://localhost', 0, 1, 0, '2019-09-03 08:33:55', '2019-09-03 08:33:55');
INSERT INTO `oauth_clients` VALUES (7, NULL, 'Laravel Personal Access Client', 'GX2j0C7jcAyDH9b2NdpM0ersgboXQkNWzYFuaaR3', 'http://localhost', 1, 0, 0, '2019-09-15 23:28:04', '2019-09-15 23:28:04');
INSERT INTO `oauth_clients` VALUES (8, NULL, 'Laravel Password Grant Client', 'l8XHRMkpm48QWkbixCrOkjkSave83F0oC9HB9vk6', 'http://localhost', 0, 1, 0, '2019-09-15 23:28:04', '2019-09-15 23:28:04');
INSERT INTO `oauth_clients` VALUES (9, NULL, 'Laravel Personal Access Client', '96rejvMEyro9SOkGXiaqDNXW8PTHlQ55hb9fSYwA', 'http://localhost', 1, 0, 0, '2019-12-22 21:27:46', '2019-12-22 21:27:46');
INSERT INTO `oauth_clients` VALUES (10, NULL, 'Laravel Password Grant Client', 'JMQv8j9ud9E7ZWDx5rsK44KpZPw1arUaoPmnBNHv', 'http://localhost', 0, 1, 0, '2019-12-22 21:27:46', '2019-12-22 21:27:46');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-02-27 09:46:34', '2019-02-27 09:46:34');
INSERT INTO `oauth_personal_access_clients` VALUES (2, 3, '2019-08-27 10:51:02', '2019-08-27 10:51:02');
INSERT INTO `oauth_personal_access_clients` VALUES (3, 5, '2019-09-03 08:33:54', '2019-09-03 08:33:54');
INSERT INTO `oauth_personal_access_clients` VALUES (4, 7, '2019-09-15 23:28:04', '2019-09-15 23:28:04');
INSERT INTO `oauth_personal_access_clients` VALUES (5, 9, '2019-12-22 21:27:46', '2019-12-22 21:27:46');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for option
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option`  (
  `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`option_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_history
-- ----------------------------
DROP TABLE IF EXISTS `order_history`;
CREATE TABLE `order_history`  (
  `idorderhistory` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid_order` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `idordhisparent` int(11) NULL DEFAULT NULL,
  `idcustomer` int(11) NULL DEFAULT NULL,
  `mac_add` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip_add` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idorderhistory`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_history
-- ----------------------------
INSERT INTO `order_history` VALUES (1, 0, 15, 1, NULL, NULL, NULL, NULL, '2019-09-03 16:23:07', '2019-09-03 16:23:07');
INSERT INTO `order_history` VALUES (2, 0, 8, 1, NULL, NULL, NULL, NULL, '2019-09-03 18:59:42', '2019-09-03 18:59:42');
INSERT INTO `order_history` VALUES (3, 0, 15, 1, NULL, NULL, NULL, NULL, '2019-09-03 19:02:10', '2019-09-03 19:02:10');
INSERT INTO `order_history` VALUES (4, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-09-03 19:42:25', '2019-09-03 19:42:25');
INSERT INTO `order_history` VALUES (5, 0, 12, 1, NULL, NULL, NULL, NULL, '2019-09-03 19:44:51', '2019-09-03 19:44:51');
INSERT INTO `order_history` VALUES (6, 0, 8, 1, NULL, NULL, NULL, NULL, '2019-09-03 19:45:59', '2019-09-03 19:45:59');
INSERT INTO `order_history` VALUES (7, 0, 8, 1, NULL, NULL, NULL, NULL, '2019-09-03 20:22:27', '2019-09-03 20:22:27');
INSERT INTO `order_history` VALUES (8, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-09-03 20:26:26', '2019-09-03 20:26:26');
INSERT INTO `order_history` VALUES (9, 0, 12, 1, NULL, NULL, NULL, NULL, '2019-09-03 22:30:08', '2019-09-03 22:30:08');
INSERT INTO `order_history` VALUES (10, 0, 12, 3, NULL, NULL, NULL, NULL, '2019-09-03 22:30:35', '2019-09-03 22:30:35');
INSERT INTO `order_history` VALUES (11, 0, 16, 2, NULL, NULL, NULL, NULL, '2019-09-03 22:33:40', '2019-09-03 22:33:40');
INSERT INTO `order_history` VALUES (12, 0, 10, 3, NULL, NULL, NULL, NULL, '2019-09-03 22:34:36', '2019-09-03 22:34:36');
INSERT INTO `order_history` VALUES (13, 0, 12, 1, NULL, NULL, NULL, NULL, '2019-09-04 08:14:09', '2019-09-04 08:14:09');
INSERT INTO `order_history` VALUES (14, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-09-04 08:14:42', '2019-09-04 08:14:42');
INSERT INTO `order_history` VALUES (15, 0, 14, 2, NULL, NULL, NULL, NULL, '2019-09-04 08:16:15', '2019-09-04 08:16:15');
INSERT INTO `order_history` VALUES (16, 0, 1, 2, NULL, NULL, NULL, NULL, '2019-09-04 09:32:00', '2019-09-04 09:32:00');
INSERT INTO `order_history` VALUES (17, 0, 12, 1, NULL, NULL, NULL, NULL, '2019-09-04 09:33:52', '2019-09-04 09:33:52');
INSERT INTO `order_history` VALUES (18, 0, 12, 2, NULL, NULL, NULL, NULL, '2019-09-04 09:34:12', '2019-09-04 09:34:12');
INSERT INTO `order_history` VALUES (19, 0, 12, 2, NULL, NULL, NULL, NULL, '2019-09-04 09:38:11', '2019-09-04 09:38:11');
INSERT INTO `order_history` VALUES (20, 0, 15, 1, NULL, NULL, NULL, NULL, '2019-09-04 09:38:33', '2019-09-04 09:38:33');
INSERT INTO `order_history` VALUES (21, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-09-04 15:16:09', '2019-09-04 15:16:09');
INSERT INTO `order_history` VALUES (22, 0, 8, 1, NULL, NULL, NULL, NULL, '2019-09-04 15:24:35', '2019-09-04 15:24:35');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for perm_commands
-- ----------------------------
DROP TABLE IF EXISTS `perm_commands`;
CREATE TABLE `perm_commands`  (
  `idpercommand` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `command` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `trash` tinyint(5) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idpercommand`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of perm_commands
-- ----------------------------
INSERT INTO `perm_commands` VALUES (1, 'select', 'Liệt kê', 0, '2019-10-15 08:49:52', '2020-03-13 14:05:37');
INSERT INTO `perm_commands` VALUES (2, 'update', 'cập nhật', 0, '2019-10-15 08:50:04', '2020-03-13 14:05:39');
INSERT INTO `perm_commands` VALUES (3, 'insert', 'Chèn dữ liệu', 0, '2019-10-15 08:50:13', '2020-03-13 14:05:40');
INSERT INTO `perm_commands` VALUES (4, 'edit', 'Chỉnh sửa', 0, '2019-11-12 10:59:34', '2020-03-13 14:05:41');
INSERT INTO `perm_commands` VALUES (7, 'create', 'Create new command', 0, '2020-03-06 17:17:12', '2020-03-13 14:05:41');
INSERT INTO `perm_commands` VALUES (8, 'delete', 'delete', 0, '2020-03-12 15:53:14', '2020-03-13 14:05:47');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `idperm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpermcommand` int(10) UNSIGNED NULL DEFAULT NULL,
  `idcategory` int(11) UNSIGNED NULL DEFAULT NULL,
  `idproduct` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `idparent` int(11) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idperm`) USING BTREE,
  UNIQUE INDEX `permissions_name_unique`(`name`) USING BTREE,
  INDEX `fr_permission_category`(`idcategory`) USING BTREE,
  INDEX `fr_permission_product`(`idproduct`) USING BTREE,
  INDEX `fr_permission_command`(`idpermcommand`) USING BTREE,
  INDEX `fr_idparent_category`(`idparent`) USING BTREE,
  CONSTRAINT `fr_idparent_category` FOREIGN KEY (`idparent`) REFERENCES `categories` (`idcategory`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_permission_category` FOREIGN KEY (`idcategory`) REFERENCES `categories` (`idcategory`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_permission_command` FOREIGN KEY (`idpermcommand`) REFERENCES `perm_commands` (`idpercommand`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_permission_product` FOREIGN KEY (`idproduct`) REFERENCES `products` (`idproduct`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'Xem sản phẩm trị nám', 'Xem sản phẩm trị nám', 1, 6, NULL, NULL, '2019-04-13 08:30:03', '2020-01-28 14:55:04');
INSERT INTO `permissions` VALUES (2, 'list-product-giam-beo', 'Xem sản phẩm giảm béo', 1, 28, NULL, NULL, NULL, '2020-02-05 22:19:05');
INSERT INTO `permissions` VALUES (3, 'Xem sản phẩm xóa nhăn', 'Xem sản phẩm xóa nhăn', 1, 9, NULL, NULL, NULL, '2020-01-29 14:35:07');
INSERT INTO `permissions` VALUES (4, 'List system', 'list system', 1, 46, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (5, 'Distribute', 'distribute', 1, 47, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (6, 'Role', 'Role', 1, 48, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (7, 'execute command', 'execute', 1, 49, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (8, 'Create permission', 'Create permission', 1, 50, NULL, NULL, NULL, '2020-02-29 18:31:26');
INSERT INTO `permissions` VALUES (9, 'Grant permission for role', 'Grant permission for role', 1, 51, NULL, NULL, NULL, '2020-02-29 18:30:36');
INSERT INTO `permissions` VALUES (10, 'Grant permission for user', 'Grant permission for user', 1, 52, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (11, 'manage user', 'manage user', 1, 53, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (12, 'list category permission', 'list category permission', 1, 54, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (13, 'Content type', 'Content type', 1, 55, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (14, 'Category type', 'Category type', 1, 56, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (15, 'Status type', 'Status type', 1, 58, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (16, 'Post type', 'Post type', 1, 57, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (17, 'permission create new role', 'permission create new role', 7, 59, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (18, 'Create role permission', 'Create role permission', 7, 59, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (19, 'enable create new permission', 'enable create new permission', 7, 60, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (20, 'enable grant new permission for role', 'enable grant new permission for role', 7, 61, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (21, 'Assign user to role', 'Assign user to role', 7, 63, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (22, 'Enable create new user', 'Enable create new user', 7, 64, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (23, 'enable create new category', 'enable create new category', 7, 65, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (24, 'Enable create new category type', 'Enable create new category type', 7, 66, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (25, 'Enable create new status type', 'Enable create new status type', 7, 67, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (26, 'Enable create new post type', 'Enable create new post type', 7, 68, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (27, 'Enable edit user', 'Enable edit user', 4, 69, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (28, 'Enable create new command', 'Enable create new command', 7, 70, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (29, 'Enable delete user', 'Enable delete user', 8, 71, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (30, 'Enable edit category', 'Enable edit category', 4, 72, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (31, 'Enable edit role', 'Enable edit role', 4, 73, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (32, 'Enable delete role', 'Enable delete role', 8, 74, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (33, 'Enable edit command', 'Enable edit command', 4, 75, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (34, 'System product', 'System product', 1, 37, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (35, 'Group product', 'Group product', 1, 40, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (36, 'Enable edit permission', 'Enable edit permission', 4, 76, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (37, 'List product', 'List product', 1, 42, NULL, NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (38, 'list categories', 'list categories', 1, 41, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for post_has_files
-- ----------------------------
DROP TABLE IF EXISTS `post_has_files`;
CREATE TABLE `post_has_files`  (
  `idhasfile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` bigint(20) NULL DEFAULT NULL,
  `hastype` int(10) NULL DEFAULT NULL,
  `idfile` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idhasfile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of post_has_files
-- ----------------------------
INSERT INTO `post_has_files` VALUES (1, 1, 0, 0, '2019-08-01 11:44:32', '2019-08-01 11:44:32');
INSERT INTO `post_has_files` VALUES (2, 3, 0, 0, '2019-08-01 13:58:36', '2019-08-01 13:58:36');
INSERT INTO `post_has_files` VALUES (3, 4, 0, 0, '2019-08-01 14:14:35', '2019-08-01 14:14:35');
INSERT INTO `post_has_files` VALUES (4, 5, 0, 0, '2019-08-01 14:17:28', '2019-08-01 14:17:28');
INSERT INTO `post_has_files` VALUES (5, 6, 0, 0, '2019-08-01 14:18:10', '2019-08-01 14:18:10');
INSERT INTO `post_has_files` VALUES (6, 9, 0, 0, '2019-08-01 14:59:17', '2019-08-01 14:59:17');
INSERT INTO `post_has_files` VALUES (7, 10, 0, 0, '2019-08-01 15:40:52', '2019-08-01 15:40:52');

-- ----------------------------
-- Table structure for post_types
-- ----------------------------
DROP TABLE IF EXISTS `post_types`;
CREATE TABLE `post_types`  (
  `idposttype` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nametype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idposttype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of post_types
-- ----------------------------
INSERT INTO `post_types` VALUES (1, 'consultant', NULL, 1, '2019-04-17 08:49:25', '2019-04-17 08:49:25');
INSERT INTO `post_types` VALUES (2, 'promotion', NULL, 1, '2019-04-17 08:49:41', '2019-04-17 08:49:41');
INSERT INTO `post_types` VALUES (3, 'post', NULL, NULL, '2019-04-17 10:06:34', '2019-04-17 10:06:34');
INSERT INTO `post_types` VALUES (4, 'phone', '<i class=\"fa fa-phone-square\"></i>', 4, '2019-04-17 11:44:28', '2019-04-17 11:44:28');
INSERT INTO `post_types` VALUES (5, 'sms', '<i class=\"fa fa-send-o\"></i>', 4, '2019-04-17 11:44:44', '2019-04-17 11:44:44');
INSERT INTO `post_types` VALUES (6, 'email', '<i class=\"fa fa-envelope-square\"></i>', 4, '2019-04-17 15:37:20', '2019-04-17 15:37:20');
INSERT INTO `post_types` VALUES (7, 'booking', '<i class=\"fa fa-calendar-o\"></i>', 4, '2019-04-25 11:36:00', '2019-04-25 11:36:00');
INSERT INTO `post_types` VALUES (8, 'note', '<i class=\"fa fa-sticky-note-o\"></i>', 4, '2019-05-13 15:17:17', '2019-05-13 15:17:17');
INSERT INTO `post_types` VALUES (9, 'game', NULL, 1, '2019-05-16 08:15:16', '2019-05-16 08:15:16');
INSERT INTO `post_types` VALUES (10, 'product', NULL, NULL, '2019-05-23 16:07:07', '2019-05-23 16:07:07');
INSERT INTO `post_types` VALUES (11, 'combo', NULL, NULL, '2019-08-23 15:04:20', '2019-08-23 15:04:20');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `idpost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_post_type` int(11) NULL DEFAULT NULL,
  `idcategory` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idpost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, NULL, 'http://localhost/thammy/tiem-cang-bong-da-mat-baby-face/', NULL, 2, NULL, '2019-08-01 11:44:32', '2019-08-01 11:44:32');
INSERT INTO `posts` VALUES (2, NULL, 'đã gọi điện', NULL, 4, NULL, '2019-08-01 12:04:11', '2019-08-01 12:04:11');
INSERT INTO `posts` VALUES (3, NULL, 'http://localhost/thammy/#', NULL, 1, NULL, '2019-08-01 13:58:36', '2019-08-01 13:58:36');
INSERT INTO `posts` VALUES (4, NULL, 'http://localhost/thammy/#', NULL, 1, NULL, '2019-08-01 14:14:35', '2019-08-01 14:14:35');
INSERT INTO `posts` VALUES (5, NULL, 'https://thammyvienthienkhue.vn/tri-tan-nhang-yellow-laser-dieu-tri-nhanh-hieu-qua-toi-80/', NULL, 2, NULL, '2019-08-01 14:17:28', '2019-08-01 14:17:28');
INSERT INTO `posts` VALUES (6, NULL, 'https://thammyvienthienkhue.vn/tri-tan-nhang-yellow-laser-dieu-tri-nhanh-hieu-qua-toi-80/#', NULL, 1, NULL, '2019-08-01 14:18:10', '2019-08-01 14:18:10');
INSERT INTO `posts` VALUES (7, NULL, 'không bắt máy', NULL, 4, NULL, '2019-08-01 14:18:43', '2019-08-01 14:18:43');
INSERT INTO `posts` VALUES (8, NULL, 'đặt lịch', NULL, 7, NULL, '2019-08-01 14:19:18', '2019-08-01 14:19:18');
INSERT INTO `posts` VALUES (9, NULL, 'https://mgk.edu.vn/khai-giang/ ,khoa hoc chon: Phun thiêu thẩm mỹ', NULL, 2, NULL, '2019-08-01 14:59:17', '2019-08-01 14:59:17');
INSERT INTO `posts` VALUES (10, NULL, 'https://mgk.edu.vn/ ,khoa hoc chon: Chăm sóc da', NULL, 1, NULL, '2019-08-01 15:40:52', '2019-08-01 15:40:52');
INSERT INTO `posts` VALUES (11, NULL, 'khong bat mat', NULL, 4, NULL, '2019-08-01 17:04:38', '2019-08-01 17:04:38');
INSERT INTO `posts` VALUES (12, NULL, 'k tl', NULL, 5, NULL, '2019-08-01 17:05:56', '2019-08-01 17:05:56');
INSERT INTO `posts` VALUES (13, NULL, 'khòn bat mat', NULL, 4, NULL, '2019-08-01 17:47:22', '2019-08-01 17:47:22');
INSERT INTO `posts` VALUES (14, NULL, 'ghgh', NULL, 8, NULL, '2019-08-01 17:52:19', '2019-08-01 17:52:19');

-- ----------------------------
-- Table structure for producthasfile
-- ----------------------------
DROP TABLE IF EXISTS `producthasfile`;
CREATE TABLE `producthasfile`  (
  `idproducthasfile` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `hastype` int(10) UNSIGNED NULL DEFAULT NULL,
  `idfile` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `status_file` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idproducthasfile`) USING BTREE,
  INDEX `fr_producthasfile`(`idproduct`) USING BTREE,
  INDEX `fr_hastype`(`hastype`) USING BTREE,
  INDEX `fr_hasfile`(`idfile`) USING BTREE,
  CONSTRAINT `fr_hasfile` FOREIGN KEY (`idfile`) REFERENCES `files` (`idfile`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_hastype` FOREIGN KEY (`hastype`) REFERENCES `imagetype` (`idimagetype`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fr_producthasfile` FOREIGN KEY (`idproduct`) REFERENCES `products` (`idproduct`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of producthasfile
-- ----------------------------
INSERT INTO `producthasfile` VALUES (1, 1, 1, 1, 1, '2019-08-29 15:26:05', '2019-08-29 15:26:05');
INSERT INTO `producthasfile` VALUES (2, 2, 1, 2, 1, '2019-08-29 15:29:34', '2019-08-29 15:29:34');
INSERT INTO `producthasfile` VALUES (3, 5, 1, 3, 1, '2019-08-30 08:53:07', '2019-08-30 08:53:07');
INSERT INTO `producthasfile` VALUES (4, 4, 1, 4, 1, '2019-08-30 09:01:36', '2019-08-30 09:01:36');
INSERT INTO `producthasfile` VALUES (5, 6, 1, 5, 1, '2019-08-30 09:22:06', '2019-08-30 09:22:06');
INSERT INTO `producthasfile` VALUES (6, 7, 1, 6, 1, '2019-08-30 09:27:41', '2019-08-30 09:27:41');
INSERT INTO `producthasfile` VALUES (7, 8, 1, 7, 1, '2019-08-31 15:18:08', '2019-08-31 15:18:08');
INSERT INTO `producthasfile` VALUES (8, 9, 1, 8, 1, '2019-08-31 15:20:25', '2019-08-31 15:20:25');
INSERT INTO `producthasfile` VALUES (9, 10, 1, 9, 1, '2019-08-31 15:22:37', '2019-08-31 15:22:37');
INSERT INTO `producthasfile` VALUES (10, 11, 1, 10, 1, '2019-08-31 15:24:43', '2019-08-31 15:24:43');
INSERT INTO `producthasfile` VALUES (11, 12, 1, 11, 1, '2019-08-31 15:26:43', '2019-08-31 15:26:43');
INSERT INTO `producthasfile` VALUES (12, 13, 1, 12, 1, '2019-08-31 15:28:22', '2019-08-31 15:28:22');
INSERT INTO `producthasfile` VALUES (13, 14, 1, 13, 1, '2019-08-31 15:30:10', '2019-08-31 15:30:10');
INSERT INTO `producthasfile` VALUES (14, 15, 1, 14, 1, '2019-08-31 15:31:24', '2019-08-31 15:31:24');
INSERT INTO `producthasfile` VALUES (15, 16, 1, 15, 1, '2019-08-31 15:32:57', '2019-08-31 15:32:57');
INSERT INTO `producthasfile` VALUES (16, 17, 1, 16, 1, '2019-08-31 15:34:25', '2019-08-31 15:34:25');
INSERT INTO `producthasfile` VALUES (17, 18, 1, 17, 1, '2019-09-09 11:21:24', '2019-09-09 11:21:24');
INSERT INTO `producthasfile` VALUES (18, 19, 1, 18, 1, '2019-09-09 11:27:47', '2019-09-09 11:27:47');
INSERT INTO `producthasfile` VALUES (19, 20, 1, 19, 1, '2019-09-09 11:34:08', '2019-09-09 11:34:08');
INSERT INTO `producthasfile` VALUES (20, 21, 1, 20, 1, '2019-09-09 11:47:59', '2019-09-09 11:47:59');
INSERT INTO `producthasfile` VALUES (21, 22, 1, 21, 1, '2019-09-09 11:50:34', '2019-09-09 11:50:34');
INSERT INTO `producthasfile` VALUES (22, 23, 1, 22, 1, '2019-09-13 23:04:01', '2019-09-13 23:04:01');
INSERT INTO `producthasfile` VALUES (23, 24, 1, 23, 1, '2019-09-13 23:06:05', '2019-09-13 23:06:05');
INSERT INTO `producthasfile` VALUES (24, 25, 1, 24, 1, '2019-09-13 23:08:17', '2019-09-13 23:08:17');
INSERT INTO `producthasfile` VALUES (25, 26, 1, 25, 1, '2019-09-13 23:12:06', '2019-09-13 23:12:06');
INSERT INTO `producthasfile` VALUES (26, 27, 1, 26, 1, '2019-09-13 23:14:09', '2019-09-13 23:14:09');
INSERT INTO `producthasfile` VALUES (27, 28, 1, 27, 1, '2019-09-15 16:31:04', '2019-09-15 16:31:04');
INSERT INTO `producthasfile` VALUES (28, 29, 1, 28, 1, '2019-09-20 15:58:52', '2019-09-20 15:58:52');
INSERT INTO `producthasfile` VALUES (29, 29, 1, 12, 1, '2019-09-26 16:59:12', '2019-09-26 16:59:12');
INSERT INTO `producthasfile` VALUES (30, 30, 1, 29, 1, '2019-09-28 15:30:28', '2019-09-28 15:30:28');
INSERT INTO `producthasfile` VALUES (31, 31, 1, 30, 1, '2019-10-01 13:42:13', '2019-10-01 13:42:13');
INSERT INTO `producthasfile` VALUES (32, 31, 1, 31, 1, '2019-10-01 13:49:46', '2019-10-01 13:49:46');
INSERT INTO `producthasfile` VALUES (33, 32, 1, 32, 1, '2019-10-01 13:53:51', '2019-10-01 13:53:51');
INSERT INTO `producthasfile` VALUES (34, 33, 1, 33, 1, '2019-10-01 15:56:56', '2019-10-01 15:56:56');
INSERT INTO `producthasfile` VALUES (35, 34, 1, 34, 1, '2019-10-01 15:59:09', '2019-10-01 15:59:09');
INSERT INTO `producthasfile` VALUES (36, 28, 2, 35, 0, '2019-10-01 16:07:41', '2019-10-07 13:47:01');
INSERT INTO `producthasfile` VALUES (37, 28, 2, 36, 0, '2019-10-01 16:07:41', '2019-10-07 13:47:01');
INSERT INTO `producthasfile` VALUES (38, 28, 2, 37, 0, '2019-10-01 16:07:41', '2019-10-07 13:47:01');
INSERT INTO `producthasfile` VALUES (39, 28, 2, 38, 1, '2019-10-07 13:47:02', '2019-10-07 13:47:02');
INSERT INTO `producthasfile` VALUES (40, 28, 2, 39, 1, '2019-10-07 13:47:02', '2019-10-07 13:47:02');
INSERT INTO `producthasfile` VALUES (41, 28, 2, 40, 1, '2019-10-07 13:47:02', '2019-10-07 13:47:02');
INSERT INTO `producthasfile` VALUES (42, 34, 2, 49, 1, '2020-02-01 13:16:41', '2020-02-01 13:16:41');
INSERT INTO `producthasfile` VALUES (43, 34, 2, 50, 1, '2020-02-01 13:16:41', '2020-02-01 13:16:41');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `idproduct` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namepro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_post_type` int(11) UNSIGNED NOT NULL,
  `idsize` int(10) UNSIGNED NULL DEFAULT NULL,
  `idcolor` int(10) UNSIGNED NULL DEFAULT NULL,
  `idcrosstype_p` int(10) UNSIGNED NULL DEFAULT NULL,
  `idparent_p` bigint(20) NULL DEFAULT NULL,
  `idstatus_type` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idproduct`) USING BTREE,
  INDEX `fr_product_crosstype`(`idcrosstype_p`) USING BTREE,
  INDEX `fr_product_type`(`id_post_type`) USING BTREE,
  INDEX `fr_product_size`(`idsize`) USING BTREE,
  INDEX `fr_product_color`(`idcolor`) USING BTREE,
  INDEX `fr_product_status_type`(`idstatus_type`) USING BTREE,
  CONSTRAINT `fr_product_color` FOREIGN KEY (`idcolor`) REFERENCES `color` (`idcolor`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fr_product_crosstype` FOREIGN KEY (`idcrosstype_p`) REFERENCES `cross_type` (`idcrosstype`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_product_size` FOREIGN KEY (`idsize`) REFERENCES `size` (`idsize`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fr_product_status_type` FOREIGN KEY (`idstatus_type`) REFERENCES `status_types` (`id_status_type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_product_type` FOREIGN KEY (`id_post_type`) REFERENCES `post_types` (`idposttype`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'TRỊ NÁM HỎNG TOÀN DIỆN VIP', 'tri-nam-hong-toan-dien-vip', 'Tình trạng Nám không cải thiện, Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành lên những điểm trắng bất thường', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b>Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thànhlên những điểm trắng bất thường<o:p></o:p></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b>Sau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phươngpháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề“Nám da là một bênh lý về da, để điều trị Nám da cần hiểu rõ nguyên nhân và cógiải pháp thực sự phù hợp cho từng loại Nám, và từng loại da vào từng thời điểmkhác nhau, và điều đó chỉ có được tại những thẩm mỹ viện có đội ngũ chuyên gia,bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết bị máy điều trị hiệnđai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ, nhanh tại những cơ sởspa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn bè mách bảo hoặc quảngcáo trên mạng. Hậu quả là làm cho da của mình trở lên ngày càng bị tổn thươngvà yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám không những ko được cải thiệnmà còn tăng đậm hơn.<o:p></o:p></p><p class=\"MsoNormal\"><b>c. Dấu Hiệu Nhận BiếtNám Hỏng<o:p></o:p></b></p><p class=\"MsoNormal\">+ Đã điều trị tại cơ sở Spa, Thẩm mỹ, hoặc tự điều trị<o:p></o:p></p><p class=\"MsoNormal\">+ Da mỏng mạch máu nổi rõ trên mặt da<o:p></o:p></p><p class=\"MsoNormal\">+ Da đỏ và dễ kích ứng khi ra nắng hoặc sử dụng mỹ phẩm<o:p></o:p></p><p class=\"MsoNormal\">+ Nám lan rộng <o:p></o:p></p><p class=\"MsoNormal\">+ Xuất hiện những đốm trắng do mất sắc tố<o:p></o:p></p><p class=\"MsoNormal\"><b>d. Phương Pháp Khoa HọcDành Cho Nám Hỏng<o:p></o:p></b></p><p class=\"MsoNormal\">Xử lý tình trạng Nám hỏng rất phức tạp, đòi hỏi phải có mộtpháp đồ phù hợp và tổng thể, bao gồm: <o:p></o:p></p><p class=\"MsoNormal\">+ Phục hồi tái tạo da,giúp da khỏe hơn, tự bảo vệ các tác nhângây hại<o:p></o:p></p><p class=\"MsoNormal\">+ Xử lý các hắc tố Melanin đã hình thành trên da, giúp dasáng trở lại<o:p></o:p></p><p class=\"MsoNormal\">+ Ổn định Gốc Nám “Tế Bào Melanocyte” giúp nám không táiphát<o:p></o:p></p><p class=\"MsoNormal\"><b>e. Kết Quả Nhận ĐượcSau Liệu Trình<o:p></o:p></b></p><p class=\"MsoNormal\">+ Phục hồi tái tạo da, da khỏe mạnh không còn đỏ và kích ứngkhi ra nắng<o:p></o:p></p><p class=\"MsoNormal\">+ Mao mạch máu mờ rõ rệt<o:p></o:p></p><p class=\"MsoNormal\">+ Da có độ ẩm, lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p><p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 80%<o:p></o:p></p><p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b><b>f. Pháp Đồ Tại ThiênKhuê</b></p><p class=\"MsoNormal\">+ 10 buổi tái tạo phục hồi Detox <o:p></o:p></p><p class=\"MsoNormal\">+ 15 buổi Triphasic Spot Laser<o:p></o:p></p><p class=\"MsoNormal\">+ 5 buổi cấy Nám , M-Blanc<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-29 15:26:05', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (2, 'Detox', 'detox', 'Sau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phương pháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề', '<span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Sau khi xuất hiện những vết nám trên bề mặt da,khách hàng đã tìm kiếm phương pháp trị nám trên mạng và thông qua bạn bè, mà họchưa nhận thức được một vấn đề “Nám da là một bênh lý về da, để điều trị Nám dacần hiểu rõ nguyên nhân và có giải pháp thực sự phù hợp cho từng loại Nám, và từngloại da vào từng thời điểm khác nhau, và điều đó chỉ có được tại những thẩm mỹviện có đội ngũ chuyên gia, bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiếtbị máy điều trị hiện đai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ,nhanh tại những cơ sở spa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạnbè mách bảo hoặc quảng cáo trên mạng. Hậu quả là làm cho da của mình trở lênngày càng bị tổn thương và yếu đi, mất sức đề kháng, dẫn đến tình trạng Námkhông những ko được cải thiện mà còn tăng đậm hơn</span>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-29 15:29:34', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (3, 'Triphasic Laser', 'triphasic-laser', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp', '<p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">a. Định Nghĩa:</span>Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thànhlên những điểm trắng bất thường<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">b. Nguyên Nhân:</span>Sau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phươngpháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề“Nám da là một bênh lý về da, để điều trị Nám da cần hiểu rõ nguyên nhân và cógiải pháp thực sự phù hợp cho từng loại Nám, và từng loại da vào từng thời điểmkhác nhau, và điều đó chỉ có được tại những thẩm mỹ viện có đội ngũ chuyên gia,bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết bị máy điều trị hiệnđai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ, nhanh tại những cơ sởspa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn bè mách bảo hoặc quảngcáo trên mạng. Hậu quả là làm cho da của mình trở lên ngày càng bị tổn thươngvà yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám không những ko được cải thiệnmà còn tăng đậm hơn.</p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-29 21:48:23', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (4, 'Triphasic Laser', 'triphasic-laser', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp', '<p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">a. Định Nghĩa:</span>Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thànhlên những điểm trắng bất thường<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">b. Nguyên Nhân:</span>Sau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phươngpháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề“Nám da là một bênh lý về da, để điều trị Nám da cần hiểu rõ nguyên nhân và cógiải pháp thực sự phù hợp cho từng loại Nám, và từng loại da vào từng thời điểmkhác nhau, và điều đó chỉ có được tại những thẩm mỹ viện có đội ngũ chuyên gia,bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết bị máy điều trị hiệnđai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ, nhanh tại những cơ sởspa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn bè mách bảo hoặc quảngcáo trên mạng. Hậu quả là làm cho da của mình trở lên ngày càng bị tổn thươngvà yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám không những ko được cải thiệnmà còn tăng đậm hơn.</p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-29 21:56:45', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (5, 'Mblanc', 'mblanc', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù hợp', '<span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Nám hỏng là trường hợp khách hàng đã tưng điềutrị bằng các biện pháp không phù hợp, gây ra nhưng kết quả không mong muốn như:Tình trạng Nám không cải thiện, Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểmhơn là mất sắc tố hình thành lên những điểm trắng bất thường</span>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-30 08:53:07', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (6, 'Laser Platinum', 'laser-platinum', 'ình trạng Nám không cải thiện, Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành lên những điểm trắng bất thường', '<span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù hợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện, Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành lên những điểm trắng bất thường</span>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-30 09:22:06', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (7, 'CSD Chuyên Sâu', 'csd-chuyen-sau', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù hợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện', '<span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù hợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện, Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành lên những điểm trắng bất thường</span>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-30 09:27:41', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (8, 'TRỊ NÁM HỎNG TOÀN DIỆN', 'tri-nam-hong-toan-dien', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù hợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện, Da bị yếu đi, Nám đậm hơn và lan rộng.', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b>\r\nNám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù\r\nhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,\r\nDa bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành\r\nlên những điểm trắng bất thường<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b>\r\nSau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phương\r\npháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề\r\n“Nám da là một bênh lý về da, để điều trị Nám da cần hiểu rõ nguyên nhân và có\r\ngiải pháp thực sự phù hợp cho từng loại Nám, và từng loại da vào từng thời điểm\r\nkhác nhau, và điều đó chỉ có được tại những thẩm mỹ viện có đội ngũ chuyên gia,\r\nbác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết bị máy điều trị hiện\r\nđai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ, nhanh tại những cơ sở\r\nspa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn bè mách bảo hoặc quảng\r\ncáo trên mạng. Hậu quả là làm cho da của mình trở lên ngày càng bị tổn thương\r\nvà yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám không những ko được cải thiện\r\nmà còn tăng đậm hơn.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Dấu Hiệu Nhận Biết\r\nNám Hỏng<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Đã điều trị tại cơ sở Spa, Thẩm mỹ, hoặc tự điều trị<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Da mỏng mạch máu nổi rõ trên mặt da<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Da đỏ và dễ kích ứng khi ra nắng hoặc sử dụng mỹ phẩm<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Nám lan rộng <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Xuất hiện những đốm trắng do mất sắc tố<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>d. Phương Pháp Khoa Học\r\nDành Cho Nám Hỏng<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Xử lý tình trạng Nám hỏng rất phức tạp, đòi hỏi phải có một\r\npháp đồ phù hợp và tổng thể, bao gồm: <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Phục hồi tái tạo da,giúp da khỏe hơn, tự bảo vệ các tác\r\nnhân gây hại<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Xử lý các hắc tố Melanin đã hình thành trên da, giúp da\r\nsáng trở lại<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Ổn định Gốc Nám “Tế Bào Melanocyte” giúp nám không tái\r\nphát<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>e. Kết Quả Nhận Được\r\nSau Liệu Trình<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Phục hồi tái tạo da, da khỏe mạnh không còn đỏ và kích ứng\r\nkhi ra nắng<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Mao mạch máu mờ rõ rệt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Da có độ ẩm, lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 70%<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>f. Pháp Đồ Tại Thiên\r\nKhuê<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ 10 buổi tái tạo phục hồi SOS<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ 10 buổi Triphasic Spot Laser<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ 5 buổi cấy Nguyên Bào Phôi Nám<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:18:08', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (9, 'SOS', 'sos', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù hợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện, Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành lên những điểm trắng bất thường', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b>\r\nNám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù\r\nhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,\r\nDa bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành\r\nlên những điểm trắng bất thường<o:p></o:p></p>\r\n\r\n<b><span style=\"font-size:14.0pt;\r\nmso-bidi-font-size:11.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">b.\r\nNguyên Nhân:</span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\"> Sau khi xuất hiện những vết nám trên bề mặt da,\r\nkhách hàng đã tìm kiếm phương pháp trị nám trên mạng và thông qua bạn bè, mà họ\r\nchưa nhận thức được một vấn đề “Nám da là một bênh lý về da, để điều trị Nám da\r\ncần hiểu rõ nguyên nhân và có giải pháp thực sự phù hợp cho từng loại Nám, và từng\r\nloại da vào từng thời điểm khác nhau, và điều đó chỉ có được tại những thẩm mỹ\r\nviện có đội ngũ chuyên gia, bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết\r\nbị máy điều trị hiện đai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ,\r\nnhanh tại những cơ sở spa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn\r\nbè mách bảo hoặc quảng cáo trên mạng. Hậu quả là làm cho da của mình trở lên\r\nngày càng bị tổn thương và yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám\r\nkhông những ko được cải thiện mà còn tăng đậm hơn</span>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:20:25', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (10, 'Triphasic Laser', 'triphasic-laser', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù hợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b>\r\nNám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phù\r\nhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,\r\nDa bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thành\r\nlên những điểm trắng bất thường<o:p></o:p></p>\r\n\r\n<b><span style=\"font-size:14.0pt;\r\nmso-bidi-font-size:11.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">b.\r\nNguyên Nhân:</span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\"> Sau khi xuất hiện những vết nám trên bề mặt da,\r\nkhách hàng đã tìm kiếm phương pháp trị nám trên mạng và thông qua bạn bè, mà họ\r\nchưa nhận thức được một vấn đề “Nám da là một bênh lý về da, để điều trị Nám da\r\ncần hiểu rõ nguyên nhân và có giải pháp thực sự phù hợp cho từng loại Nám, và từng\r\nloại da vào từng thời điểm khác nhau, và điều đó chỉ có được tại những thẩm mỹ\r\nviện có đội ngũ chuyên gia, bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết\r\nbị máy điều trị hiện đai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ,\r\nnhanh tại những cơ sở spa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn\r\nbè mách bảo hoặc quảng cáo trên mạng. Hậu quả là làm cho da của mình trở lên\r\nngày càng bị tổn thương và yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám\r\nkhông những ko được cải thiện mà còn tăng đậm hơn</span>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:22:37', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (11, 'Cấy Nguyên Bào Phôi Nám', 'cay-nguyen-bao-phoi-nam', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như', '<p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">a. Định Nghĩa:</span>Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thànhlên những điểm trắng bất thường<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">b. Nguyên Nhân:</span>Sau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phươngpháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề“Nám da là một bênh lý về da, để điều trị Nám da cần hiểu rõ nguyên nhân và cógiải pháp thực sự phù hợp cho từng loại Nám, và từng loại da vào từng thời điểmkhác nhau, và điều đó chỉ có được tại những thẩm mỹ viện có đội ngũ chuyên gia,bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết bị máy điều trị hiệnđai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ, nhanh tại những cơ sởspa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn bè mách bảo hoặc quảngcáo trên mạng. Hậu quả là làm cho da của mình trở lên ngày càng bị tổn thươngvà yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám không những ko được cải thiệnmà còn tăng đậm hơn.<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">c. Dấu Hiệu Nhận BiếtNám Hỏng<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Đã điều trị tại cơ sở Spa, Thẩm mỹ, hoặc tự điều trị<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Da mỏng mạch máu nổi rõ trên mặt da<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Da đỏ và dễ kích ứng khi ra nắng hoặc sử dụng mỹ phẩm<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Nám lan rộng<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Xuất hiện những đốm trắng do mất sắc tố</p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:24:43', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (12, 'TRỊ NÁM CỨNG ĐẦU “SAU SINH, NỘI TIẾT” TOÀN DIỆN VIP', 'tri-nam-cung-dau-sau-sinh,-noi-tiet-toan-dien-vip', 'Nám sau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích hắc tố melanin đẩy lên bề mặt da tạo thành các vết Nám', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> Nám\r\nsau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích hắc\r\ntố melanin đẩy lên bề mặt da tạo thành các vết Nám<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><strong><span style=\"mso-bidi-font-size:14.0pt;color:#333333;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0cm;padding:0cm;\r\nmso-bidi-font-style:italic\">Estrogen đóng vai trò định hình đặc trưng của phái\r\nnữ, điều hòa hệ sinh dục, mái tóc, làn da, đường cong cơ thể, đồng thời kiểm\r\nsoát hormone MSH - hormone kích thích sản sinh melanin dưới da. Vì lý do bên trọng\r\ncơ thể,&nbsp; lượng Estrogen thay đổi gây mất\r\ncân bằng nội tiết tố, làm gia tăng hắc sắc tố melanin dẫn đến tình trạng nám nội\r\ntiết.&nbsp;</span></strong><b><span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">.&nbsp;<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sau sinh: Thời gian mang thai, lượng estrogen trong cơ\r\nthể người phụ nữ tăng nhanh chóng để bảo vệ thai nhi. Sau khi sinh con xong,\r\nestrogen suy giảm đột ngột dẫn đến tình trạng rối loạn nội tiết.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sử dụng thuốc tránh thai: Thành phần progestins có\r\ntrong thuốc tránh thai không chỉ gây giữ nước mà còn góp phần không nhỏ trong\r\nviệc kích thích hình nám da. Khi các đốm nám này tiếp xúc với ánh nắng mặt trời\r\nsẽ trở nên đậm màu và lan rộng hơn.&nbsp;&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:11.25pt;vertical-align:baseline\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333\">- Stress, mệt mỏi: Yếu tố\r\ntâm lý, cảm xúc có ảnh hưởng rất lớn đến sức khỏe và vẻ đẹp làn da. Hormone\r\nestrogen do não bộ chỉ đạo buồng trứng tiết ra, chính vì vậy khi não bộ rơi vào\r\ntình trạng căng thẳng, hoạt động của buồng trứng cũng sẽ bị tác động gây đảo\r\nlộn nội tiết tố và dẫn đến tình trạng nám sạm da.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Dấu Hiệu Nhận Biết\r\nNám Sau Sinh &amp; Nội Tiết<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Nám xuất hiên thành những điểm tròn nhỏ ở hai bên gò má<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>d. Phương Pháp Khoa Học\r\nDành Cho Nám Sau Sinh &amp; Nội Tiết<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Nám này xuất phát từ bên trong cơ thể, do vậy khi xử lý tình\r\ntrạng Nám sau sinh &amp; nội tiết đòi hỏi phải kiên trì và có các thiết bị đủ\r\nhiện đại mới giúp cải thiện. Phải kết hợp 3 giải pháp trong 1 liệu trình<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Cái thiện chế độ dinh dưỡng, bổ xung những thành phần thiếu\r\nhụt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Xử lý các hắc tố Melanin đã hình thành trên da, giúp da\r\nsáng trở lại<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Ổn định Gốc Nám “Tế Bào Melanocyte” giúp nám không tiếp tục\r\nphát triển<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>e. Kết Quả Nhận Được\r\nSau Liệu Trình<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Da có độ ẩm, lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 80%<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>f. Pháp Đồ Tại Thiên\r\nKhuê<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ 10 buổi Triphasic Spot Laser<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ 5 buổi cấy MBlanc<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:26:43', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (13, 'Triphasic Laser', 'triphasic-laser', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,Da bị yếu đi,', '<p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">a. Định Nghĩa:</span>Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thànhlên những điểm trắng bất thường<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">b. Nguyên Nhân:</span>Sau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phươngpháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề“Nám da là một bênh lý về da, để điều trị Nám da cần hiểu rõ nguyên nhân và cógiải pháp thực sự phù hợp cho từng loại Nám, và từng loại da vào từng thời điểmkhác nhau, và điều đó chỉ có được tại những thẩm mỹ viện có đội ngũ chuyên gia,bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết bị máy điều trị hiệnđai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ, nhanh tại những cơ sởspa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn bè mách bảo hoặc quảngcáo trên mạng. Hậu quả là làm cho da của mình trở lên ngày càng bị tổn thươngvà yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám không những ko được cải thiệnmà còn tăng đậm hơn.<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">c. Dấu Hiệu Nhận BiếtNám Hỏng<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Đã điều trị tại cơ sở Spa, Thẩm mỹ, hoặc tự điều trị<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Da mỏng mạch máu nổi rõ trên mặt da<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Da đỏ và dễ kích ứng khi ra nắng hoặc sử dụng mỹ phẩm<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Nám lan rộng<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Xuất hiện những đốm trắng do mất sắc tố</p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:28:22', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (14, 'Cấy Mblanc', 'cay-mblanc', 'Nám sau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích hắc tố melanin đẩy lên bề mặt da tạo thành các vết Nám', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> Nám\r\nsau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích hắc\r\ntố melanin đẩy lên bề mặt da tạo thành các vết Nám<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><strong><span style=\"mso-bidi-font-size:14.0pt;color:#333333;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0cm;padding:0cm;\r\nmso-bidi-font-style:italic\">Estrogen đóng vai trò định hình đặc trưng của phái\r\nnữ, điều hòa hệ sinh dục, mái tóc, làn da, đường cong cơ thể, đồng thời kiểm\r\nsoát hormone MSH - hormone kích thích sản sinh melanin dưới da. Vì lý do bên trọng\r\ncơ thể,&nbsp; lượng Estrogen thay đổi gây mất\r\ncân bằng nội tiết tố, làm gia tăng hắc sắc tố melanin dẫn đến tình trạng nám nội\r\ntiết.&nbsp;</span></strong><b><span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">.&nbsp;<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sau sinh: Thời gian mang thai, lượng estrogen trong cơ\r\nthể người phụ nữ tăng nhanh chóng để bảo vệ thai nhi. Sau khi sinh con xong,\r\nestrogen suy giảm đột ngột dẫn đến tình trạng rối loạn nội tiết.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sử dụng thuốc tránh thai: Thành phần progestins có\r\ntrong thuốc tránh thai không chỉ gây giữ nước mà còn góp phần không nhỏ trong\r\nviệc kích thích hình nám da. Khi các đốm nám này tiếp xúc với ánh nắng mặt trời\r\nsẽ trở nên đậm màu và lan rộng hơn.&nbsp;&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:11.25pt;vertical-align:baseline\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333\">- Stress, mệt mỏi: Yếu tố\r\ntâm lý, cảm xúc có ảnh hưởng rất lớn đến sức khỏe và vẻ đẹp làn da. Hormone\r\nestrogen do não bộ chỉ đạo buồng trứng tiết ra, chính vì vậy khi não bộ rơi vào\r\ntình trạng căng thẳng, hoạt động của buồng trứng cũng sẽ bị tác động gây đảo\r\nlộn nội tiết tố và dẫn đến tình trạng nám sạm da.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Dấu Hiệu Nhận Biết\r\nNám Sau Sinh &amp; Nội Tiết<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Nám xuất hiên thành những điểm tròn nhỏ ở hai bên gò má<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>d. Phương Pháp Khoa Học\r\nDành Cho Nám Sau Sinh &amp; Nội Tiết<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Nám này xuất phát từ bên trong cơ thể, do vậy khi xử lý tình\r\ntrạng Nám sau sinh &amp; nội tiết đòi hỏi phải kiên trì và có các thiết bị đủ\r\nhiện đại mới giúp cải thiện. Phải kết hợp 3 giải pháp trong 1 liệu trình<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Cái thiện chế độ dinh dưỡng, bổ xung những thành phần thiếu\r\nhụt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Xử lý các hắc tố Melanin đã hình thành trên da, giúp da\r\nsáng trở lại<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Ổn định Gốc Nám “Tế Bào Melanocyte” giúp nám không tiếp tục\r\nphát triển<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:30:10', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (15, 'TRỊ NÁM CỨNG ĐẦU “SAU SINH, NỘI TIẾT” TOÀN DIỆN', 'tri-nam-cung-dau-sau-sinh,-noi-tiet-toan-dien', 'Nám sau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích hắc tố melanin đẩy lên bề mặt da tạo thành các vết Nám', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b>\r\nNám sau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích\r\nhắc tố melanin đẩy lên bề mặt da tạo thành các vết Nám<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><strong><span style=\"mso-bidi-font-size:14.0pt;color:#333333;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0cm;padding:0cm;\r\nmso-bidi-font-style:italic\">Estrogen đóng vai trò định hình đặc trưng của phái\r\nnữ, điều hòa hệ sinh dục, mái tóc, làn da, đường cong cơ thể, đồng thời kiểm\r\nsoát hormone MSH - hormone kích thích sản sinh melanin dưới da. Vì lý do bên trọng\r\ncơ thể,&nbsp; lượng Estrogen thay đổi gây mất\r\ncân bằng nội tiết tố, làm gia tăng hắc sắc tố melanin dẫn đến tình trạng nám nội\r\ntiết.&nbsp;</span></strong><b><span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">.&nbsp;<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sau sinh: Thời gian mang thai, lượng estrogen trong cơ\r\nthể người phụ nữ tăng nhanh chóng để bảo vệ thai nhi. Sau khi sinh con xong,\r\nestrogen suy giảm đột ngột dẫn đến tình trạng rối loạn nội tiết.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sử dụng thuốc tránh thai: Thành phần progestins có\r\ntrong thuốc tránh thai không chỉ gây giữ nước mà còn góp phần không nhỏ trong\r\nviệc kích thích hình nám da. Khi các đốm nám này tiếp xúc với ánh nắng mặt trời\r\nsẽ trở nên đậm màu và lan rộng hơn.&nbsp;&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:11.25pt;vertical-align:baseline\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333\">- Stress, mệt mỏi: Yếu tố\r\ntâm lý, cảm xúc có ảnh hưởng rất lớn đến sức khỏe và vẻ đẹp làn da. Hormone\r\nestrogen do não bộ chỉ đạo buồng trứng tiết ra, chính vì vậy khi não bộ rơi vào\r\ntình trạng căng thẳng, hoạt động của buồng trứng cũng sẽ bị tác động gây đảo\r\nlộn nội tiết tố và dẫn đến tình trạng nám sạm da.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Dấu Hiệu Nhận Biết\r\nNám Sau Sinh &amp; Nội Tiết<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Nám xuất hiên thành những điểm tròn nhỏ ở hai bên gò má<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>d. Phương Pháp Khoa Học\r\nDành Cho Nám Sau Sinh &amp; Nội Tiết<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Nám này xuất phát từ bên trong cơ thể, do vậy khi xử lý tình\r\ntrạng Nám sau sinh &amp; nội tiết đòi hỏi phải kiên trì và có các thiết bị đủ\r\nhiện đại mới giúp cải thiện. Phải kết hợp 3 giải pháp trong 1 liệu trình<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Cái thiện chế độ dinh dưỡng, bổ xung những thành phần thiếu\r\nhụt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Xử lý các hắc tố Melanin đã hình thành trên da, giúp da\r\nsáng trở lại<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Ổn định Gốc Nám “Tế Bào Melanocyte” giúp nám không tiếp tục\r\nphát triển<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:31:24', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (16, 'Platinum Laser', 'platinum-laser', 'Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,', '<p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">a. Định Nghĩa:</span>Nám hỏng là trường hợp khách hàng đã tưng điều trị bằng các biện pháp không phùhợp, gây ra nhưng kết quả không mong muốn như: Tình trạng Nám không cải thiện,Da bị yếu đi, Nám đậm hơn và lan rộng. Nguy hiểm hơn là mất sắc tố hình thànhlên những điểm trắng bất thường<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">b. Nguyên Nhân:</span>Sau khi xuất hiện những vết nám trên bề mặt da, khách hàng đã tìm kiếm phươngpháp trị nám trên mạng và thông qua bạn bè, mà họ chưa nhận thức được một vấn đề“Nám da là một bênh lý về da, để điều trị Nám da cần hiểu rõ nguyên nhân và cógiải pháp thực sự phù hợp cho từng loại Nám, và từng loại da vào từng thời điểmkhác nhau, và điều đó chỉ có được tại những thẩm mỹ viện có đội ngũ chuyên gia,bác sỹ với nhiều năm kinh nghiệm,cùng với cơ sở thiết bị máy điều trị hiệnđai”. Ngược lại khách hàng tìm kiếm giải pháp giá rẻ, nhanh tại những cơ sởspa, thẩm mỹ không phù hợp, hoặc mua một số loại kem mà bạn bè mách bảo hoặc quảngcáo trên mạng. Hậu quả là làm cho da của mình trở lên ngày càng bị tổn thươngvà yếu đi, mất sức đề kháng, dẫn đến tình trạng Nám không những ko được cải thiệnmà còn tăng đậm hơn.<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">c. Dấu Hiệu Nhận BiếtNám Hỏng<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Đã điều trị tại cơ sở Spa, Thẩm mỹ, hoặc tự điều trị<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Da mỏng mạch máu nổi rõ trên mặt da<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Da đỏ và dễ kích ứng khi ra nắng hoặc sử dụng mỹ phẩm<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Nám lan rộng<o:p></o:p></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">+ Xuất hiện những đốm trắng do mất sắc tố</p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:32:57', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (17, 'Nguyên Bào Phôi Nám', 'nguyen-bao-phoi-nam', 'Nám sau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích hắc tố melanin đẩy lên bề mặt da tạo thành các vết Nám', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b>\r\nNám sau sinh, Nám nội tiết hình thành do quá trình rối loạn hóc môn, kích thích\r\nhắc tố melanin đẩy lên bề mặt da tạo thành các vết Nám<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><strong><span style=\"mso-bidi-font-size:14.0pt;color:#333333;\r\nborder:none windowtext 1.0pt;mso-border-alt:none windowtext 0cm;padding:0cm;\r\nmso-bidi-font-style:italic\">Estrogen đóng vai trò định hình đặc trưng của phái\r\nnữ, điều hòa hệ sinh dục, mái tóc, làn da, đường cong cơ thể, đồng thời kiểm\r\nsoát hormone MSH - hormone kích thích sản sinh melanin dưới da. Vì lý do bên trọng\r\ncơ thể,&nbsp; lượng Estrogen thay đổi gây mất\r\ncân bằng nội tiết tố, làm gia tăng hắc sắc tố melanin dẫn đến tình trạng nám nội\r\ntiết.&nbsp;</span></strong><b><span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">.&nbsp;<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sau sinh: Thời gian mang thai, lượng estrogen trong cơ\r\nthể người phụ nữ tăng nhanh chóng để bảo vệ thai nhi. Sau khi sinh con xong,\r\nestrogen suy giảm đột ngột dẫn đến tình trạng rối loạn nội tiết.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"vertical-align:baseline\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:#333333\">- Phụ nữ sử dụng thuốc tránh thai: Thành phần progestins có\r\ntrong thuốc tránh thai không chỉ gây giữ nước mà còn góp phần không nhỏ trong\r\nviệc kích thích hình nám da. Khi các đốm nám này tiếp xúc với ánh nắng mặt trời\r\nsẽ trở nên đậm màu và lan rộng hơn.&nbsp;&nbsp;<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-08-31 15:34:25', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (18, 'TRỊ NÁM VỚI CÔNG NGHỆ CẤY TINH CHẤT MBLANC', 'tri-nam-voi-cong-nghe-cay-tinh-chat-mblanc', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sự\r\ngia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,\r\ncó vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắng\r\nmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạng\r\ntích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánh\r\nnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây là\r\nmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt\r\ntrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm\r\nnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp với\r\nánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc da\r\nkhô, lão hóa<br>\r\n&nbsp;+ Yếu tố di truyền: Nám da\r\ncòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệ\r\nbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là một\r\ntrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rất\r\nkhó chữa trị.<br>\r\n&nbsp;+ Yếu tố nội tiết: Việc\r\nrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là\r\nnguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này\r\nrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạn\r\ntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phải\r\nnám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn định\r\nlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩm\r\nkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Phương Pháp Khoa Học\r\nCông Nghệ Cấy Tinh Chất Mblanc <o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:\r\n14.0pt;line-height:150%\">+ Cấy tế bào phôi Nám từ huyết tương bằng công nghệ\r\ntách tế bào gốc của Đức Litam S8 – giúp tu sửa và thay thế lại tế bào gốc Nám,\r\ngiúp hắc tố (melanin) không tiếp tục sản sinh và đẩy lên, Nám được điều trị triệt\r\nđể.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:\r\n14.0pt;line-height:150%\">+ Cấy tinh chất M Blank được chiết suất từ:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:54.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;line-height:150%;\r\nfont-family:&quot;Times New Roman&quot;,serif\">Tế bào gốc DNA Cá Hồi, gồm 22 Aa (axit\r\namin) là nguyên tố hình thành tế bào non, vitamin D, và Axit Béo Omega3 giúp\r\ntái tạo màng tế bào. Giúp tái sinh nàn da, giúp da căng bóng, Baby…<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:54.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;line-height:150%;\r\nfont-family:&quot;Times New Roman&quot;,serif\">DNA Lươn Biển, giầu chất chống oxi hóa,\r\ngiúp ức chế quá trình sản sinh melanin, ngăn chặn các gốc tự do làm tổn thương\r\ntế bào, bảo vệ tế bào trước các tác nhân tiêu cực, giúp da luôn khỏe mạnh là yế\r\ntố quan trọng nhất trong quá trình trị liệu. Bên cạnh đó các chất chống oxi hóa\r\ntrong DNA Lươn Biền giúp kích thích quá trinh đào thải hắc tố Nám (melanin) với\r\ntốc độ gấp 26 lần so với Laser<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:14.2pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:7.1pt;line-height:150%\"><span style=\"font-size:\r\n14.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,serif\">+ Cấy tinh chất\r\nMeso HA (<span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hyaluronic Acid&nbsp;) là\r\nphân tử ngậm nước (được tự cơ thể sản sinh, nhưng giảm dẫn theo tốc độ lão hóa\r\ncủa cơ thể), giúp da tăng cường độ ẩm, giúp da luôn căng bóng, tươi trẻ.<o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>e. Kết Quả Nhận Được\r\nSau Liệu Trình<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Da có độ ẩm, lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 60% - 80%<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>f. Pháp Đồ Tại Thiên\r\nKhuê<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ 5-8 buổi cấy Nguyên Bào Phôi Nám<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-09 11:21:24', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (19, 'TRỊ NÁM VỚI CÔNG NGHỆ CẤY TINH CHẤT MBLANC', 'tri-nam-voi-cong-nghe-cay-tinh-chat-mblanc', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người, có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sự\r\ngia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,\r\ncó vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắng\r\nmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạng\r\ntích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánh\r\nnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây là\r\nmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt\r\ntrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm\r\nnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp với\r\nánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc da\r\nkhô, lão hóa<br>\r\n&nbsp;+ Yếu tố di truyền: Nám da\r\ncòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệ\r\nbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là một\r\ntrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rất\r\nkhó chữa trị.<br>\r\n&nbsp;+ Yếu tố nội tiết: Việc\r\nrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là\r\nnguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này\r\nrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạn\r\ntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phải\r\nnám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn định\r\nlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩm\r\nkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Phương Pháp Khoa Học\r\nCông Nghệ Cấy Tinh Chất Mblanc <o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:\r\n14.0pt;line-height:150%\">+ Cấy tế bào phôi Nám từ huyết tương bằng công nghệ\r\ntách tế bào gốc của Đức Litam S8 – giúp tu sửa và thay thế lại tế bào gốc Nám,\r\ngiúp hắc tố (melanin) không tiếp tục sản sinh và đẩy lên, Nám được điều trị triệt\r\nđể.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:\r\n14.0pt;line-height:150%\">+ Cấy tinh chất M Blank được chiết suất từ:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:54.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;line-height:150%;\r\nfont-family:&quot;Times New Roman&quot;,serif\">Tế bào gốc DNA Cá Hồi, gồm 22 Aa (axit\r\namin) là nguyên tố hình thành tế bào non, vitamin D, và Axit Béo Omega3 giúp\r\ntái tạo màng tế bào. Giúp tái sinh nàn da, giúp da căng bóng, Baby…<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:54.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;line-height:150%;\r\nfont-family:&quot;Times New Roman&quot;,serif\">DNA Lươn Biển, giầu chất chống oxi hóa,\r\ngiúp ức chế quá trình sản sinh melanin, ngăn chặn các gốc tự do làm tổn thương\r\ntế bào, bảo vệ tế bào trước các tác nhân tiêu cực, giúp da luôn khỏe mạnh là yế\r\ntố quan trọng nhất trong quá trình trị liệu. Bên cạnh đó các chất chống oxi hóa\r\ntrong DNA Lươn Biền giúp kích thích quá trinh đào thải hắc tố Nám (melanin) với\r\ntốc độ gấp 26 lần so với Laser<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:14.2pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:7.1pt;line-height:150%\"><span style=\"font-size:\r\n14.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,serif\">+ Cấy tinh chất\r\nMeso HA (<span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hyaluronic Acid&nbsp;) là\r\nphân tử ngậm nước (được tự cơ thể sản sinh, nhưng giảm dẫn theo tốc độ lão hóa\r\ncủa cơ thể), giúp da tăng cường độ ẩm, giúp da luôn căng bóng, tươi trẻ.<o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>e. Kết Quả Nhận Được\r\nSau Liệu Trình<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Da có độ ẩm, lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 60% - 80%<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>f. Pháp Đồ Tại Thiên\r\nKhuê<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ 5-8 buổi cấy Nguyên Bào Phôi Nám<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-09 11:27:47', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (20, 'TRỊ NÁM VỚI CÔNG NGHỆ CẤY TINH CHẤT MBLANC', 'tri-nam-voi-cong-nghe-cay-tinh-chat-mblanc', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p><p class=\"MsoNormal\"><b>c. Phương Pháp Khoa HọcCông Nghệ Cấy Tinh Chất Mblanc <o:p></o:p></b></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">+ Cấy tế bào phôi Nám từ huyết tương bằng công nghệtách tế bào gốc của Đức Litam S8 – giúp tu sửa và thay thế lại tế bào gốc Nám,giúp hắc tố (melanin) không tiếp tục sản sinh và đẩy lên, Nám được điều trị triệtđể.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">+ Cấy tinh chất M Blank được chiết suất từ:<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:54.0pt;mso-add-space:auto;text-align:justify;text-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><!--[endif]--><span style=\"font-size:14.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,serif\">Tế bào gốc DNA Cá Hồi, gồm 22 Aa (axitamin) là nguyên tố hình thành tế bào non, vitamin D, và Axit Béo Omega3 giúptái tạo màng tế bào. Giúp tái sinh nàn da, giúp da căng bóng, Baby…<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:54.0pt;mso-add-space:auto;text-align:justify;text-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;line-height:150%;font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><!--[endif]--><span style=\"font-size:14.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,serif\">DNA Lươn Biển, giầu chất chống oxi hóa,giúp ức chế quá trình sản sinh melanin, ngăn chặn các gốc tự do làm tổn thươngtế bào, bảo vệ tế bào trước các tác nhân tiêu cực, giúp da luôn khỏe mạnh là yếtố quan trọng nhất trong quá trình trị liệu. Bên cạnh đó các chất chống oxi hóatrong DNA Lươn Biền giúp kích thích quá trinh đào thải hắc tố Nám (melanin) vớitốc độ gấp 26 lần so với Laser<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:14.2pt;mso-add-space:auto;text-align:justify;text-indent:7.1pt;line-height:150%\"><span style=\"font-size:14.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,serif\">+ Cấy tinh chấtMeso HA (<span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hyaluronic Acid&nbsp;) làphân tử ngậm nước (được tự cơ thể sản sinh, nhưng giảm dẫn theo tốc độ lão hóacủa cơ thể), giúp da tăng cường độ ẩm, giúp da luôn căng bóng, tươi trẻ.<o:p></o:p></span></span></p><p class=\"MsoNormal\"><b>e. Kết Quả Nhận ĐượcSau Liệu Trình<o:p></o:p></b></p><p class=\"MsoNormal\">+ Da có độ ẩm, lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p><p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 60% - 80%<o:p></o:p></p><p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p><p class=\"MsoNormal\"><b>f. Pháp Đồ Tại ThiênKhuê<o:p></o:p></b></p><p class=\"MsoNormal\">+ 5-8 buổi cấy Nguyên Bào Phôi Nám<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-09 11:34:08', '2019-09-13 10:17:43');
INSERT INTO `products` VALUES (21, 'Nguyên Bào Phôi Nám', 'nguyen-bao-phoi-nam', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin,Melanin là yếu tố quyết định màu da của con người', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-09 11:47:58', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (22, 'Nguyên Bào Phôi Nám', 'nguyen-bao-phoi-nam', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,', '<p class=\"MsoNormal\"><span style=\"font-weight: 700;\">a. Định Nghĩa:</span>&nbsp;<span style=\"color: black;\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người, có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắng mặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạng tích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-weight: 700;\">b. Nguyên Nhân:</span><o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><span style=\"font-weight: 700;\"><span style=\"color: black;\">+&nbsp;</span></span><span style=\"color: black;\">Ánh nắng mặt trời:</span><span style=\"color: black;\">&nbsp;Đây là một trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt trời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm nám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp với ánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc da khô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám da còn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệ bệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là một trong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rất khó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việc rối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là nguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này rơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạn tiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phải nám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn định lại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"color: black;\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩm không đúng cách, chế độ sinh hoạt không hợp lý</span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-09 11:50:34', '2019-09-12 15:24:47');
INSERT INTO `products` VALUES (23, 'TRỊ NÁM VỚI CÔNG NGHỆ TRIPHASIC LASER', 'tri-nam-voi-cong-nghe-triphasic-laser', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sự\r\ngia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,\r\ncó vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắng\r\nmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạng\r\ntích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánh\r\nnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây là\r\nmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt\r\ntrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm\r\nnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp với\r\nánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc da\r\nkhô, lão hóa<br>\r\n&nbsp;+ Yếu tố di truyền: Nám da\r\ncòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệ\r\nbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là một\r\ntrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rất\r\nkhó chữa trị.<br>\r\n&nbsp;+ Yếu tố nội tiết: Việc\r\nrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là\r\nnguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này\r\nrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạn\r\ntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phải\r\nnám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn định\r\nlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩm\r\nkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Phương Pháp Khoa Học\r\nCông Nghệ Triphasic Laser <o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:\r\n14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spot\r\nmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặc\r\ntính nổi bật và khách biệt:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasic\r\nlaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối của\r\nda trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng da\r\nbình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệ\r\nlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Tự Điều Chỉnh</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Sau khi đã phân vị được\r\nvùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho\r\nphù hợp. Với vúng da bị Nám, năng lượng sẽ tăng lên gấp 40 lần để phá hủy Hắc Tố\r\nMelanin. Ngược lại vùng da không bị Nám thì các điểm lăng kính sẽ tự động giảm\r\nnăng lượng tới mức trẻ hóa, giúp da căng sáng mà không bị tổn thương.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>e. Kết Quả Nhận Được\r\nSau Liệu Trình<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 70%<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>f. Pháp Đồ Tại Thiên\r\nKhuê<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ 15 buổi Triphasic Laser<o:p></o:p></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-13 23:04:01', '2019-09-30 08:43:14');
INSERT INTO `products` VALUES (24, 'TRỊ NÁM VỚI CÔNG NGHỆ TRIPHASIC LASER', 'tri-nam-voi-cong-nghe-triphasic-laser', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sự\r\ngia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,\r\ncó vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắng\r\nmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạng\r\ntích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánh\r\nnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây là\r\nmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt\r\ntrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm\r\nnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp với\r\nánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc da\r\nkhô, lão hóa<br>\r\n&nbsp;+ Yếu tố di truyền: Nám da\r\ncòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệ\r\nbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là một\r\ntrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rất\r\nkhó chữa trị.<br>\r\n&nbsp;+ Yếu tố nội tiết: Việc\r\nrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là\r\nnguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này\r\nrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạn\r\ntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phải\r\nnám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn định\r\nlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩm\r\nkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Phương Pháp Khoa Học\r\nCông Nghệ Triphasic Laser <o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:\r\n14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spot\r\nmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặc\r\ntính nổi bật và khách biệt:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasic\r\nlaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối của\r\nda trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng da\r\nbình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệ\r\nlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Tự Điều Chỉnh</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Sau khi đã phân vị được\r\nvùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho\r\nphù hợp. Với vúng da bị Nám, năng lượng sẽ tăng lên gấp 40 lần để phá hủy Hắc Tố\r\nMelanin. Ngược lại vùng da không bị Nám thì các điểm lăng kính sẽ tự động giảm\r\nnăng lượng tới mức trẻ hóa, giúp da căng sáng mà không bị tổn thương.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>e. Kết Quả Nhận Được\r\nSau Liệu Trình<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 70%<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>f. Pháp Đồ Tại Thiên\r\nKhuê<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ 15 buổi Triphasic Laser<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>g. Chương Trình Khuyến\r\nMãi<o:p></o:p></b></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-13 23:06:05', '2019-09-30 08:43:14');
INSERT INTO `products` VALUES (25, 'TRỊ NÁM VỚI CÔNG NGHỆ TRIPHASIC LASER', 'tri-nam-voi-cong-nghe-triphasic-laser', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sự\r\ngia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,\r\ncó vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắng\r\nmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạng\r\ntích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánh\r\nnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây là\r\nmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt\r\ntrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm\r\nnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp với\r\nánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc da\r\nkhô, lão hóa<br>\r\n&nbsp;+ Yếu tố di truyền: Nám da\r\ncòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệ\r\nbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là một\r\ntrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rất\r\nkhó chữa trị.<br>\r\n&nbsp;+ Yếu tố nội tiết: Việc\r\nrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là\r\nnguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này\r\nrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạn\r\ntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phải\r\nnám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn định\r\nlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩm\r\nkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>c. Phương Pháp Khoa Học\r\nCông Nghệ Triphasic Laser <o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:\r\n14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spot\r\nmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặc\r\ntính nổi bật và khách biệt:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasic\r\nlaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối của\r\nda trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng da\r\nbình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệ\r\nlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Tự Điều Chỉnh</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Sau khi đã phân vị được\r\nvùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho\r\nphù hợp. Với vúng da bị Nám, năng lượng sẽ tăng lên gấp 40 lần để phá hủy Hắc Tố\r\nMelanin. Ngược lại vùng da không bị Nám thì các điểm lăng kính sẽ tự động giảm\r\nnăng lượng tới mức trẻ hóa, giúp da căng sáng mà không bị tổn thương.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>e. Kết Quả Nhận Được\r\nSau Liệu Trình<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ Lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 70%<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>f. Pháp Đồ Tại Thiên\r\nKhuê<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">+ 15 buổi Triphasic Laser<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>g. Chương Trình Khuyến\r\nMãi<o:p></o:p></b></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-13 23:08:17', '2019-09-30 08:43:14');
INSERT INTO `products` VALUES (26, 'TRỊ NÁM VỚI CÔNG NGHỆ TRIPHASIC LASER', 'tri-nam-voi-cong-nghe-triphasic-laser', 'Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p><p class=\"MsoNormal\"><b>c. Phương Pháp Khoa HọcCông Nghệ Triphasic Laser <o:p></o:p></b></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spotmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặctính nổi bật và khách biệt:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasiclaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối củada trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng dabình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Tự Điều Chỉnh</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Sau khi đã phân vị đượcvùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng chophù hợp. Với vúng da bị Nám, năng lượng sẽ tăng lên gấp 40 lần để phá hủy Hắc TốMelanin. Ngược lại vùng da không bị Nám thì các điểm lăng kính sẽ tự động giảmnăng lượng tới mức trẻ hóa, giúp da căng sáng mà không bị tổn thương.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>e. Kết Quả Nhận ĐượcSau Liệu Trình<o:p></o:p></b></p><p class=\"MsoNormal\">+ Lớp biểu bì mềm mại, bóng mướt<o:p></o:p></p><p class=\"MsoNormal\">+ Vết Nám mờ đi tối thiểu 70%<o:p></o:p></p><p class=\"MsoNormal\">+ Lỗ chân lông thu nhỏ, nếp nhăn mờ đi đáng kể<o:p></o:p></p><p class=\"MsoNormal\"><b>f. Pháp Đồ Tại ThiênKhuê<o:p></o:p></b></p><p class=\"MsoNormal\">+ 15 buổi Triphasic Laser<o:p></o:p></p><p class=\"MsoNormal\"><b>g. Chương Trình KhuyếnMãi<o:p></o:p></b></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-13 23:12:06', '2019-09-30 08:43:14');
INSERT INTO `products` VALUES (27, 'TRỊ NÁM VỚI CÔNG NGHỆ TRIPHASIC LASERs', 'tri-nam-voi-cong-nghe-triphasic-lasers', 'Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.', 'Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.Sau khi đã phân vị được vùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng cho phù hợp.', 10, NULL, NULL, NULL, NULL, 5, '2019-09-13 23:14:08', '2019-09-30 08:43:14');
INSERT INTO `products` VALUES (28, 'Siêu vi kim PRP', 'sieu-vi-kim-prp', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p><p class=\"MsoNormal\"><b>c. Phương Pháp Khoa HọcCông Nghệ Triphasic Laser <o:p></o:p></b></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spotmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặctính nổi bật và khách biệt:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasiclaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối củada trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng dabình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-15 16:31:04', '2019-10-01 14:56:41');
INSERT INTO `products` VALUES (29, 'Trị nám với công nghệ triphasic ( khuyến mãi )', 'tri-nam-voi-cong-nghe-triphasic-khuyen-mai-', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sự gia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người, có vai trò chống nắng', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p><p class=\"MsoNormal\"><b>c. Phương Pháp Khoa HọcCông Nghệ Triphasic Laser <o:p></o:p></b></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spotmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặctính nổi bật và khách biệt:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasiclaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối củada trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng dabình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Tự Điều Chỉnh</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Sau khi đã phân vị đượcvùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng chophù hợp. Với vúng da bị Nám, năng lượng sẽ tăng lên gấp 40 lần để phá hủy Hắc TốMelanin. Ngược lại vùng da không bị Nám thì các điểm lăng kính sẽ tự động giảmnăng lượng tới mức trẻ hóa, giúp da căng sáng mà không bị tổn thương.<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-20 15:58:52', '2019-09-30 08:43:14');
INSERT INTO `products` VALUES (30, 'Trị nám với công nghệ triphasic ( test prev_id )', 'tri-nam-voi-cong-nghe-triphasic-test-prev_id-', 'Đó là những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,', '<p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">a. Định Nghĩa:</span>&nbsp;<span style=\"color: black;\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">b. Nguyên Nhân:</span><o:p></o:p></p><p class=\"MsoNormal\" align=\"left\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\"><span style=\"color: black;\">+&nbsp;</span></span><span style=\"color: black;\">Ánhnắng mặt trời:</span><span style=\"color: black;\">&nbsp;Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"color: black;\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\"><span style=\"font-weight: 700;\">c. Phương Pháp Khoa HọcCông Nghệ Triphasic Laser<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; line-height: 25.5px;\"><span style=\"line-height: 25.5px; color: black;\">Công nghệ trị Nám Laser Triphasic Spotmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặctính nổi bật và khách biệt:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; line-height: 25.5px;\"><span style=\"font-weight: 700;\">+ Định Vị</span><span style=\"line-height: 25.5px;\">: Lăng kính của Triphasiclaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối củada trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng dabình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; line-height: 25.5px;\"><span style=\"font-weight: 700;\">+ Tự Điều Chỉnh</span><span style=\"line-height: 25.5px;\">: Sau khi đã phân vị đượcvùng da Nám và da thường, các điểm lăng kính sẽ tự điều chỉnh năng lượng chophù hợp. Với vúng da bị Nám, năng lượng sẽ tăng lên gấp 40 lần để phá hủy Hắc TốMelanin. Ngược lại vùng da không bị Nám thì các điểm lăng kính sẽ tự động giảmnăng lượng tới mức trẻ hóa, giúp da căng sáng mà không bị tổn thương.</span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-09-28 15:30:28', '2019-09-30 08:43:14');
INSERT INTO `products` VALUES (31, 'TRỊ NÁM VỚI CÔNG NGHỆ TRIPHASIC LASER khuyen mai', 'tri-nam-voi-cong-nghe-triphasic-laser-khuyen-mai', 'Ánh nắng mặt trời: Đây là một trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt trời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm nám hình thành và lan rộng', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p><p class=\"MsoNormal\"><b>c. Phương Pháp Khoa HọcCông Nghệ Triphasic Laser <o:p></o:p></b></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spotmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặctính nổi bật và khách biệt:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasiclaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối củada trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng dabình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-10-01 12:36:46', '2019-10-02 17:42:38');
INSERT INTO `products` VALUES (32, 'TRỊ NÁM TRIPHASIC LASER', 'tri-nam-triphasic-laser', 'Yếu tố nội tiết: Việc rối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là nguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này rơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa tha', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p><p class=\"MsoNormal\"><b>c. Phương Pháp Khoa HọcCông Nghệ Triphasic Laser <o:p></o:p></b></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-bidi-font-size:14.0pt;line-height:150%;color:black\">Công nghệ trị Nám Laser Triphasic Spotmang tính đột về trị liệu Nám bằng Laser, là công nghệ Thông Minh 4.0 với 2 đặctính nổi bật và khách biệt:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b>+ Định Vị</b><span style=\"mso-bidi-font-size:14.0pt;line-height:150%\">: Lăng kính của Triphasiclaser được chia thành 81 điểm lăng kính, chúng sẽ phân tích vùng sáng tối củada trên mỗi điểm năng kính để phân loại đâu là vùng da bị Nám &amp; vùng dabình thường, giúp tăng hiệu quả phá vỡ melanin gấp nhiều lần so với công nghệlaser thông thường mà không làm tổn thương các vùng da không bị Nám<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-10-01 13:53:51', '2020-01-31 10:36:05');
INSERT INTO `products` VALUES (33, 'Trị nám với công nghệ triphasic ( khuyến mãi )', 'tri-nam-voi-cong-nghe-triphasic-khuyen-mai-', 'Ánh nắng mặt trời: Đây là một trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt trời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm nám hình thành và lan rộng.', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sự\r\ngia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,\r\ncó vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắng\r\nmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạng\r\ntích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>b. Nguyên Nhân:</b> <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánh\r\nnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây là\r\nmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt\r\ntrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm\r\nnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp với\r\nánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc da\r\nkhô, lão hóa<br>\r\n&nbsp;+ Yếu tố di truyền: Nám da\r\ncòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệ\r\nbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là một\r\ntrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rất\r\nkhó chữa trị.<br>\r\n&nbsp;+ Yếu tố nội tiết: Việc\r\nrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng là\r\nnguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ này\r\nrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạn\r\ntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phải\r\nnám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn định\r\nlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩm\r\nkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-10-01 15:56:56', '2019-10-02 17:42:38');
INSERT INTO `products` VALUES (34, 'TRỊ NÁM VỚI CÔNG NGHỆ TRIPHASIC LASER khuyen mai', 'tri-nam-voi-cong-nghe-triphasic-laser-khuyen-mai', 'Ánh nắng mặt trời: Đây là một trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặt trời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốm nám hình thành và lan rộng.', '<p class=\"MsoNormal\"><b>a. Định Nghĩa:</b> <span style=\"mso-bidi-font-size:14.0pt;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Đó là&nbsp;những mảng màu nâu xuất hiện trên da, hình thành do sựgia tăng hắc sắc tố melanin. Melanin là yếu tố quyết định màu da của con người,có vai trò chống nắng, bảo vệ cơ thể khỏi tác hại của tia UV có trong ánh nắngmặt trời. Thế nhưng, nếu sắc tố này được sản xuất quá nhiều sẽ dẫn đến tình trạngtích tụ, tập trung tại một vùng nhất định trên da và gây ra nám.<o:p></o:p></span></p><p class=\"MsoNormal\"><b>b. Nguyên Nhân:<img style=\"margin-left:auto;margin-right:auto\" width=\"645\" height=\"429\" src=\"http://localhost/dichvu/uploads/2020/02/01/20200201_1580537197_5e35156d1674d.png\"></b> <o:p></o:p></p><p class=\"MsoNormal\" align=\"left\"><b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">+ </span></b><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-bidi-font-weight:bold\">Ánhnắng mặt trời:</span><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\"> Đây làmột trong những nguyên nhân quan trọng nhất gây nám. Tác động của ánh nắng mặttrời sẽ làm sản sinh một cách bất thường lượng melanin dưới da, khiến những đốmnám hình thành và lan rộng. Bên cạnh đó, việc để làn da tiếp xúc trực tiếp vớiánh nắng mặt trời còn phá hủy tế bào, làm vỡ cấu trúc dưới da dẫn đến việc dakhô, lão hóa<br>&nbsp;+ Yếu tố di truyền: Nám dacòn có thể do yếu tố di truyền gây nên. Theo các nghiên cứu khoa học, tỉ lệbệnh nhân có tiền sử gia đình có người bị nám da lên đến khoảng 30%. Đây là mộttrong những nguyên nhân gây “đau đầu” nhất, bởi nám da do yếu tố di truyền rấtkhó chữa trị.<br>&nbsp;+ Yếu tố nội tiết: Việcrối loạn nột tiết tố gây ra tình trạng hắc sắc tố melanin tăng nhanh cũng lànguyên nhân thường thấy gây nám da. Phụ nữ mang thai thường bị nám, tỉ lệ nàyrơi vào khoảng từ 50-70%. Việc sử dụng thuốc ngừa thai, hoặc bước vào giai đoạntiền mãn kinh, tuổi dậy thì... cũng là những nguyên nhân khiến bạn mắc phảinám. Thông thường, nếu bạn bị nám do rối loạn nội tiết thì sau khi bạn ổn địnhlại nội tiết tố, nám sẽ tự mất đi.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"left\"><span style=\"mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">&nbsp;+ Ngoài ra có rất nhiều nguyên nhân khác như sử dụng mỹ phẩmkhông đúng cách, chế độ sinh hoạt không hợp lý<o:p></o:p></span></p>', 10, NULL, NULL, NULL, NULL, 5, '2019-10-01 15:59:09', '2020-02-04 10:48:38');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `idprofile` int(10) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NULL DEFAULT NULL,
  `firstname` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `idcountry` int(10) UNSIGNED NULL DEFAULT NULL,
  `idprovince` int(10) UNSIGNED NULL DEFAULT NULL,
  `idcitytown` int(10) UNSIGNED NULL DEFAULT NULL,
  `iddistrict` int(10) UNSIGNED NULL DEFAULT NULL,
  `idward` int(10) UNSIGNED NULL DEFAULT NULL,
  `idsex` int(2) UNSIGNED NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `zalo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idprofile`) USING BTREE,
  INDEX `fr_profile_country`(`idcountry`) USING BTREE,
  INDEX `fr_profile_province`(`idprovince`) USING BTREE,
  INDEX `fr_profile_citytown`(`idcitytown`) USING BTREE,
  INDEX `fr_profile_district`(`iddistrict`) USING BTREE,
  INDEX `fr_profile_ward`(`idward`) USING BTREE,
  INDEX `fr_profile_sex`(`idsex`) USING BTREE,
  INDEX `fr_prodile_users`(`iduser`) USING BTREE,
  CONSTRAINT `fr_prodile_users` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_profile_citytown` FOREIGN KEY (`idcitytown`) REFERENCES `city_town` (`idcitytown`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_profile_country` FOREIGN KEY (`idcountry`) REFERENCES `country` (`idcountry`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_profile_district` FOREIGN KEY (`iddistrict`) REFERENCES `district` (`iddistrict`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_profile_province` FOREIGN KEY (`idprovince`) REFERENCES `province` (`idprovince`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_profile_sex` FOREIGN KEY (`idsex`) REFERENCES `sex` (`idsex`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_profile_ward` FOREIGN KEY (`idward`) REFERENCES `ward` (`idward`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (1, 2, 'Hậu', 'Tấn', 'Dương', '1980-01-01 00:00:00', 'Số 7, Trần Quang Diệu, P14', 1, 1, 1, 3, 1, 1, '0967655819', 'about', 'facebook', 'zalo', 'uploads/2019/10/15/20191015_1571121559_5da56997578ca.png', '2019-05-05 21:02:41', '2019-10-15 13:39:19');
INSERT INTO `profile` VALUES (6, 15, 'hatazu', 'juong', 'zu', '1988-02-02 00:00:00', 'ninh thuan', 1, 1, 1, 4, 1, NULL, '0125656556', '', '', '', 'uploads/2020/01/29/20200129_1580299504_5e3174f057903.png', '2019-05-08 22:13:47', '2020-01-29 19:05:04');
INSERT INTO `profile` VALUES (7, 16, 'Dung', 'Thanh', 'Nguyễn', '1980-09-25 00:00:00', 'Đồng Nai', 1, 1, 1, 13, 1, NULL, '0967655810', '', '', '', 'uploads/2019/05/17/20190517_1558084001_5cde79a1e2f65.png', '2019-05-17 09:36:04', '2019-10-14 14:07:36');
INSERT INTO `profile` VALUES (8, 24, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2019-08-01 16:49:22', '2019-10-14 13:44:47');
INSERT INTO `profile` VALUES (9, 25, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2019-08-01 16:49:58', '2019-10-14 13:44:47');
INSERT INTO `profile` VALUES (11, 27, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2019-08-01 16:51:50', '2019-10-14 13:44:47');
INSERT INTO `profile` VALUES (12, 28, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'uploads/2019/08/01/20190801_1564654544_5d42bbd010d66.png', '2019-08-01 16:56:43', '2019-10-14 13:44:47');
INSERT INTO `profile` VALUES (13, 29, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '2019-08-01 17:50:50', '2019-10-14 13:44:47');
INSERT INTO `profile` VALUES (14, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-14 14:45:18', '2019-10-14 14:45:18');
INSERT INTO `profile` VALUES (15, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-14 14:45:29', '2019-10-14 14:45:29');
INSERT INTO `profile` VALUES (16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-14 14:46:14', '2019-10-14 14:46:14');
INSERT INTO `profile` VALUES (17, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-14 14:46:23', '2019-10-14 14:46:23');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `idprovince` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameprovince` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcountry` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idprovince`) USING BTREE,
  UNIQUE INDEX `province_nameprovince_unique`(`nameprovince`) USING BTREE,
  INDEX `fr_province`(`idcountry`) USING BTREE,
  CONSTRAINT `fr_province` FOREIGN KEY (`idcountry`) REFERENCES `country` (`idcountry`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, 'TP Hồ Chí Minh', 1, '2019-06-27 09:29:26', '2019-06-27 09:29:26');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `idrole` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` tinyint(5) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idrole`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'administrator', 'Quản trị', 0, '2019-04-13 08:29:22', '2019-04-13 08:30:50');
INSERT INTO `roles` VALUES (2, 'moderator', 'Điều hành viên', 0, '2019-11-20 15:37:25', '2019-11-20 15:37:25');
INSERT INTO `roles` VALUES (3, 'Member', 'Thành viên', 0, '2019-11-20 15:38:06', '2019-11-20 15:38:06');
INSERT INTO `roles` VALUES (4, 'super admin', 'super admin', 1, '2020-03-13 13:41:59', '2020-03-13 13:41:59');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE INDEX `sessions_id_unique`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sex
-- ----------------------------
DROP TABLE IF EXISTS `sex`;
CREATE TABLE `sex`  (
  `idsex` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namesex` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idsex`) USING BTREE,
  UNIQUE INDEX `sex_namesex_unique`(`namesex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sex
-- ----------------------------
INSERT INTO `sex` VALUES (1, 'Nam', '2019-06-27 12:02:32', '2019-06-27 12:03:49');
INSERT INTO `sex` VALUES (2, 'Nữ', '2019-06-27 12:02:40', '2019-06-27 12:02:40');
INSERT INTO `sex` VALUES (3, 'Riêng tư', '2019-06-27 12:03:38', '2019-06-27 12:03:38');

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `idsize` int(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idsize`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, 'M', NULL, '2019-06-18 09:29:29');
INSERT INTO `size` VALUES (2, 'L', NULL, NULL);

-- ----------------------------
-- Table structure for status_types
-- ----------------------------
DROP TABLE IF EXISTS `status_types`;
CREATE TABLE `status_types`  (
  `id_status_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_status_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_status_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status_types
-- ----------------------------
INSERT INTO `status_types` VALUES (1, 'request', NULL, '2019-03-02 09:22:20', '2019-03-02 09:22:20');
INSERT INTO `status_types` VALUES (2, 'finish', NULL, '2019-04-17 11:41:57', '2019-04-17 11:41:57');
INSERT INTO `status_types` VALUES (3, 'draft', NULL, '2019-05-30 11:03:34', '2019-05-30 11:03:34');
INSERT INTO `status_types` VALUES (4, 'publish', NULL, '2019-05-30 11:03:50', '2019-05-30 11:03:50');
INSERT INTO `status_types` VALUES (5, 'trash', NULL, NULL, NULL);
INSERT INTO `status_types` VALUES (7, 'empty', NULL, NULL, '2019-09-12 15:23:39');

-- ----------------------------
-- Table structure for sv_campaigns
-- ----------------------------
DROP TABLE IF EXISTS `sv_campaigns`;
CREATE TABLE `sv_campaigns`  (
  `idcampaign` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_at` datetime(0) NOT NULL,
  `end_at` datetime(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idcampaign`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_customers
-- ----------------------------
DROP TABLE IF EXISTS `sv_customers`;
CREATE TABLE `sv_customers`  (
  `idcustomer` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `idprovince` int(10) UNSIGNED NULL DEFAULT NULL,
  `idward` int(10) UNSIGNED NULL DEFAULT NULL,
  `iddistrict` int(10) UNSIGNED NULL DEFAULT NULL,
  `idcitytown` int(10) UNSIGNED NULL DEFAULT NULL,
  `idcountry` int(10) UNSIGNED NULL DEFAULT NULL,
  `job` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`idcustomer`) USING BTREE,
  INDEX `fr_svcustomer_country`(`idcountry`) USING BTREE,
  INDEX `fr_svcustomer_province`(`idprovince`) USING BTREE,
  INDEX `fr_svcustomer_citytown`(`idcitytown`) USING BTREE,
  INDEX `fr_svcustomer_district`(`iddistrict`) USING BTREE,
  INDEX `fr_svcustomer_ward`(`idward`) USING BTREE,
  CONSTRAINT `fr_svcustomer_citytown` FOREIGN KEY (`idcitytown`) REFERENCES `city_town` (`idcitytown`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_svcustomer_country` FOREIGN KEY (`idcountry`) REFERENCES `country` (`idcountry`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_svcustomer_district` FOREIGN KEY (`iddistrict`) REFERENCES `district` (`iddistrict`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_svcustomer_province` FOREIGN KEY (`idprovince`) REFERENCES `province` (`idprovince`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_svcustomer_ward` FOREIGN KEY (`idward`) REFERENCES `ward` (`idward`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sv_customers
-- ----------------------------
INSERT INTO `sv_customers` VALUES (1, 'dfgdfsg', NULL, 'fsrd', 'ngovanan221277@gmail.com', NULL, NULL, 'dfgdfs', NULL, NULL, 3, 1, NULL, '', NULL, NULL, '2019-08-19 16:51:03', '2019-08-19 16:51:03');
INSERT INTO `sv_customers` VALUES (2, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 18, 1, NULL, '', NULL, 'ok', '2019-08-31 11:20:55', '2019-08-31 11:20:55');
INSERT INTO `sv_customers` VALUES (3, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 18, 1, NULL, '', NULL, 'ok', '2019-08-31 11:40:26', '2019-08-31 11:40:26');
INSERT INTO `sv_customers` VALUES (4, 'hau', NULL, 'duing', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 16, 1, NULL, '', NULL, 'dfs', '2019-08-31 11:45:20', '2019-08-31 11:45:20');
INSERT INTO `sv_customers` VALUES (5, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 17, 1, NULL, '', NULL, NULL, '2019-08-31 12:29:10', '2019-08-31 12:29:10');
INSERT INTO `sv_customers` VALUES (6, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 17, 1, NULL, '', NULL, NULL, '2019-08-31 12:31:20', '2019-08-31 12:31:20');
INSERT INTO `sv_customers` VALUES (7, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 17, 1, NULL, '', NULL, NULL, '2019-08-31 12:42:32', '2019-08-31 12:42:32');
INSERT INTO `sv_customers` VALUES (8, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 17, 1, NULL, '', NULL, NULL, '2019-08-31 12:45:12', '2019-08-31 12:45:12');
INSERT INTO `sv_customers` VALUES (9, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 17, 1, NULL, '', NULL, NULL, '2019-08-31 12:50:02', '2019-08-31 12:50:02');
INSERT INTO `sv_customers` VALUES (10, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 17, 1, NULL, '', NULL, NULL, '2019-08-31 12:51:14', '2019-08-31 12:51:14');
INSERT INTO `sv_customers` VALUES (11, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 17, 1, NULL, '', NULL, NULL, '2019-08-31 12:51:47', '2019-08-31 12:51:47');
INSERT INTO `sv_customers` VALUES (12, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 2, 1, NULL, '', NULL, 'dfgdg', '2019-08-31 15:11:19', '2019-08-31 15:11:19');
INSERT INTO `sv_customers` VALUES (13, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 2, 1, NULL, '', NULL, NULL, '2019-09-03 08:35:44', '2019-09-03 08:35:44');
INSERT INTO `sv_customers` VALUES (14, 'duong', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 3, 1, NULL, '', NULL, 'fgf', '2019-09-07 13:37:54', '2019-09-07 13:37:54');
INSERT INTO `sv_customers` VALUES (15, 'hau', NULL, 'Hau', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 2, 1, NULL, '', NULL, 'fddf', '2019-09-07 13:44:42', '2019-09-07 13:44:42');
INSERT INTO `sv_customers` VALUES (16, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, NULL, 1, NULL, '', NULL, 'ghi chú đơn hàng', '2019-10-14 13:57:50', '2019-09-07 19:47:45');
INSERT INTO `sv_customers` VALUES (17, 'Hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 4, 1, NULL, '', NULL, 'ghi chu', '2019-09-08 14:38:17', '2019-09-08 14:38:17');
INSERT INTO `sv_customers` VALUES (18, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, NULL, 1, NULL, '', NULL, 'ghi chu', '2019-10-14 13:57:50', '2019-09-08 16:50:45');
INSERT INTO `sv_customers` VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-09-08 16:51:38', '2019-09-08 16:51:38');
INSERT INTO `sv_customers` VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-09-08 16:57:23', '2019-09-08 16:57:23');
INSERT INTO `sv_customers` VALUES (21, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, NULL, 1, NULL, '', NULL, 'ghi', '2019-10-14 13:57:50', '2019-09-08 16:57:59');
INSERT INTO `sv_customers` VALUES (22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-09-08 16:59:55', '2019-09-08 16:59:55');
INSERT INTO `sv_customers` VALUES (23, 'Tan', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 6, 1, NULL, '', NULL, 'ghi chu', '2019-09-08 17:07:57', '2019-09-08 17:07:57');
INSERT INTO `sv_customers` VALUES (24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-09-08 17:14:57', '2019-09-08 17:14:57');
INSERT INTO `sv_customers` VALUES (25, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 17:53:31', '2019-09-08 17:53:31');
INSERT INTO `sv_customers` VALUES (26, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:11:50', '2019-09-08 19:11:50');
INSERT INTO `sv_customers` VALUES (27, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:13:04', '2019-09-08 19:13:04');
INSERT INTO `sv_customers` VALUES (28, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:13:44', '2019-09-08 19:13:44');
INSERT INTO `sv_customers` VALUES (29, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:14:23', '2019-09-08 19:14:23');
INSERT INTO `sv_customers` VALUES (30, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:26:47', '2019-09-08 19:26:47');
INSERT INTO `sv_customers` VALUES (31, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:27:13', '2019-09-08 19:27:13');
INSERT INTO `sv_customers` VALUES (32, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:30:31', '2019-09-08 19:30:31');
INSERT INTO `sv_customers` VALUES (33, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:33:21', '2019-09-08 19:33:21');
INSERT INTO `sv_customers` VALUES (34, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:35:44', '2019-09-08 19:35:44');
INSERT INTO `sv_customers` VALUES (35, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:36:25', '2019-09-08 19:36:25');
INSERT INTO `sv_customers` VALUES (36, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:39:52', '2019-09-08 19:39:52');
INSERT INTO `sv_customers` VALUES (37, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:40:30', '2019-09-08 19:40:30');
INSERT INTO `sv_customers` VALUES (38, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:42:46', '2019-09-08 19:42:46');
INSERT INTO `sv_customers` VALUES (39, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 13, 1, NULL, '', NULL, 'dfd', '2019-09-08 19:43:09', '2019-09-08 19:43:09');
INSERT INTO `sv_customers` VALUES (40, 'duong', NULL, 'duing', 'admin@mgkgroup.vn', NULL, '0967655819', 'thu duc', NULL, NULL, 3, 1, NULL, '', NULL, NULL, '2019-09-09 09:05:58', '2019-09-09 09:05:58');
INSERT INTO `sv_customers` VALUES (41, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '0967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 3, 1, NULL, '', NULL, 'tinh tien', '2019-10-05 23:18:51', '2019-10-05 23:18:51');
INSERT INTO `sv_customers` VALUES (42, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '0967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, NULL, 1, NULL, '', NULL, 'ok', '2019-10-14 13:57:50', '2019-10-05 23:20:37');
INSERT INTO `sv_customers` VALUES (43, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '0967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, NULL, 1, NULL, '', NULL, 'ok', '2019-10-14 13:57:50', '2019-10-05 23:26:25');
INSERT INTO `sv_customers` VALUES (44, 'Tan hau', NULL, 'Duong', 'admin@mgkgroup.vn', NULL, '0967655819', 'Số 7, Trần quang diệu, p14', NULL, NULL, 16, 1, NULL, '', NULL, 'ddf', '2019-10-06 10:06:32', '2019-10-06 10:06:32');
INSERT INTO `sv_customers` VALUES (45, 'thanh', NULL, 'nguyen', 'nguyen@mgkgroup.vn', NULL, '012356666', '201, Hiệp bình, Phường Hiệp Bình Chánh', NULL, NULL, 18, 1, NULL, '', NULL, 'nho nhe', '2019-10-08 09:48:04', '2019-10-08 09:48:04');
INSERT INTO `sv_customers` VALUES (46, 'Hùng', NULL, 'Đào', 'hungkarim@mgkgroup.vn', NULL, '0907373875', 'biên hòa', NULL, NULL, 18, 1, NULL, '', NULL, NULL, '2019-10-11 13:51:37', '2019-10-11 13:51:37');
INSERT INTO `sv_customers` VALUES (47, 'Hải', NULL, 'Nguyễn', 'admin@mgkgroup.vn', NULL, '099090999', '75, losangeless', NULL, NULL, 17, 1, NULL, '', NULL, 'chú ý đơn', '2019-10-11 13:55:29', '2019-10-11 13:55:29');
INSERT INTO `sv_customers` VALUES (48, 'toàn', NULL, 'nguyen', 'admin@mgkgroup.vn', NULL, '090999999', '202, Hiệp bình, Phường Hiệp Bình Chánh', NULL, NULL, 18, 1, NULL, '', NULL, 'chu y', '2019-10-11 16:12:20', '2019-10-11 16:12:20');
INSERT INTO `sv_customers` VALUES (49, 'Hằng', NULL, 'Thành', 'admin@mgkgroup.vn', NULL, '011254545454', '100a, phạm văn đồng', NULL, NULL, 14, 1, NULL, '', NULL, 'chú ý', '2019-10-11 16:18:24', '2019-10-11 16:18:24');
INSERT INTO `sv_customers` VALUES (50, 'Nam', NULL, 'Nguyễn', 'admin@mgkgroup.vn', NULL, '0909090909', 'số 7, trần quang diệu, p14', NULL, NULL, 3, 1, NULL, '', NULL, NULL, '2019-11-12 08:31:18', '2019-11-12 08:31:18');
INSERT INTO `sv_customers` VALUES (51, 'Nam', NULL, 'Nguyễn', 'admin@mgkgroup.vn', NULL, '0909091234', 'số 7, trần quang diệu, p14', NULL, NULL, 3, 1, NULL, '', NULL, NULL, '2019-12-02 16:00:11', '2019-12-02 16:00:11');

-- ----------------------------
-- Table structure for sv_post_types
-- ----------------------------
DROP TABLE IF EXISTS `sv_post_types`;
CREATE TABLE `sv_post_types`  (
  `id_post_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_post_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_posts
-- ----------------------------
DROP TABLE IF EXISTS `sv_posts`;
CREATE TABLE `sv_posts`  (
  `id_svpost` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcategory` int(11) NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_post_type` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_svpost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_receives
-- ----------------------------
DROP TABLE IF EXISTS `sv_receives`;
CREATE TABLE `sv_receives`  (
  `idsv_receive` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcustomer` bigint(20) NOT NULL,
  `idsv_post` bigint(20) NOT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcampaign` int(11) NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mac_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idsv_receive`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_sends
-- ----------------------------
DROP TABLE IF EXISTS `sv_sends`;
CREATE TABLE `sv_sends`  (
  `idsv_send` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcustomer` bigint(20) NOT NULL,
  `idsv_post` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `idcampaign` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idsv_send`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `trash` tinyint(5) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'admin', 'admin@mgkgroup.vn', NULL, '$2y$10$3Ds/XEHqtDG4jZpGUBdIPOQYy/9SgRsXb4pKD2B5eiU5SkeZBYWDG', 'cciLZfJp0soBBKKwo1AZQBjpDN3tempJW8oshAKifAYy5LuG53PJ0bXHJlMf', 0, '2019-02-27 10:14:15', '2019-06-27 15:31:50');
INSERT INTO `users` VALUES (15, 'cskh1@mgkgroup.vn', 'cskh1@mgkgroup.vn', NULL, '$2y$10$QQCa0HdnBDnIbXmac1q3euNSAhSnCp9.75tzydSfab4Cpa88zEKoi', 'QhcnYmV641mrg4G6mWf2d3Et2ohEPbjyJXBpoZyL2Ha0lbEkN6QGnWZ9bsdf', 0, '2019-05-08 22:13:47', '2019-08-01 16:39:29');
INSERT INTO `users` VALUES (16, 'letan01dn', 'letan01dn@mgkgroup.vn', NULL, '$2y$10$GPgP6YIMxSp5S0pUj8MDmu97gE0Co4UIWKjNH3eLaYG7KBtdc7wV6', 'eOcQTpyMQvUYbC894ZGvSxivsDCMYr7xF35mqagEGtuommze8DZHJncb5wNQ', 1, '2019-05-17 09:36:04', '2019-05-17 09:36:04');
INSERT INTO `users` VALUES (17, 'letan01bd', 'letan01bd@mgkgroup.vn', NULL, '$2y$10$KH39/RhVD6ai0St8ZW0b6O9PGz5C0E1.l2F1lzfJVqNf5nO/dyCz6', NULL, 1, '2019-05-17 09:36:49', '2019-05-17 09:36:49');
INSERT INTO `users` VALUES (18, 'digital1', 'digital1@mgkgroup.vn', NULL, '$2y$10$h2zeZyxVFQbky62Kbz.q2OympEwRlfNecRc/cm7TDVwQGE3PmJ6Lu', 'dslUs9Vmvfi3jEF3kJx0kD0FL6gqJNDbvuS8M4yk6OcOGXtZgGVWKEwvLpV6', 1, '2019-05-17 09:39:23', '2019-05-17 09:39:23');
INSERT INTO `users` VALUES (23, 'cskh2@mgkgroup.vn', 'cskh2@mgkgroup.vn', NULL, '$2y$10$FymjL7jOLo7VX9L2saQ9JOIg2c.mX67jM0P/XNSNEAQudxbo2E2ny', NULL, 0, '2019-08-01 16:40:25', '2019-08-01 16:40:25');
INSERT INTO `users` VALUES (24, 'cskh3@mgkgroup.vn', 'cskh3@mgkgroup.vn', NULL, '$2y$10$WOJe5BFGj5iwFnLcOD4ZpejjnbQmTQai0dCwHCFvjvL3fSI.N1XKm', NULL, 0, '2019-08-01 16:49:21', '2019-08-01 16:49:21');
INSERT INTO `users` VALUES (25, 'cskh4@mgkgroup.vn', 'cskh4@mgkgroup.vn', NULL, '$2y$10$W4MKtJvIWLkAvhw5dMcvPeHbmW1BOFUR.t5fiLGJGy2CN97THP2ge', NULL, 0, '2019-08-01 16:49:58', '2019-08-01 16:49:58');
INSERT INTO `users` VALUES (27, 'cskh6@mgkgroup.vn', 'cskh6@mgkgroup.vn', NULL, '$2y$10$v/qSfGpRPI/gMyVP8qYMFOEc3yybjeNSgLOzJ6ZZ.2zuqhIl3Nk8m', NULL, 0, '2019-08-01 16:51:49', '2019-08-01 16:51:49');
INSERT INTO `users` VALUES (28, 'cskhmgk01@mgkgroup.vn', 'cskhmgk01@mgkgroup.vn', NULL, '$2y$10$WfE64sKZUp21jJhQ8cIOu..3OGkdCm.gNVEP8mmfHoeP9rDeNkQiG', NULL, 0, '2019-08-01 16:56:43', '2019-08-01 17:01:08');
INSERT INTO `users` VALUES (29, 'cskh5@mgkgroup.vn', 'cskh5@mgkgroup.vn', NULL, '$2y$10$tiYAKeSW8n41rE67tplEwe6M6plZlS9VvpY5wGKD8YxmesB2TNVae', NULL, 0, '2019-08-01 17:50:50', '2019-08-01 17:50:50');
INSERT INTO `users` VALUES (30, 'Tan hau', 'hatazu@gmail.com', NULL, '$2y$10$zut/sBB2QwdypTjZu0qyO.w1VA7LyD83NPiSIO//kZSPYDcj1BUg.', NULL, 1, '2019-09-01 10:10:14', '2019-09-01 10:10:14');

-- ----------------------------
-- Table structure for ward
-- ----------------------------
DROP TABLE IF EXISTS `ward`;
CREATE TABLE `ward`  (
  `idward` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameward` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddistrict` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idward`) USING BTREE,
  INDEX `fr_ward_district`(`iddistrict`) USING BTREE,
  CONSTRAINT `fr_ward_district` FOREIGN KEY (`iddistrict`) REFERENCES `district` (`iddistrict`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ward
-- ----------------------------
INSERT INTO `ward` VALUES (1, 'Phường 14', 3, '2019-06-27 09:51:22', '2019-06-27 09:51:22');

-- ----------------------------
-- Procedure structure for activity_interactive
-- ----------------------------
DROP PROCEDURE IF EXISTS `activity_interactive`;
delimiter ;;
CREATE PROCEDURE `activity_interactive`(IN `_idimport` INT(11))
BEGIN
  DECLARE _parent_idpost_exp int;
  set _parent_idpost_exp = (select idpost from impposts where idimppost = _idimport);
	select p.body, ( select icon from post_types where idposttype = p.id_post_type) as icon , expp.id_status_type, expp.url_avatar, expp.firstname, expp.middlename, expp.lastname, expp.created_at from (select exp.*, pr.firstname, pr.lastname, pr.middlename, pr.url_avatar from (select * from expposts where parent_idpost_exp = _parent_idpost_exp) as exp join profile as pr on pr.iduser = exp.idemployee) as expp join posts as p on expp.idpost = p.idpost;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AddMenuItemProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `AddMenuItemProcedure`;
delimiter ;;
CREATE PROCEDURE `AddMenuItemProcedure`(IN `_idmenu` INT(11), IN `_idcategory` INT(11), IN `_idparent` INT(11), IN `_depth` INT(11), IN `_reorder` INT(11), IN `_trash` INT(6))
BEGIN
               insert into menu_has_cate( idmenu, idcategory, idparent, depth, reorder, trash ) values ( _idmenu, _idcategory, _idparent, _depth, _reorder, _trash);
							 select LAST_INSERT_ID() as idmenuhascate;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AddPermissionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `AddPermissionProcedure`;
delimiter ;;
CREATE PROCEDURE `AddPermissionProcedure`(IN `_name` VARCHAR(250), IN `_description` TEXT, IN _idpermcommand INT(11), IN _idcategory INT(11))
BEGIN             
                INSERT into permissions(`name`,description,idpermcommand,idcategory) VALUES (_name, _description, _idpermcommand, _idcategory);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AddProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `AddProductProcedure`;
delimiter ;;
CREATE PROCEDURE `AddProductProcedure`(IN `_idproduct` INT(11), IN `_namestore` VARCHAR(255))
BEGIN
                declare _idstore int;
                set _idstore = (select idcategory from categories where shortname = _namestore);
                insert into exp_products(idproduct,iduser,amount,price,idstore,size,ice_water,sugar,topping) values(_idproduct,_iduser,_amount,_price,_idstore,_size,_ice_water,_sugar,_topping); 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CategoryByIdcatetype
-- ----------------------------
DROP PROCEDURE IF EXISTS `CategoryByIdcatetype`;
delimiter ;;
CREATE PROCEDURE `CategoryByIdcatetype`(IN `_idcatetype` INT(11))
BEGIN
                select * from categories where idcattype = _idcatetype; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CategoryHasProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `CategoryHasProduct`;
delimiter ;;
CREATE PROCEDURE `CategoryHasProduct`(IN `_list_idcat` VARCHAR(255), IN `_idproduct` INT(11))
BEGIN
                declare list_idcat varchar(255);
                set @_sign = ",";
                call split_string(_list_idcat, _idproduct, @_sign, list_idcat); 
                SET @s = CONCAT("INSERT INTO catehasproduct (idproduct,idcategory) VALUES ", list_idcat); 
                PREPARE stmt1 FROM @s; 
                EXECUTE stmt1; 
                DEALLOCATE PREPARE stmt1;
								
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CompleteListOrderProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CompleteListOrderProcedure`;
delimiter ;;
CREATE PROCEDURE `CompleteListOrderProcedure`(IN `_ordernumber` INT(11))
BEGIN 
select  ordpro.*,(select urlfile from files where idfile = ordpro.idfile) as urlfile from (select p.namepro,p.short_desc,(select idfile from producthasfile where idproduct = p.idproduct and hastype= 1 ORDER BY idproducthasfile desc limit 1) as idfile, ex.* from (select * from exp_products where ordernumber = _ordernumber) as ex join products as p on ex.idproduct = p.idproduct) as ordpro;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CreateMenuHasIdCateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreateMenuHasIdCateProcedure`;
delimiter ;;
CREATE PROCEDURE `CreateMenuHasIdCateProcedure`(IN `_str_query` VARCHAR(255))
BEGIN
                SET @sqlv=_str_query;
                PREPARE stmt FROM @sqlv;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CreateProfileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreateProfileProcedure`;
delimiter ;;
CREATE PROCEDURE `CreateProfileProcedure`(IN `_iduser` INT, IN `_firstname` VARCHAR(255), IN `_middlename` VARCHAR(255), IN `_lastname` VARCHAR(255), IN `_address` VARCHAR(255), IN `_idcitytown` INT, IN `_iddistrict` INT, IN `_mobile` VARCHAR(255), IN `_about` VARCHAR(255), IN `_facebook` VARCHAR(255), IN `_zalo` VARCHAR(255), IN `_url_avatar` VARCHAR(255))
BEGIN
                insert into profile(iduser, firstname, middlename, lastname, address, idcitytown, iddistrict, mobile, about, facebook , zalo, url_avatar) values (_iduser, _firstname, _middlename, _lastname, _address, _idcitytown, _iddistrict, _mobile, _about, _facebook , _zalo, _url_avatar);
            SELECT LAST_INSERT_ID() as idprofile;
						END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CreatPostApiProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreatPostApiProcedure`;
delimiter ;;
CREATE PROCEDURE `CreatPostApiProcedure`(IN `_firstname` VARCHAR(255) CHARSET utf8mb4, IN `_body` TEXT CHARSET utf8mb4, IN `_nametype` VARCHAR(255), IN `_idfile` INT(11), IN `_namecat` VARCHAR(255), IN `_mobile` VARCHAR(255), IN `_email` VARCHAR(255), IN `_address` VARCHAR(255) CHARSET utf8mb4, IN `_name_status_type` VARCHAR(250), IN `_birthday` VARCHAR(255), IN `_job` VARCHAR(255) CHARSET utf8mb4, IN `_facebook` VARCHAR(255) CHARSET utf8mb4)
BEGIN
            DECLARE _idcategory INT;
            DECLARE _idposttype INT;
            DECLARE _idpost INT;
            DECLARE _idcattype INT;
            DECLARE _catnametype VARCHAR(255);
            DECLARE _hastype VARCHAR(255);
            DECLARE _idcustomer INT;
            DECLARE _percent_process INT;
            DECLARE _id_status_type INT;
            DECLARE _id_imppost INT;
            SET _percent_process = 0;
            SET _id_status_type = (SELECT id_status_type FROM status_types WHERE name_status_type = _name_status_type);
            SET _catnametype = "website";
            SET _idcattype = (SELECT idcattype FROM category_types WHERE catnametype=_catnametype); 
            SET _idposttype = (SELECT idposttype FROM post_types WHERE nametype = _nametype);
            SET _hastype = "image";
            IF EXISTS(SELECT _idcustomer FROM sv_customers WHERE mobile = _mobile LIMIT 1) THEN
                BEGIN
                SET _idcustomer = (SELECT idcustomer FROM sv_customers WHERE mobile = _mobile LIMIT 1);
                END;
            ELSE
                BEGIN
                INSERT INTO sv_customers(firstname, email, mobile, address, birthday, job, facebook) VALUES(_firstname,_email,_mobile,_address, _birthday, _job, _facebook);
                SET _idcustomer = LAST_INSERT_ID();
                END;
            END IF;
            IF EXISTS(SELECT idcategory FROM categories WHERE namecat = _namecat LIMIT 1) THEN
                BEGIN
                SET _idcategory = (SELECT idcategory FROM categories WHERE namecat = _namecat LIMIT 1);
                END;
            ELSE
                BEGIN
                INSERT INTO categories(namecat,idcattype,idparent) VALUES(_namecat,_idcattype,NULL); 
                SET _idcategory = LAST_INSERT_ID();
                END;
            END IF;
            INSERT INTO posts(body,id_post_type,idcategory) VALUES(_body,_idposttype,_idcategory);
            SET _idpost = LAST_INSERT_ID();
            INSERT INTO post_has_files (idpost,hastype,idfile) VALUES(_idpost,_hastype,_idfile);
            INSERT INTO impposts(idpost,id_status_type,percent_process,iduser_imp,address_reg) VALUES(_idpost,_id_status_type,_percent_process,_idcustomer,_address);
            SET _id_imppost = LAST_INSERT_ID();
            SELECT _id_imppost;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CrossProductHasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CrossProductHasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `CrossProductHasFileProcedure`(IN `_idproduct` INT(11), IN `_cross_idproduct` INT(11), IN `_idfile` INT(11), IN `_crosstype` VARCHAR(255))
BEGIN
                insert into cross_product(idproduct,crosstype,idproduct_cross) values(_idproduct,_crosstype,_cross_idproduct);
                insert into producthasfile(idproduct,hastype,idfile,status_file) values(_cross_idproduct,"thumbnail",_idfile,1);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for customer_interactive
-- ----------------------------
DROP PROCEDURE IF EXISTS `customer_interactive`;
delimiter ;;
CREATE PROCEDURE `customer_interactive`(IN `_parent_idpost_exp` INT, IN `_body` TEXT CHARSET utf8mb4, IN `_id_post_type` INT, IN `_id_status_type` INT, IN `_idemployee` INT)
BEGIN
	DECLARE	_idpost INT;
	INSERT INTO posts(body,id_post_type) VALUES(_body,_id_post_type);
        SET _idpost = LAST_INSERT_ID();
        INSERT INTO expposts(idpost,id_status_type,idemployee,parent_idpost_exp) VALUES(_idpost,_id_status_type,_idemployee,_parent_idpost_exp);
	select LAST_INSERT_ID() as id_exppost;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteProducthasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteProducthasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `DeleteProducthasFileProcedure`(IN `_idproducthasfile` INT(11))
BEGIN
                UPDATE producthasfile set status_file = 0 where idproducthasfile = _idproducthasfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteRoleProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteRoleProcedure`;
delimiter ;;
CREATE PROCEDURE `DeleteRoleProcedure`(IN `_idrole` int)
BEGIN
	update roles set trash = 1 WHERE idrole = _idrole;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteUserProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteUserProcedure`;
delimiter ;;
CREATE PROCEDURE `DeleteUserProcedure`(IN `_iduser` INT)
BEGIN
                update users 
								set trash = 1
								where id=_iduser;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailByIdProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailByIdProductProcedure`;
delimiter ;;
CREATE PROCEDURE `DetailByIdProductProcedure`(IN `_idproduct` INT(11), IN `_idstore` INT(11))
BEGIN
                 DECLARE id_thumbnail int;
                                declare url_thumbnail varchar(255);
                                set id_thumbnail =  (SELECT idfile from producthasfile WHERE idproduct=_idproduct and hastype= 1 ORDER BY idproducthasfile DESC LIMIT 1);
                                set url_thumbnail = (SELECT urlfile FROM files where idfile = id_thumbnail);
                                select imp.idimp, p.idproduct,p.namepro,p.slug,p.short_desc,p.description,p.idsize,(select `value` from size where idsize=p.idsize) as _size, p.idcolor,p.id_post_type,p.created_at as created_pro,p.updated_at as updated_pro,imp.*,id_thumbnail, url_thumbnail from (select * FROM products WHERE idproduct=_idproduct) as p join (SELECT * from imp_products where idproduct=_idproduct and idstore=_idstore) as imp on p.idproduct = imp.idproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailCustomerProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailCustomerProcedure`;
delimiter ;;
CREATE PROCEDURE `DetailCustomerProcedure`(IN `_iduser` INT(11))
BEGIN
    select cus.firstname,cus.middlename, cus.lastname,cus.mobile,cus.email, (CONCAT_WS(', ',address,(select namedist from district where iddistrict = cus.iddistrict),(select namecitytown from city_town where idcitytown = cus.idcitytown))) as address from sv_customers as cus where idcustomer = _iduser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailInteractive
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailInteractive`;
delimiter ;;
CREATE PROCEDURE `DetailInteractive`(IN `_idimport` INT)
BEGIN
	select post_imp.*, cus.* from (select p.idpost, p.body, imp.iduser_imp from (select * from impposts where idimppost = _idimport) as imp left join posts as p on imp.idpost=p.idpost) as post_imp join
	 sv_customers as cus on cus.idcustomer = post_imp.iduser_imp;
    END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailOrderByIdnumberOrderProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailOrderByIdnumberOrderProcedure`;
delimiter ;;
CREATE PROCEDURE `DetailOrderByIdnumberOrderProcedure`(IN `_idnumberorder` INT(11))
BEGIN             
               SELECT info1.*,phf1.idfile, f.urlfile,p.namepro, p.slug, p.short_desc, p.description FROM (SELECT * FROM `exp_products` WHERE idstore = 11 and id_status_type = 1 and idnumberorder = _idnumberorder) as info1 LEFT JOIN producthasfile as phf1 on info1.prev_idproducthasfile = phf1.idproducthasfile LEFT JOIN files as f on phf1.idfile = f.idfile LEFT JOIN products as p on info1.idproduct = p.idproduct; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailOrderByIdorderProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailOrderByIdorderProcedure`;
delimiter ;;
CREATE PROCEDURE `DetailOrderByIdorderProcedure`(IN `_idnumberorder` INT(11))
BEGIN 
SELECT info1.*,phf1.idfile, f.urlfile,p.namepro, p.slug, p.short_desc, p.description FROM (SELECT * FROM `exp_products` WHERE idstore = 11 and id_status_type = 1 and idnumberorder = _idnumberorder) as info1 LEFT JOIN producthasfile as phf1 on info1.prev_idproducthasfile = phf1.idproducthasfile LEFT JOIN files as f on phf1.idfile = f.idfile LEFT JOIN products as p on info1.idproduct = p.idproduct; 
 END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditDetailByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditDetailByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `EditDetailByIdProcedure`(IN `_idproduct` INT(11), IN `_idstore` INT(11))
BEGIN             
               set @idorder:= 0;
							 SELECT info1.*, imp3.*,phf2.idfile, f.urlfile as url_thumbnail, p.namepro, p.slug, p.short_desc, p.description FROM (SELECT imp2.idimp, imp2.idproduct, MAX(phf1.idproducthasfile) as max_idproducthasfile FROM (SELECT (@idorder:= @idorder + 1) as idorder,imp1.* FROM (SELECT * FROM imp_products WHERE idstore = 31 and id_status_type = 4 AND idcrosstype = 0 AND idproduct = _idproduct) as imp1) as imp2 LEFT JOIN producthasfile as phf1 on phf1.idproduct = imp2.idproduct GROUP BY imp2.idorder) as info1 LEFT JOIN imp_products as imp3 on info1.idimp = imp3.idimp LEFT JOIN producthasfile as phf2 on info1.max_idproducthasfile = phf2.idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN products as p on info1.idproduct = p.idproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EnableAddUserProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `EnableAddUserProcedure`;
delimiter ;;
CREATE PROCEDURE `EnableAddUserProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					 SELECT *,1 as allow FROM USERS WHERE trash < 1;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'edit' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'delete' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EnableCreateNewCategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `EnableCreateNewCategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `EnableCreateNewCategoryProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					 SELECT 1 as allow;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'edit' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'delete' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EnableListCateTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `EnableListCateTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `EnableListCateTypeProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					SELECT *,1 as allow from category_types;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EnableListPostTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `EnableListPostTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `EnableListPostTypeProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					SELECT *,1 as allow from post_types;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EnableListStatusTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `EnableListStatusTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `EnableListStatusTypeProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					SELECT *,1 as allow from status_types;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Getparentidprocedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `Getparentidprocedure`;
delimiter ;;
CREATE PROCEDURE `Getparentidprocedure`(IN `id_post` INT(11))
BEGIN
                  DECLARE A INT;
                  DECLARE XYZ Varchar(50);
                  SET A = 1;
                  SET XYZ = "";
                  WHILE A <=10 DO
                  SET XYZ = CONCAT(XYZ,A,",");
                  SET A = A + 1;
                  END WHILE;
                  SELECT XYZ;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GrantPermissionRoleProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `GrantPermissionRoleProcedure`;
delimiter ;;
CREATE PROCEDURE `GrantPermissionRoleProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					SELECT 1 as allow, imp.idimp_perm, p.name as nameperm, r.name as namerole, u.name as nameuser FROM imp_perms as imp left join permissions as p ON imp.idperm = p.idperm LEFT join roles as r on imp.idrole = r.idrole LEFT join users as u ON imp.iduserimp = u.id;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'edit' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'delete' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GrantRoleForUserProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `GrantRoleForUserProcedure`;
delimiter ;;
CREATE PROCEDURE `GrantRoleForUserProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					 SELECT 1 as allow, g.idgrant, r.idrole, r.`name` as namerole, (select name from users where id = g.to_iduser) as touser, (select name from users where id=g.by_iduser) as byuser from `grants` as g LEFT join roles as r on g.idrole = r.idrole;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'edit' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'delete' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ImportByCrossParentProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ImportByCrossParentProcedure`;
delimiter ;;
CREATE PROCEDURE `ImportByCrossParentProcedure`(IN `_idproduct` INT(11), IN `_idcustomer` INT(11), IN `_iduser` INT(11), IN `_idcrosstype` INT(11), IN `_idparentcross` INT(11), IN `_amount` DOUBLE(20,0), IN `_price_import` DOUBLE(20,0), IN `_price` DOUBLE(20,0),  IN `_quality_sale` INT(11), IN `_note` TEXT, IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11), IN `_catnametype` VARCHAR(250), IN `_shortname` VARCHAR(250))
BEGIN             
                DECLARE _idcattype int;
                declare _idstore int;
                set _idcattype = 0; set _idstore = 0;
                set _idcattype = (select idcattype from category_types where catnametype=_catnametype order by idcattype DESC limit 1);
                set _idstore = (select cat.idcategory from (select * from categories WHERE idcattype = _idcattype) as cat WHERE cat.shortname = _shortname);
                set @prev_id = 0;
                set @prev_id = ( SELECT MAX(idimp) as max_idimp FROM imp_products WHERE idstore = _idstore and id_status_type = 4 and idproduct = _idproduct and idcrosstype in (0,_idcrosstype) GROUP BY idproduct );
                INSERT INTO imp_products(idproduct, idcustomer, iduser, idcrosstype, idparentcross, amount, price_import, price, quality_sale, note, idstore, axis_x, axis_y, axis_z,id_status_type, prev_id) VALUES ( _idproduct, _idcustomer, _iduser, _idcrosstype, _idparentcross, _amount, _price_import, _price, _quality_sale, _note, _idstore, _axis_x, _axis_y, _axis_z,_id_status_type, @prev_id);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ImportProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ImportProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ImportProductProcedure`(IN `_idproduct` INT(11), IN `_idcustomer` INT(11), IN `_iduser` INT(11), IN `_idcrosstype` INT(11), IN `_idparentcross` INT(11), IN `_amount` DOUBLE(20,0), IN `_price_import` DOUBLE(20,0), IN `_price` DOUBLE(20,0),  IN `_quality_sale` INT(11), IN `_note` TEXT, IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11), IN `_catnametype` VARCHAR(250), IN `_shortname` VARCHAR(250), IN `_prev_id` INT(11))
BEGIN
                DECLARE _idcattype int;
								declare _idstore int;
								set _idcattype = 0; set _idstore = 0;
								set _idcattype = (select idcattype from category_types where catnametype=_catnametype order by idcattype DESC limit 1);
								set _idstore = (select cat.idcategory from (select * from categories WHERE idcattype = _idcattype) as cat WHERE cat.shortname = _shortname);
								INSERT INTO imp_products(idproduct, idcustomer, iduser, idcrosstype, idparentcross, amount, price_import, price, quality_sale, note, idstore, axis_x, axis_y, axis_z,id_status_type, prev_id) VALUES ( _idproduct, _idcustomer, _iduser, _idcrosstype, _idparentcross, _amount, _price_import, _price, _quality_sale, _note, _idstore, _axis_x, _axis_y, _axis_z,_id_status_type, _prev_id);             
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ImppermbyidProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ImppermbyidProcedure`;
delimiter ;;
CREATE PROCEDURE `ImppermbyidProcedure`(IN `idimpperm` INT(11))
BEGIN
                SELECT imp.idimp_perm, imp.idperm, p.name as nameperm,p.description as desperm, imp.idrole, r.name as namerole,r.description as desrole,u.name as nameuser FROM (select * from imp_perms where idimp_perm = idimpperm) as imp left join permissions as p ON imp.idperm = p.idperm LEFT join roles as r on imp.idrole = r.idrole LEFT join users as u ON imp.iduserimp = u.id;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InfoCustomerOrderProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InfoCustomerOrderProcedure`;
delimiter ;;
CREATE PROCEDURE `InfoCustomerOrderProcedure`(IN `_idnumberorder` int)
BEGIN
	SELECT info5.*,w.nameward, d.namedist, ct.namecitytown, prv.nameprovince, c.namecountry FROM (SELECT 1 as cus,info4.* FROM (SELECT info1.*,svc1.lastname, svc1.middlename, svc1.firstname, svc1.mobile, svc1.address, svc1.idward, svc1.iddistrict, svc1.idcitytown, svc1.idprovince, svc1.idcountry FROM (SELECT idcustomer,idrecipent,iduser FROM `exp_products` WHERE idstore = 11 and id_status_type = 1 and idnumberorder = _idnumberorder and idcustomer > 0 GROUP BY idnumberorder) as info1 LEFT JOIN sv_customers as svc1 on svc1.idcustomer = info1.idcustomer UNION SELECT info3.*,prf.lastname, prf.middlename, prf.firstname, prf.mobile, prf.address, prf.idward, prf.iddistrict, prf.idcitytown, prf.idprovince, prf.idcountry FROM (SELECT idcustomer,idrecipent,iduser FROM `exp_products` WHERE idstore = 11 and id_status_type = 1 and idnumberorder = _idnumberorder and iduser > 0 GROUP BY idnumberorder) as info3 LEFT JOIN `profile` as prf on prf.iduser = info3.iduser) as info4 UNION ALL SELECT 2 as cus, info2.*,svc2.lastname, svc2.middlename, svc2.firstname, svc2.mobile, svc2.address, svc2.idward, svc2.iddistrict, svc2.idcitytown, svc2.idprovince, svc2.idcountry FROM (SELECT idcustomer,idrecipent,iduser FROM `exp_products` WHERE idstore = 11 and id_status_type = 1 and idnumberorder = _idnumberorder and idrecipent >= 0 GROUP BY idnumberorder) as info2 LEFT JOIN sv_customers as svc2 on svc2.idcustomer = info2.idrecipent) as info5 LEFT JOIN ward as w on info5.idward = w.idward LEFT JOIN district as d on info5.iddistrict = d.iddistrict LEFT JOIN city_town as ct on info5.idcitytown =ct.idcitytown LEFT JOIN province as prv on info5.idprovince = prv.idprovince LEFT JOIN country as c on c.idcountry = info5.idcountry;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InfoOrderProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InfoOrderProductProcedure`;
delimiter ;;
CREATE PROCEDURE `InfoOrderProductProcedure`(IN `_ordernumber` INT(11))
BEGIN
                select inf.*, (inf.price_top+inf.price_parent) as unit_price, ((inf.price_top+inf.price_parent)*inf.amount_panent) as mountxprice from (select GROUP_CONCAT(info_order.l_topping SEPARATOR " ") as ltopping, sum(info_order.price) as price_top, info_order.parentidproduct, info_order.namepro, info_order.amount_panent,info_order.price_parent, info_order.urlparent, info_order.created_at from (select CONCAT("<li><lable>",info.topping,"</label> <span class=\"currency\">",info.price,"</span><span class=\"vnd\"></span></li>") as l_topping,info.idproduct, info.parentidproduct, info.price, info.namepro, price_parent, info.amount_panent,info.urlparent, info.created_at from (select cte1.namepro as topping, cte1.idproduct,cte1.parentidproduct, cte1.amount, cte1.price, cte1.urlfile ,cte2.namepro,cte2.price as price_parent,cte2.amount as amount_panent,cte2.urlfile as urlparent, cte2.created_at from (select  ordpro.namepro,ordpro.idproduct,parentidproduct,ordpro.amount,ordpro.price,(select urlfile from files where idfile = ordpro.idfile) as urlfile from (select p.namepro,(select idfile from producthasfile where idproduct = p.idproduct and hastype="thumbnail" ORDER BY idproducthasfile desc limit 1) as idfile, ex.* from (select * from exp_products where ordernumber =  _ordernumber) as ex join products as p on ex.idproduct = p.idproduct) as ordpro) as cte1 LEFT JOIN (select  ordpro.namepro,ordpro.idproduct,parentidproduct,ordpro.amount,ordpro.price,(select urlfile from files where idfile = ordpro.idfile) as urlfile, ordpro.created_at from (select p.namepro,(select idfile from producthasfile where idproduct = p.idproduct and hastype="thumbnail" ORDER BY idproducthasfile desc limit 1) as idfile, ex.* from (select * from exp_products where ordernumber =  _ordernumber and parentidproduct = 0) as ex join products as p on ex.idproduct = p.idproduct) as ordpro) as cte2 on cte1.parentidproduct = cte2.idproduct) as info) as info_order GROUP BY info_order.parentidproduct) as inf;    
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InitImportProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InitImportProductProcedure`;
delimiter ;;
CREATE PROCEDURE `InitImportProductProcedure`(IN `_idproduct` INT(11), IN `_idcustomer` INT(11), IN `_iduser` INT(11), IN `_idcrosstype` INT(11), IN `_idparentcross` INT(11), IN `_amount` DOUBLE(20,0), IN `_price_import` DOUBLE(20,0), IN `_price` DOUBLE(20,0),  IN `_quality_sale` INT(11), IN `_note` TEXT, IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11), IN `_catnametype` VARCHAR(250), IN `_shortname` VARCHAR(250), IN `_prev_id` INT(11))
BEGIN             
                DECLARE _idcattype int;
                declare _idstore int;
                set _idcattype = 0; set _idstore = 0;
                set _idcattype = (select idcattype from category_types where catnametype=_catnametype order by idcattype DESC limit 1);
                set _idstore = (select cat.idcategory from (select * from categories WHERE idcattype = _idcattype) as cat WHERE cat.shortname = _shortname);
                INSERT INTO imp_products(idproduct, idcustomer, iduser, idcrosstype, idparentcross, amount, price_import, price, quality_sale, note, idstore, axis_x, axis_y, axis_z,id_status_type, prev_id) VALUES ( _idproduct, _idcustomer, _iduser, _idcrosstype, _idparentcross, _amount, _price_import, _price, _quality_sale, _note, _idstore, _axis_x, _axis_y, _axis_z,_id_status_type, _prev_id);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InitsessionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InitsessionProcedure`;
delimiter ;;
CREATE PROCEDURE `InitsessionProcedure`(IN _idproduct bigint(11), IN input_quality int(11), IN _idstore int(11),IN _int_count int(11))
BEGIN             
               set @idorder:=(_int_count-1);
               SELECT (@idorder:= @idorder + 1) as idorder, info.* FROM ( SELECT info.* from (select inf1.* from (select idimp, 0 as parent, _idproduct as parent_in, input_quality , idproduct, idcrosstype, idparentcross, amount,price_import, price, quality_sale from imp_products WHERE idproduct = _idproduct and idcrosstype = 0 and idstore = _idstore and id_status_type = 4 and idparentcross = 0 UNION all select idimp, 0 as parent, _idproduct as parent_in, input_quality, idproduct, idcrosstype, idparentcross, amount, price_import, price, quality_sale from imp_products WHERE idparentcross = _idproduct and idcrosstype = 4 and idstore = _idstore and id_status_type = 4) as inf1 ORDER BY inf1.idimp DESC LIMIT 1) as info UNION select idimp, _int_count as parent, _idproduct as parent_in, input_quality, idproduct, idcrosstype, idparentcross, amount, price_import, price, quality_sale from imp_products WHERE idstore = _idstore and id_status_type = 4 and idcrosstype <> 4 and idparentcross = _idproduct) as info;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertCrossProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertCrossProductProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertCrossProductProcedure`(IN `_idproduct` INT(11), IN `_idcrosstype` INT(11), IN `_idproduct_cross` INT(11))
BEGIN
               insert into cross_product(idproduct,idcrosstype,idproduct_cross) VALUES(_idproduct,_idcrosstype,_idproduct_cross);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertFilePath
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertFilePath`;
delimiter ;;
CREATE PROCEDURE `InsertFilePath`(IN `_str_list_file` VARCHAR(255), OUT `_idfile` INT(11))
BEGIN
                
                SET @s = CONCAT('INSERT INTO files(urlfile,name_origin,namefile, typefile) VALUES ', _str_list_file); 
                PREPARE stmt1 FROM @s; 
                EXECUTE stmt1; 
                DEALLOCATE PREPARE stmt1;
                set _idfile = LAST_INSERT_ID();
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertFilesProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertFilesProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertFilesProcedure`(IN `_urlfile` VARCHAR(255), IN `_name_origin` VARCHAR(255), IN `_namefile` VARCHAR(255), IN `_typefile` VARCHAR(255))
BEGIN
                INSERT INTO files(urlfile,name_origin,namefile, typefile) VALUES (_urlfile,_name_origin, _namefile, _typefile);
                SELECT LAST_INSERT_ID() as idfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertImportProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertImportProductProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertImportProductProcedure`(IN _idproduct INT(11) ,IN _iduser INT(11), IN _idcrosstype INT(11), IN _idparentcross INT(11), IN _price INT(11), IN _quality_sale INT(11), IN _idstore int(11), IN _id_status_type int(11), IN _fromdate datetime, IN _todate datetime)
BEGIN           
set @prev_id = 0;
set @prev_id = ( SELECT MAX(idimp) as max_idimp FROM imp_products WHERE idstore = _idstore and id_status_type = 4 and idproduct = _idproduct and idcrosstype in (0,_idcrosstype) GROUP BY idproduct );
                insert into imp_products(idproduct, iduser, idcrosstype, idparentcross, price, quality_sale, idstore,   id_status_type, fromdate, todate, prev_id) VALUES (_idproduct, _iduser, _idcrosstype, _idparentcross, _price,  _quality_sale, _idstore, _id_status_type, _fromdate, _todate, @prev_id);
                select LAST_INSERT_ID() as idimp;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertPostProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertPostProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertPostProcedure`(IN `_title` VARCHAR(255), IN `_body` TEXT, IN `_slug` VARCHAR(255), IN `_id_post_type` INT(11), IN `_idcategory` INT(11), IN `_id_status_type` INT(11), IN `_processing` DECIMAL(6,2), IN `_iduser_imp` INT(11))
BEGIN
                INSERT INTO posts(title, body, slug, id_post_type, idcategory) VALUES ( _title, _body, _slug, _id_post_type, _idcategory);
                    SET @_idpost = LAST_INSERT_ID();
                    INSERT INTO impposts(idpost, id_status_type, processing, iduser_imp) VALUES ( @_idpost, _id_status_type, _processing, _iduser_imp);
                    select @_idpost as outidpost;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertProductProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertProductProcedure`(IN `_namepro` VARCHAR(255) CHARSET utf8mb4, IN `_description` TEXT CHARSET utf8mb4, IN `_short_desc` TEXT CHARSET utf8mb4, IN `_slug` VARCHAR(255) CHARSET utf8mb4, IN `_id_post_type` INT(11), IN `_idcustomer` INT(11), IN `_idemployee` INT(11), IN `_amount` FLOAT(10), IN `_price` FLOAT(10), IN `_note` TEXT CHARSET utf8mb4, IN `_idstore` INT(11), IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_size` VARCHAR(10) CHARSET utf8mb4, IN `_ice_water` FLOAT(10), IN `_sugar` FLOAT(10), IN `_topping` VARCHAR(255) CHARSET utf8mb4, IN `_status_type` INT(11), IN `_list_idcat` VARCHAR(255) CHARSET utf8mb4, IN `_list_file` TEXT CHARSET utf8mb4, IN `_thumbnail` TEXT CHARSET utf8mb4)
BEGIN
                DECLARE _idproduct INT;
								DECLARE _idfile INT;
								DECLARE list_file VARCHAR(255);
								DECLARE list_idcat VARCHAR(255);
								DECLARE str_query VARCHAR(255);
								set _idproduct = 0;
								INSERT INTO products(namepro, description, short_desc, slug, id_post_type) VALUES ( _namepro, _description, _short_desc , _slug, _id_post_type );
                SET _idproduct = LAST_INSERT_ID();								
                INSERT INTO imp_products(idproduct, idcustomer, idemployee, amount, price, note, idstore, axis_x, axis_y, axis_z, size, ice_water, sugar, topping, status_type) VALUES ( _idproduct, _idcustomer, _idemployee, _amount, _price, _note, _idstore, _axis_x, _axis_y, _axis_z, _size, _ice_water, _sugar, _topping, _status_type);							
							  call CategoryHasProduct(_list_idcat, _idproduct);
								#call ProducthasFile(_thumbnail, ";","thumbnail", _idproduct);
								call ProducthasFile(_list_file, ";","gallery", _idproduct);				
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LatestPriceProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LatestPriceProcedure`;
delimiter ;;
CREATE PROCEDURE `LatestPriceProcedure`(IN `_idproduct` bigint(11), IN `_idparentcross` INT(11) ,IN `_idstore` INT(11))
BEGIN             
               SELECT info.price from (SELECT inf_price.* from (select * from (select idimp, idproduct, idcrosstype, idparentcross, amount,price_import, price, quality_sale from imp_products WHERE idproduct = _idproduct and idcrosstype = 0 and idstore = _idstore and id_status_type = 4 and idparentcross = _idparentcross UNION select idimp, idproduct, idcrosstype, idparentcross, amount, price_import, price, quality_sale from imp_products WHERE idparentcross = _idproduct and idcrosstype = 4 and idstore = _idstore and id_status_type = 4) as info UNION select idimp, idproduct, idcrosstype, idparentcross, amount, price_import, price, quality_sale from imp_products WHERE idstore = _idstore and id_status_type = 4 and idcrosstype <> 4 and idparentcross = _idparentcross and idproduct = _idproduct) as inf_price ORDER BY inf_price.idimp DESC limit 1) as info;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LatestProductByIdcateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LatestProductByIdcateProcedure`;
delimiter ;;
CREATE PROCEDURE `LatestProductByIdcateProcedure`(IN `_idcategory` INT(11), IN `_idstore` INT(11),  IN `_limit` INT(11))
BEGIN             
               SELECT inf1.*, imp1.*, imp2.price as old_price, phf.max_idproducthasfile, phf1.idfile, f.urlfile, p.namepro, p.slug, p.short_desc, p.description from (SELECT pc.*, info_pr.max_idimp_price from (SELECT idproduct FROM catehasproduct WHERE idcategory = _idcategory) as pc LEFT JOIN (SELECT MAX(idimp) as max_idimp_price, idproduct from (SELECT * FROM `imp_products` WHERE idstore = _idstore AND id_status_type = 4 and idcrosstype in (0,4)) as inf_price GROUP BY inf_price.idproduct) as info_pr ON pc.idproduct = info_pr.idproduct WHERE info_pr.idproduct is not NULL) as inf1 LEFT JOIN imp_products as imp1 on inf1.max_idimp_price = imp1.idimp LEFT JOIN imp_products as imp2 ON imp1.prev_id = imp2.idimp LEFT JOIN (SELECT MAX(idproducthasfile) as max_idproducthasfile,idproduct FROM producthasfile WHERE hastype = 1 and status_file = 1 GROUP BY idproduct) as phf on inf1.idproduct = phf.idproduct LEFT JOIN producthasfile as phf1 on phf.max_idproducthasfile = phf1.idproducthasfile LEFT JOIN files as f on phf1.idfile = f.idfile LEFT JOIN products as p on inf1.idproduct = p.idproduct ORDER BY imp1.idimp DESC limit _limit;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LatestPromotionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LatestPromotionProcedure`;
delimiter ;;
CREATE PROCEDURE `LatestPromotionProcedure`(IN `_idstore` INT(11), IN `_limit` INT(11))
BEGIN             
                SELECT info.*, info_pr.max_idimp_price,p.namepro, p.slug, p.short_desc, p.description,imp1.*, imp2.price as old_price, phf.idfile, f.urlfile FROM (SELECT inf1.idproduct,inf2.max_idproducthasfile from (SELECT idproduct from imp_products WHERE idstore = _idstore and id_status_type = 4 and idcrosstype = 4 GROUP BY idproduct) as inf1 LEFT JOIN (SELECT MAX(idproducthasfile) as max_idproducthasfile,idproduct FROM producthasfile WHERE hastype = 1 and status_file = 1 GROUP BY idproduct) as inf2 on inf1.idproduct = inf2.idproduct WHERE inf2.idproduct is not NULL) as info LEFT JOIN (SELECT MAX(idimp) as max_idimp_price,idproduct from (SELECT * FROM `imp_products` WHERE idstore = 31 AND id_status_type = 4 and idcrosstype in (0,4)) as inf_price GROUP BY inf_price.idproduct) as info_pr ON info.idproduct = info_pr.idproduct LEFT JOIN products as p on info.idproduct = p.idproduct LEFT JOIN imp_products as imp1 on info_pr.max_idimp_price = imp1.idimp LEFT JOIN  imp_products as imp2 on imp1.prev_id = imp2.idimp LEFT JOIN producthasfile as phf on info.max_idproducthasfile = phf.idproducthasfile LEFT JOIN files as f on phf.idfile = f.idfile ORDER BY info_pr.max_idimp_price DESC limit _limit ;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListAllCatByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListAllCatByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListAllCatByTypeProcedure`(IN `_namecattype` VARCHAR(255))
BEGIN
        DECLARE _idcattype INT;
        SET _idcattype = (SELECT idcattype FROM category_types WHERE catnametype = _namecattype);
        IF _idcattype > 0 THEN
        BEGIN
           SELECT idcattype, c.idcategory, c.shortname, c.namecat, _namecattype as catnametype, c.idparent, (select namecat from categories WHERE idcategory = c.idparent) as parent, pathroute FROM categories as c WHERE idcattype = _idcattype;
        END; 
        ELSE
        BEGIN
           SELECT c.* FROM categories as c;    
        END;
        END IF;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListAllCateByIdcatetype
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListAllCateByIdcatetype`;
delimiter ;;
CREATE PROCEDURE `ListAllCateByIdcatetype`(IN `_idcatetype` INT(11))
BEGIN
               IF _idcatetype > 0 THEN
                    BEGIN
                       SELECT c.idcategory, c.shortname, c.namecat, c.idparent, (select namecat from categories WHERE idcategory = c.idparent) as parent FROM categories as c WHERE idcattype = _idcatetype;
                    END; 
                ELSE
                    BEGIN
                       SELECT c.* FROM categories as c;    
                    END;
                END IF;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListAllCategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListAllCategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `ListAllCategoryProcedure`()
BEGIN
            SELECT idcategory,namecat,idparent FROM categories;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListAllProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListAllProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ListAllProductProcedure`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idcategory` INT(11), IN `_id_post_type` INT(11), IN `_id_status_type` INT(11), IN `_idstore` INT(11))
BEGIN
if _idcategory = 0 THEN
		BEGIN					 
			SELECT info7.*,imp2.*, phf2.idfile, f.urlfile, u.`name` as author FROM (SELECT info6.*, MAX(info6.idproducthasfile) as max_idproducthasfile FROM (SELECT info5.*,phf1.idproducthasfile FROM (SELECT info4.*,MAX(info4.idimp) as max_idimp FROM (SELECT info3.*, imp1.idimp,imp1.idcrosstype from ( SELECT info2.*,GROUP_CONCAT(info2.namecat SEPARATOR ', ') as listcat FROM (SELECT info1.*,p.namepro, p.slug, p.short_desc, p.description FROM (SELECT cate.idcategory, cate.namecat, chp.idcateproduct, chp.idproduct FROM (SELECT * from categories WHERE idcattype = 4) as cate LEFT JOIN catehasproduct as chp on cate.idcategory = chp.idcategory WHERE chp.idcateproduct is not NULL and chp.created_at BETWEEN _start_date AND _end_date) as info1 LEFT JOIN products as p on info1.idproduct = p.idproduct WHERE p.idstatus_type = _id_status_type AND p.idproduct is not NULL and id_post_type = _id_post_type and created_at BETWEEN _start_date AND _end_date) as info2 GROUP BY info2.idproduct ) as info3 LEFT JOIN imp_products as imp1 on info3.idproduct = imp1.idproduct WHERE imp1.idstore=_idstore AND imp1.id_status_type = 4 AND imp1.idcrosstype in (0,4) and imp1.idimp is not NULL) as info4 GROUP BY info4.idproduct) as info5 LEFT JOIN producthasfile as phf1 on info5.idproduct = phf1.idproduct WHERE phf1.hastype = 1 and phf1.status_file = 1 and phf1.idproducthasfile is not NULL) as info6 GROUP BY info6.idproduct) as info7 LEFT JOIN imp_products as imp2 on info7.max_idimp = imp2.idimp LEFT JOIN producthasfile as phf2 on info7.max_idproducthasfile = phf2.idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN users as u on imp2.iduser = u.id ORDER BY info7.max_idimp DESC limit 100;
		 END;
 ELSEif _idcategory > 0 THEN
	begin
		SELECT info7.*,imp2.*, phf2.idfile, f.urlfile FROM (SELECT info6.*, MAX(info6.idproducthasfile) as max_idproducthasfile FROM (SELECT info5.*,phf1.idproducthasfile FROM (SELECT info4.*,MAX(info4.idimp) as max_idimp FROM (SELECT info3.*, imp1.idimp,imp1.idcrosstype from ( SELECT info2.*,GROUP_CONCAT(info2.namecat SEPARATOR ', ') as listcat FROM (SELECT info1.*,p.namepro, p.slug, p.short_desc, p.description FROM ( SELECT chp.idproduct, cate.namecat from catehasproduct as chp LEFT JOIN categories as cate on chp.idcategory = cate.idcategory WHERE chp.idcategory = _idcategory and cate.idcategory is not NULL) as info1 LEFT JOIN products as p on info1.idproduct = p.idproduct WHERE p.idstatus_type = _id_status_type AND p.idproduct is not NULL and p.id_post_type = _id_post_type and p.created_at BETWEEN _start_date AND _end_date) as info2 GROUP BY info2.idproduct ) as info3 LEFT JOIN imp_products as imp1 on info3.idproduct = imp1.idproduct WHERE imp1.idstore=_idstore AND imp1.id_status_type = 4 AND imp1.idcrosstype in (0,4) and imp1.idimp is not NULL) as info4 GROUP BY info4.idproduct) as info5 LEFT JOIN producthasfile as phf1 on info5.idproduct = phf1.idproduct WHERE phf1.hastype = 1 and phf1.status_file = 1 and phf1.idproducthasfile is not NULL) as info6 GROUP BY info6.idproduct) as info7 LEFT JOIN imp_products as imp2 on info7.max_idimp = imp2.idimp LEFT JOIN producthasfile as phf2 on info7.max_idproducthasfile = phf2.idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN users as u on imp2.iduser = u.id ORDER BY info7.max_idimp DESC LIMIT 100;
	end;
END if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCateByIdmenuProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCateByIdmenuProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCateByIdmenuProcedure`(IN `_idmenu` INT(11))
BEGIN
               SELECT * FROM menu_has_cate WHERE idmenu=_idmenu;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCategoryByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCategoryByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCategoryByTypeProcedure`()
BEGIN
	SELECT idcategory, namecat from categories;
    END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCategoryProcedure`()
BEGIN
                SELECT c1.idcategory, c1.namecat, c1.idcattype, (select catnametype from category_types where idcattype=c1.idcattype) as catnametype, c2.namecat as parent from categories as c1 left Join categories as c2 on c1.idparent = c2.idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListcatparentProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListcatparentProcedure`;
delimiter ;;
CREATE PROCEDURE `ListcatparentProcedure`()
BEGIN
                SELECT c1.idcategory, c1.namecat from categories as c1 where c1.idparent = 0;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCatPermDashboardByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCatPermDashboardByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCatPermDashboardByTypeProcedure`(IN `_iduser` int,IN `_command` varchar(255),IN `_catnametype` varchar(255))
sp:BEGIN
	set @_idrole = (SELECT idrole FROM `grants` WHERE to_iduser= _iduser limit 1);
	if @_idrole is NULL THEN
		BEGIN
			select 0 as allow;
			LEAVE sp;
		END;
	end if;
		if _command is NULL or _command='' THEN 
			SET _command='select';
		END IF; 
		set @_idcommand = (SELECT idpercommand from perm_commands WHERE command = _command);
		if @_idcommand IS NULL THEN 
			BEGIN
			select 0 as allow;
			LEAVE sp;
			END;
		END IF;
		set @_idcattype = (SELECT idcattype from category_types WHERE catnametype = _catnametype);
		if @_idcattype is NULL then
			BEGIN
			select 0 as allow;
			LEAVE sp;
			END;
		END if;
		select cat2.*,CASE WHEN cat3.idparent > 0 THEN 1 ELSE 0 END haschild from (select cat1.*, c.idcattype, c.namecat, c.pathroute, c.idparent from (SELECT imp.idperm, imp.idrole, imp.iduserimp,perm.`name`, perm.description, perm.idpermcommand, perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= _iduser) as tbrole LEFT JOIN imp_perms as imp on imp.idrole = tbrole.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm WHERE perm.idpermcommand = @_idcommand) as cat1 LEFT JOIN categories as c on c.idcategory = cat1.idcategory) as cat2 LEFT JOIN (select DISTINCT c.idparent from (SELECT perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= 2) as tbrole LEFT JOIN imp_perms as imp on imp.idrole = tbrole.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm WHERE perm.idpermcommand = 1) as cat1 LEFT JOIN categories as c on c.idcategory = cat1.idcategory) as cat3 on cat2.idcategory = cat3.idparent WHERE cat2.idcattype = @_idcattype;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCatPermissionByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCatPermissionByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCatPermissionByTypeProcedure`(IN `_namecatetype` varchar(255))
BEGIN
	DECLARE _idcattype INT;
        SET _idcattype = (SELECT idcattype FROM category_types WHERE catnametype = _namecatetype);
        IF _idcattype > 0 THEN
        BEGIN
           SELECT cat4.*, CASE WHEN cat3.idparent > 0 THEN 1 ELSE 0 END haschild from (SELECT * FROM categories  WHERE idcattype = _idcattype) as cat4 LEFT JOIN (SELECT DISTINCT idparent from categories WHERE idcattype =_idcattype) as cat3 on cat4.idcategory = cat3.idparent;
        END; 
        ELSE
        BEGIN
           SELECT c.* FROM categories as c;    
        END;
        END IF;
				/*SELECT cat4.*, CASE WHEN cat3.idcategory > 0 THEN 1 ELSE 0 END haschild from (SELECT * FROM categories  WHERE idcattype = _idcattype) as cat4 LEFT JOIN (SELECT DISTINCT cat1.idcategory from (SELECT idcategory, idparent FROM categories  WHERE idcattype = _idcattype) as cat1 JOIN (SELECT idcategory, idparent FROM categories WHERE idcattype = _idcattype and idparent > 0 ) as cat2 on cat2.idparent = cat1.idcategory) as cat3 on cat4.idcategory = cat3.idcategory;*/
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCustomerRegister
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCustomerRegister`;
delimiter ;;
CREATE PROCEDURE `ListCustomerRegister`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idcategory` INT(11), IN `_id_post_type` INT(11), IN `_id_status_type` INT(11), IN `_sel_receive` INT(11))
BEGIN
        DECLARE _now VARCHAR(255);
        DECLARE _str_start VARCHAR(255);
        DECLARE _now_time VARCHAR(255);
        SET _now_time = NOW();
        IF ( _start_date IS NULL OR _start_date ="") THEN
        BEGIN
            SET _now = DATE(_now_time);
            SET _str_start = CONCAT(_now," 00:00:00");
            SET _start_date = STR_TO_DATE(_str_start,"%Y-%m-%d %H:%i:%s");          
        END;
        END IF;
        IF ( _end_date IS NULL OR _end_date = "") THEN SET _end_date = _now_time;       
        END IF;
        if ( _sel_receive = 0 AND _id_post_type = 0) then
		begin
		    SELECT user_reg.idimppost,user_reg.idpost,(select ROW_COUNT() from expposts where parent_idpost_exp = user_reg.idpost) as count_interactive,user_reg.created_at,cus.mobile,cus.firstname,cus.email,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type = _id_status_type) AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = '1' OR pt.id_post_type = '2') AS po ON imp.idpost=po.idpost) AS user_reg JOIN
		    sv_customers AS cus ON user_reg.iduser_imp = cus.idcustomer;
		end;
	elseif ( _sel_receive = 1 AND _id_post_type = 0) then
		BEGIN
		    select user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg, user_join.url  from (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg, imp.url FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = '1' OR pt.id_post_type = '2') AS po ON imp.idpost = po.idpost) AS user_reg LEFT JOIN expposts AS expp ON user_reg.idpost = expp.parent_idpost_exp WHERE expp.parent_idpost_exp IS NULL) as user_join join sv_customers as cus on cus.idcustomer = user_join.iduser_imp;
		end;
	ELSEIF ( _sel_receive = 2 AND _id_post_type = 0 ) then
		BEGIN
		    SELECT user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg,user_join.url  FROM (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg, imp.url FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = '1' OR pt.id_post_type = '2') AS po ON imp.idpost = po.idpost) AS user_reg right JOIN ( select * from expposts GROUP BY parent_idpost_exp ) AS expp ON user_reg.idpost = expp.parent_idpost_exp) AS user_join JOIN sv_customers AS cus ON cus.idcustomer = user_join.iduser_imp;
		END;
	elseIF ( _sel_receive = 0 AND _id_post_type > 0) THEN
		BEGIN
		    SELECT user_reg.idimppost,user_reg.idpost,(select count(*) from expposts where parent_idpost_exp = user_reg.idpost) as count_interactive,user_reg.created_at,cus.mobile,cus.firstname,cus.email,user_reg.body,user_reg.address_reg,user_reg.url FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg,imp.url FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type = _id_status_type) AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = _id_post_type) AS po ON imp.idpost=po.idpost) AS user_reg JOIN
		    sv_customers AS cus ON user_reg.iduser_imp = cus.idcustomer;
		END;
	ELSEIF ( _sel_receive = 1 AND _id_post_type > 0) THEN
		BEGIN
		    SELECT user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg,user_join.url  FROM (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg,user_reg.url FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg,imp.url FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = _id_post_type) AS po ON imp.idpost = po.idpost) AS user_reg LEFT JOIN expposts AS expp ON user_reg.idpost = expp.parent_idpost_exp WHERE expp.parent_idpost_exp IS NULL) AS user_join JOIN sv_customers AS cus ON cus.idcustomer = user_join.iduser_imp;
		END;
	ELSEIF ( _sel_receive = 2 AND _id_post_type > 0 ) THEN
		BEGIN
		    SELECT user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg,user_join.url  FROM (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg, user_reg.url FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg, imp.url FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = _id_post_type) AS po ON imp.idpost = po.idpost) AS user_reg RIGHT JOIN expposts AS expp ON user_reg.idpost = expp.parent_idpost_exp) AS user_join JOIN sv_customers AS cus ON cus.idcustomer = user_join.iduser_imp;
		END;
        end if;  
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListDepartmentProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListDepartmentProcedure`;
delimiter ;;
CREATE PROCEDURE `ListDepartmentProcedure`()
BEGIN
                SELECT c1.iddepart, c1.namedepart, c2.namedepart as parent from departments as c1 left Join departments as c2 on c1.idparent = c2.iddepart;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListDepartParentProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListDepartParentProcedure`;
delimiter ;;
CREATE PROCEDURE `ListDepartParentProcedure`()
BEGIN
                SELECT c1.iddepart, c1.namedepart from departments as c1 where c1.idparent is null;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListEnablePermission
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListEnablePermission`;
delimiter ;;
CREATE PROCEDURE `ListEnablePermission`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					SELECT 1 as allow, p.idperm, p.`name`, p.description, pc.command, c.namecat FROM `permissions` as p LEFT JOIN perm_commands as pc on p.idpermcommand = pc.idpercommand LEFT JOIN categories as c on p.idcategory = c.idcategory;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'edit' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'delete' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListgrantbyidProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListgrantbyidProcedure`;
delimiter ;;
CREATE PROCEDURE `ListgrantbyidProcedure`(IN `id_grant` INT(11))
BEGIN
                SELECT r.idrole, r.name as namerole, g.to_iduser,(select name from users where id = g.to_iduser) as touser, g.by_iduser,(select name from users where id = g.by_iduser) as byuser FROM (select * from grants where idgrant = id_grant) as g LEFT join roles as r on g.idrole = r.idrole;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListgrantProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListgrantProcedure`;
delimiter ;;
CREATE PROCEDURE `ListgrantProcedure`()
BEGIN
                SELECT g.idgrant, r.idrole, r.name as namerole, (select name from users where id = g.to_iduser) as touser, (select name from users where id=g.by_iduser) as byuser from grants as g LEFT join roles as r on g.idrole = r.idrole;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListImppermProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListImppermProcedure`;
delimiter ;;
CREATE PROCEDURE `ListImppermProcedure`()
BEGIN
                SELECT imp.idimp_perm, p.name as nameperm, r.name as namerole, u.name as nameuser FROM imp_perms as imp left join permissions as p ON imp.idperm = p.idperm LEFT join roles as r on imp.idrole = r.idrole LEFT join users as u ON imp.iduserimp = u.id;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListItemCateByIdMenuProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListItemCateByIdMenuProcedure`;
delimiter ;;
CREATE PROCEDURE `ListItemCateByIdMenuProcedure`(IN `_idmenu` INT(11))
BEGIN
               SELECT mnhas.idmenuhascate, mnhas.idmenu,mnhas.idcategory,(select namecat from categories where idcategory = mnhas.idcategory) as namemenu, mnhas.idparent, mnhas.reorder, mnhas.depth, mnhas.trash FROM menu_has_cate as mnhas WHERE mnhas.idmenu=_idmenu and mnhas.trash < 1 ORDER BY reorder ASC;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListMenuProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListMenuProcedure`;
delimiter ;;
CREATE PROCEDURE `ListMenuProcedure`()
BEGIN
               select * from menus;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListOrderProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListOrderProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ListOrderProductProcedure`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idstore` INT(11), IN `_id_status_type` INT(11))
BEGIN
	select info.*,w.nameward, d.namedist, ct.namecitytown, pv.nameprovince, c.namecountry from (SELECT info1.*,prf.lastname, prf.middlename, prf.firstname,prf.mobile, prf.address, prf.idward, prf.iddistrict, prf.idcitytown, prf.idprovince, prf.idcountry FROM (SELECT idnumberorder, idcustomer, idrecipent, iduser, SUM(price*amount) as itemtotal, created_at, id_status_type FROM exp_products WHERE idstore = _idstore AND created_at BETWEEN _start_date and _end_date and iduser > 0 GROUP BY idnumberorder) as info1 LEFT JOIN `profile` as prf on prf.iduser = info1.iduser UNION SELECT info2.*, svc.lastname, svc.middlename, svc.firstname, svc.mobile, svc.address, svc.idward, svc.iddistrict, svc.idcitytown, svc.idprovince, svc.idcountry FROM (SELECT idnumberorder, idcustomer, idrecipent, iduser, SUM(price*amount) as itemtotal, created_at, id_status_type FROM exp_products WHERE idstore = _idstore AND created_at BETWEEN _start_date and _end_date and idcustomer > 0 GROUP BY idnumberorder) as info2 LEFT JOIN sv_customers as svc on svc.idcustomer = info2.idcustomer) as info LEFT JOIN ward as w on w.idward = info.idward LEFT JOIN district as d on d.iddistrict = info.iddistrict LEFT JOIN city_town as ct on ct.idcitytown = info.idcitytown LEFT JOIN province as pv on pv.idprovince = info.idprovince LEFT JOIN country as c on c.idcountry = info.idcountry;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListParentCatbyIdcattypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListParentCatbyIdcattypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListParentCatbyIdcattypeProcedure`(IN `_idcattype` int)
BEGIN
		IF _idcattype > 0 THEN
		BEGIN
			 SELECT c.idcategory, c.namecat, c.idparent FROM categories as c WHERE c.idcattype = _idcattype;
		END; 
		ELSE
		BEGIN
			 SELECT c.* FROM categories as c;    
		END;
		END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListParentCatByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListParentCatByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListParentCatByTypeProcedure`(IN `_namecattype` VARCHAR(255))
BEGIN
	DECLARE _idcattype INT;
        SET _idcattype = (SELECT idcattype FROM category_types WHERE catnametype = _namecattype);
        IF _idcattype > 0 THEN
        BEGIN
           SELECT c.idcategory, c.namecat FROM categories as c WHERE c.idcattype = _idcattype and c.idparent = 0;
        END; 
        ELSE
        BEGIN
           SELECT c.* FROM categories as c;    
        END;
        END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListPermissionCommands
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListPermissionCommands`;
delimiter ;;
CREATE PROCEDURE `ListPermissionCommands`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					SELECT *,1 as allow  from perm_commands;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
				ELSEIF _command = 'edit' then
				begin
					select 1 as allow;
				end;
				ELSEIF _command = 'delete' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListPermissionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListPermissionProcedure`;
delimiter ;;
CREATE PROCEDURE `ListPermissionProcedure`()
BEGIN             
SELECT p.idperm, p.`name`, p.description, pc.command, c.namecat FROM `permissions` as p LEFT JOIN perm_commands as pc on p.idpermcommand = pc.idpercommand LEFT JOIN categories as c on p.idcategory = c.idcategory;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListpostProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListpostProcedure`;
delimiter ;;
CREATE PROCEDURE `ListpostProcedure`()
BEGIN
                SELECT * from posts;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListPostTypeByIdcatProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListPostTypeByIdcatProcedure`;
delimiter ;;
CREATE PROCEDURE `ListPostTypeByIdcatProcedure`(IN `_idcat` INT)
BEGIN
        IF _idcat > 0 THEN
        BEGIN
           SELECT * FROM post_types WHERE idparent = _idcat;
        END; 
        ELSE
        BEGIN
           SELECT * FROM post_types;    
        END;
        END IF;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListProductByIdcateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListProductByIdcateProcedure`;
delimiter ;;
CREATE PROCEDURE `ListProductByIdcateProcedure`(IN `_idcategory` INT(11), IN `_page` INT(11), IN `_idstore` INT(11), IN `_limit` INT(11), IN _iduser INT(11))
SP:BEGIN				
            DECLARE _start int(11);
						DECLARE _max_order int(11);
						set @idorder:= 0;
						set _start := 0;
						set @_commit := 0;
						call UserPermission(_iduser, _idcategory, "select", @_commit);
						if @_commit < 1 THEN 
							BEGIN
							SELECT @_commit as _commit, 0 as count_page;
							LEAVE sp;
							END;
						END IF;
						DROP TABLE IF EXISTS tmp_product1;
						DROP TABLE IF EXISTS tmp_product2;
						DROP TABLE IF EXISTS tmp_product3;
            create TEMPORARY TABLE tmp_product1(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , max_idimp_price INTEGER not NULL, max_idproducthasfile INTEGER not NULL) as (SELECT info4.max_idimp_price, MAX(info4.idproducthasfile) as max_idproducthasfile FROM (SELECT info3.idproduct, info3.max_idimp_price, phf1.idproducthasfile FROM (SELECT info2.idproduct, MAX(info2.idimp) as max_idimp_price FROM (SELECT info1.idproduct, imp1.idimp FROM (SELECT cat.idproduct FROM (SELECT idproduct FROM catehasproduct WHERE idcategory = _idcategory and checked > 0) as cat LEFT JOIN products as p ON p.idproduct = cat.idproduct WHERE p.idstatus_type = 5 and p.idproduct is not NULL) as info1 LEFT JOIN imp_products as imp1 on imp1.idproduct = info1.idproduct WHERE imp1.idimp is not NULL AND imp1.idcrosstype in (0,4)) as info2 GROUP BY info2.idproduct) as info3 LEFT JOIN producthasfile as phf1 on phf1.idproduct = info3.idproduct WHERE phf1.hastype = 1 and phf1.status_file = 1) as info4 GROUP BY info4.idproduct ORDER BY info4.max_idimp_price DESC);
						set _max_order = (SELECT COUNT(*) FROM tmp_product1 as tmp1);
						create TEMPORARY TABLE tmp_product2(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , max_idimp_price INTEGER not NULL, max_idproducthasfile INTEGER not NULL) as (SELECT * FROM tmp_product1);
						DROP TABLE tmp_product1;
						create TEMPORARY TABLE tmp_product3(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idorder INTEGER not NULL);
						set @count_page = (_max_order DIV 12);
						set @end_count_item = (_max_order % 12);		
						if @end_count_item > 0 THEN
							BEGIN
								set @count_page = @count_page + 1;
							END;
						END if;
						set _start = 1 + ((_page-1)*12);
						set @str :='';
						set @comma =',';
						if _page = @count_page THEN
							BEGIN
								if _max_order % 12 = 0 THEN
									BEGIN
										set @maxpage = ((_page-1)*12) + (_max_order) + 1;
									END;
								ELSE
									BEGIN
										set @maxpage = ((_page-1)*12) + (_max_order % 12) + 1;
									END;
								END if;
								
							END;
						ELSEIF _page < @count_page THEN
							BEGIN
								set @maxpage = (_page*12)+1;
							END;
						END if;
						WHILE _start < @maxpage DO
							if _start =  (@maxpage - 1) THEN
								set @comma ='';
							end if;
							set @str = CONCAT(@str,'(',_start,')',@comma);
							set _start = _start + 1;
						END WHILE;
						if  @str <> '' OR @str is NOT NULL THEN
							BEGIN
							set @str = CONCAT('INSERT into tmp_product3(idorder) VALUES ',@str);
							SET @queryString = @str;
									PREPARE stmt FROM @queryString;
									EXECUTE stmt;
									DEALLOCATE PREPARE stmt;
								SELECT @_commit as _commit, @count_page as count_page, info1.*,imp1.*,imp2.price as old_price, phf1.idfile, f.urlfile, p.namepro, p.slug, p.short_desc, p.description FROM (SELECT tmp3.*, tmp2.max_idimp_price, tmp2.max_idproducthasfile FROM tmp_product3 as tmp3 LEFT JOIN tmp_product2 as tmp2 on tmp3.idorder = tmp2.id) as info1 LEFT JOIN imp_products as imp1 on info1.max_idimp_price = imp1.idimp LEFT JOIN imp_products as imp2 ON imp1.prev_id = imp2.idimp LEFT JOIN producthasfile as phf1 on phf1.idproducthasfile = imp1.idproduct LEFT JOIN files as f on phf1.idfile = f.idfile LEFT JOIN products as p on imp1.idproduct = p.idproduct;
							END;
						END if;
						DROP TABLE tmp_product2;
						DROP TABLE tmp_product3;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListProductByLstIdCateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListProductByLstIdCateProcedure`;
delimiter ;;
CREATE PROCEDURE `ListProductByLstIdCateProcedure`(IN _str_query TEXT)
BEGIN             
                DROP TABLE IF EXISTS tmp_cate;
                create TEMPORARY TABLE tmp_cate(idtmpcate INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idcate INTEGER not NULL);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                select info.idproduct,info.namepro,info.price,f.urlfile from (SELECT info_phf.*,phf.idfile from (select info.* from (select inp.*,imp.idimp,imp.price from (select info_p.idproduct,p.namepro from (SELECT DISTINCT idproduct from catehasproduct as chp join tmp_cate as tmp_c on tmp_c.idcate = chp.idcategory) as info_p join products as p on info_p.idproduct = p.idproduct) as inp LEFT JOIN (select * from imp_products WHERE idcrosstype = 0 and idstore = 31) as imp on inp.idproduct = imp.idproduct) as info WHERE idimp > 0) as info_phf LEFT JOIN (SELECT * from producthasfile WHERE hastype = 1 ORDER BY idproducthasfile DESC) as phf on phf.idproduct = info_phf.idproduct) as info LEFT JOIN files as f on info.idfile = f.idfile LIMIT 50;
                DROP TABLE tmp_cate;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListProductComboProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListProductComboProcedure`;
delimiter ;;
CREATE PROCEDURE `ListProductComboProcedure`(in _limit INT(11))
BEGIN             
							select info4.idparentcross as idproduct, imp1.*, phf2.idfile, f.urlfile, p.namepro, p.slug, p.short_desc, p.description from (SELECT info3.*, MAX(phf1.idproducthasfile) as max_idproducthasfile FROM (SELECT info2.*, MAX(info2.idimp) as max_idimp_price FROM (SELECT info1.*, imp1.idimp FROM (SELECT idparentcross FROM imp_products WHERE idstore = 31 and id_status_type = 4 AND idcrosstype = 1 GROUP BY idparentcross) as info1 LEFT JOIN imp_products as imp1 on info1.idparentcross = imp1.idproduct WHERE idcrosstype in (0,4)) as info2 GROUP BY info2.idparentcross) as info3 LEFT JOIN producthasfile as phf1 on info3.idparentcross = phf1.idproduct GROUP BY info3.idparentcross) as info4 LEFT JOIN imp_products as imp1 ON info4.max_idimp_price = imp1.idimp LEFT JOIN producthasfile as phf2 on info4.max_idproducthasfile = phf2.idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN products as p on info4.idparentcross = p.idproduct ORDER BY info4.idimp DESC limit _limit;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ListProductProcedure`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idcategory` INT(11), IN `_id_post_type` INT(11), IN `_id_status_type` INT(11))
BEGIN
        DECLARE _now VARCHAR(255);
        DECLARE _str_start VARCHAR(255);
        DECLARE _now_time VARCHAR(255);
        SET _now_time = NOW();
        IF ( _start_date IS NULL OR _start_date ="") THEN
        BEGIN
            SET _now = DATE(_now_time);
            SET _str_start = CONCAT(_now," 00:00:00");
            SET _start_date = STR_TO_DATE(_str_start,"%Y-%m-%d %H:%i:%s");          
        END;
        END IF;
        IF ( _end_date IS NULL OR _end_date = "") THEN SET _end_date = _now_time;       
        END IF;  
            select info.created_at,info.idproduct,info.namepro,info.price,info.amount,(select urlfile from files where idfile = info.idfile) as urlfile,info.author,GROUP_CONCAT(info.namecat SEPARATOR ', ') as listcat from (select dtail.created_at,dtail.idproduct,dtail.namepro,dtail.price,dtail.amount,dtail.idfile,dtail.author, (select namecat from categories WHERE idcategory = prohas.idcategory AND prohas.idcategory is not null) as namecat from ( select detail.created_at,detail.idproduct,detail.namepro,detail.price,detail.amount,detail.idfile,(select `name` from users WHERE id = detail.iduser) as author from (select p.*,imp.price,imp.amount,imp.iduser,(select idfile from producthasfile WHERE idproduct = p.idproduct ORDER BY idproducthasfile DESC LIMIT 1) as idfile FROM (select pr.* from products as pr left join cross_product as c on pr.idproduct = c.idproduct_cross where c.idcrossproduct is NULL) as p JOIN imp_products as imp on p.idproduct = imp.idproduct) as detail) as dtail JOIN (select cate.* from (select * from catehasproduct where idcategory > 0) as cate left join exclude_category as excat on cate.idcategory = excat.idcategory where excat.idcategory is null ) as prohas on prohas.idproduct = dtail.idproduct) as info GROUP BY info.idproduct DESC LIMIT 100;
       END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListRoleIdpermProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListRoleIdpermProcedure`;
delimiter ;;
CREATE PROCEDURE `ListRoleIdpermProcedure`(IN `id_perm` INT(11))
BEGIN
                select r.idrole, r.name, p.idimp_perm, p.idrole as id_role from roles as r LEFT join (select * from imp_perms where idperm=id_perm) as p on r.idrole=p.idrole;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListRolePermissionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListRolePermissionProcedure`;
delimiter ;;
CREATE PROCEDURE `ListRolePermissionProcedure`(IN `_iduser` int, IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255))
sp:BEGIN
DECLARE allow int(2) DEFAULT 0;
	set allow = 0;
	CALL UserPermDashByCateProcedure ( _iduser, _command, _catnametype, _curent_url, allow );
	if allow = 0 THEN 
		BEGIN
			SELECT 0 as allow;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
			if _command = 'select' then
				begin
					SELECT *,1 as allow  from roles WHERE trash < 1;
				end;
			ELSEIF _command = 'create' then
				begin
					select 1 as allow;
				end;
			ELSEIF _command = 'edit' then
				begin
					select 1 as allow;
				end;
				ELSEIF _command = 'delete' then
				begin
					select 1 as allow;
				end;
			end if;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListRolesProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListRolesProcedure`;
delimiter ;;
CREATE PROCEDURE `ListRolesProcedure`()
BEGIN             
                SELECT p.`name`,p.description,pc.command,c.namecat FROM `permissions` as p LEFT JOIN perm_commands as pc on p.idpermcommand = pc.idpercommand LEFT JOIN categories as c on p.idcategory = c.idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListSelEmpDepartProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListSelEmpDepartProcedure`;
delimiter ;;
CREATE PROCEDURE `ListSelEmpDepartProcedure`(IN `_iduser` INT(11))
BEGIN
                SELECT iddepart_employee, iddepart from depart_employees where iduser=_iduser;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListStatusTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListStatusTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListStatusTypeProcedure`(IN `_idparent` INT)
BEGIN
        IF _idparent > 0 THEN
        BEGIN
           SELECT * FROM status_types WHERE idparent = _idparent;
        END; 
        ELSE
        BEGIN
           SELECT * FROM status_types;    
        END;
        END IF;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListTypeSelectedProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListTypeSelectedProcedure`;
delimiter ;;
CREATE PROCEDURE `ListTypeSelectedProcedure`(IN `id_post` INT(11))
BEGIN
                SELECT p.id_post_type as idposttype,(select nametype from post_types WHERE idposttype = p.id_post_type) as nameposttype,p.idcategory,(SELECT name FROM categories WHERE idcategory = p.idcategory) as namecate FROM posts as p WHERE p.idpost=id_post;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListViewProductByIdCateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListViewProductByIdCateProcedure`;
delimiter ;;
CREATE PROCEDURE `ListViewProductByIdCateProcedure`(IN `_idcategory` INT(11))
BEGIN
            select allpro.* from (SELECT alp.*,imp.price,imp.price_sale_origin from (select pro.*,(select urlfile from files WHERE idfile = pro.idfile) as url from (select chp.idproduct,p.namepro,p.slug,p.short_desc,p.description,p.idsize,p.idcolor,(select idfile from producthasfile where hastype = 1 and idproduct = chp.idproduct ORDER BY idproducthasfile DESC LIMIT 1) as idfile from (SELECT * FROM catehasproduct WHERE idcategory=_idcategory) as chp JOIN products as p on chp.idproduct = p.idproduct) as pro) as alp JOIN (SELECT * from imp_products where idstore=31) as imp on alp.idproduct = imp.idproduct) as allpro order by allpro.idproduct DESC limit 10;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LoadOrderInitSessionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LoadOrderInitSessionProcedure`;
delimiter ;;
CREATE PROCEDURE `LoadOrderInitSessionProcedure`(IN _str_query varchar(255), IN _idstore int(11),IN _int_count int(11))
BEGIN
                DROP TABLE IF EXISTS tmp_product;
                DROP TABLE IF EXISTS temp_products;
                set @idorder:=(_int_count-1);
                create TEMPORARY TABLE tmp_product(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                create TEMPORARY TABLE temp_products(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null) as (select idproduct,input_quality from tmp_product);
                select (@idorder:= @idorder + 1) as idorder,info.* from (select 0 as parent, tmp1.id, tmp1.idproduct as parent_in, tmp1.input_quality, imp1.idproduct,imp1.idcrosstype,imp1.idparentcross,imp1.amount,imp1.price_import,imp1.price,imp1.quality_sale from (SELECT * from tmp_product) as tmp1 JOIN (select * from imp_products WHERE idcrosstype = 0 and idstore = @_idstore and id_status_type = 4 and idparentcross = 0) as imp1 on tmp1.idproduct = imp1.idproduct UNION all select @_int_count as parent, tmp2.id, tmp2.idproduct as parent_in, tmp2.input_quality,imp2.idproduct,imp2.idcrosstype,imp2.idparentcross,imp2.amount,imp2.price_import,imp2.price,imp2.quality_sale from (SELECT * from temp_products) as tmp2 JOIN (select * from imp_products WHERE idstore = @_idstore and id_status_type = 4) as imp2 on tmp2.idproduct = imp2.idparentcross) as info;
                DROP TABLE tmp_product;
                DROP TABLE temp_products;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LstOrderFrmSessionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LstOrderFrmSessionProcedure`;
delimiter ;;
CREATE PROCEDURE `LstOrderFrmSessionProcedure`(IN `_str_query` TEXT, IN `_idstore` INT(11))
BEGIN             
                DROP TABLE IF EXISTS tmp_product1;
                create TEMPORARY TABLE tmp_product1(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idorder INTEGER not NULL, idcrosstype INTEGER  NULL,parent  INTEGER not NULL, idparentcross INTEGER NULL,input_quality  INTEGER  NULL,idproduct  INTEGER NULL,inp_session  INTEGER  NULL,trash INTEGER  NULL);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
								SELECT info2.*,imp2.*, phf1.idfile, f.urlfile, p.namepro, p.slug, p.short_desc, p.description FROM (SELECT info1.*, MAX(phf.idproducthasfile) as max_idproducthasfile  FROM (SELECT tmp1.*, MAX(imp1.idimp) as max_idimp_price FROM tmp_product1 as tmp1 LEFT JOIN imp_products as imp1 on tmp1.idproduct = imp1.idproduct WHERE tmp1.idcrosstype = imp1.idcrosstype AND tmp1.idparentcross = imp1.idparentcross GROUP BY tmp1.idorder) as info1 LEFT JOIN producthasfile as phf on info1.idproduct = phf.idproduct GROUP BY info1.idorder) as info2 LEFT JOIN imp_products as imp2 on info2.max_idimp_price = imp2.idimp LEFT JOIN producthasfile as phf1 on info2.max_idproducthasfile = phf1.idproducthasfile LEFT JOIN files as f on phf1.idfile = f.idfile LEFT JOIN products as p on info2.idproduct = p.idproduct;
								/*select info.*, f.urlfile from (SELECT tmp1.*, p.namepro, p.slug, p.description, p.short_desc, latestidfile(p.idproduct,1) as idfile from (SELECT *, Fnc_latestprice(idproduct,idparentcross,_idstore) as price from tmp_product1) as tmp1 LEFT JOIN products as p on tmp1.idproduct = p.idproduct) as info LEFT JOIN files as f on info.idfile = f.idfile;*/
                DROP TABLE tmp_product1;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LstOrderFromSessionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LstOrderFromSessionProcedure`;
delimiter ;;
CREATE PROCEDURE `LstOrderFromSessionProcedure`(IN `_str_query` TEXT, IN `_idstore` INT(11))
BEGIN
                DROP TABLE IF EXISTS tmp_product;
                DROP TABLE IF EXISTS temp_products;
                set @idorder:=0;
                create TEMPORARY TABLE tmp_product(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idorder INTEGER not NULL, idcrosstype INTEGER  NULL,parent  INTEGER not NULL, idparentcross INTEGER NULL,input_quality  INTEGER  NULL,idproduct  INTEGER NULL,inp_session  INTEGER  NULL,trash INTEGER  NULL);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                create TEMPORARY TABLE temp_products(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idorder INTEGER not NULL, idcrosstype INTEGER not NULL,parent  INTEGER not NULL, idparentcross INTEGER NULL,input_quality  INTEGER not NULL,idproduct  INTEGER not NULL,inp_session  INTEGER not NULL,trash  INTEGER not NULL) as (SELECT * from tmp_product);
								SELECT inf.* from (select info.*,p.namepro, p.short_desc, p.slug, p.description,phf.idfile,f.urlfile from (select tmp1.*, imp1.idcustomer, imp1.iduser, imp1.price, imp1.quality_sale, imp1.fromdate, imp1.todate from tmp_product as tmp1 left JOIN (select * from imp_products WHERE idstore = _idstore and id_status_type = 4 AND idparentcross = 0) as imp1 on tmp1.idproduct = imp1.idproduct and tmp1.idparentcross = imp1.idparentcross WHERE imp1.idproduct is not NULL UNION ALL select tmp2.*, imp2.idcustomer, imp2.iduser, imp2.price, imp2.quality_sale, imp2.fromdate, imp2.todate from temp_products as tmp2 left JOIN (select * from imp_products WHERE idstore = _idstore and id_status_type = 4 AND idparentcross > 0) as imp2 on tmp2.idproduct = imp2.idproduct and tmp2.idparentcross = imp2.idparentcross WHERE imp2.idproduct is not NULL) as info LEFT JOIN products as p on info.idproduct = p.idproduct LEFT JOIN producthasfile as phf on p.idproduct = phf.idproduct LEFT JOIN files as f on phf.idfile = f.idfile) as inf ORDER BY inf.idorder ASC;
                DROP TABLE tmp_product;
                DROP TABLE temp_products;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LstOrdSessionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LstOrdSessionProcedure`;
delimiter ;;
CREATE PROCEDURE `LstOrdSessionProcedure`(IN _str_query varchar(255), IN _idstore int(11))
BEGIN
               DROP TABLE IF EXISTS tmp_product;
                DROP TABLE IF EXISTS temp_products;
                create TEMPORARY TABLE tmp_product(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                create TEMPORARY TABLE temp_products(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null) as (select idproduct,input_quality from tmp_product);
                select rs_info.* from (select inf.*,f.urlfile from (select al_info.*,phf.idfile FROM (select info_pro.namepro,info_pro.slug,info_pro.short_desc,info_pro.description,info_pro.parent,info_pro.id,info_pro.input_quality,imp.* from (select al_pros.*,0 as parent,0 as idcrosstype from (select p.idproduct,p.namepro,p.slug,p.short_desc,p.description,tmp_prs.id,tmp_prs.input_quality from temp_products as tmp_prs JOIN products as p on tmp_prs.idproduct = p.idproduct) as al_pros UNION all select al_pro.* from (select p.idproduct,p.namepro,p.slug,p.short_desc,p.description,pr.id, pr.input_quality,pr.parent,pr.idcrosstype from (select cp.idproduct,cp.idcrosstype,cp.idproduct_cross,tmp_p.id as parent,tmp_p.id, tmp_p.input_quality from tmp_product as tmp_p join cross_product as cp on tmp_p.idproduct = cp.idproduct) as pr join products as p on pr.idproduct_cross = p.idproduct) as al_pro) as info_pro join (select * from imp_products WHERE idstore = _idstore) as imp on info_pro.idproduct = imp.idproduct) as al_info LEFT JOIN producthasfile as phf on al_info.idproduct = phf.idproduct) as inf LEFT JOIN files as f on inf.idfile = f.idfile) as rs_info;
                DROP TABLE tmp_product;
                DROP TABLE temp_products;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LstParentByIdcattypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `LstParentByIdcattypeProcedure`;
delimiter ;;
CREATE PROCEDURE `LstParentByIdcattypeProcedure`(IN `_idcattype` INT(11))
BEGIN             
                IF _idcattype > 0 THEN
                BEGIN
                   SELECT c.idcategory, c.namecat FROM categories as c WHERE c.idcattype = _idcattype and c.idparent = 0;
                END; 
                ELSE
                BEGIN
                   SELECT c.* FROM categories as c;    
                END;
                END IF; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MakeCrosstypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `MakeCrosstypeProcedure`;
delimiter ;;
CREATE PROCEDURE `MakeCrosstypeProcedure`(IN _idproduct INT(11) ,IN _iduser INT(11), IN _idcrosstype INT(11), IN _idparentcross INT(11), IN _price INT(11), IN _quality_sale INT(11), IN _idstore int(11), IN _id_status_type int(11))
BEGIN             
      set @prev_id = 0;
			set @prev_id = ( SELECT MAX(idimp) as max_idimp FROM imp_products WHERE idstore = _idstore and id_status_type = 4 and idproduct = _idproduct and idcrosstype in (0,_idcrosstype) GROUP BY idproduct );
								insert into imp_products(idproduct, iduser, idcrosstype, idparentcross, price, quality_sale, idstore, id_status_type, prev_id) VALUES (_idproduct, _iduser, _idcrosstype, _idparentcross, _price, _quality_sale, _idstore, _id_status_type, @prev_id);
                select LAST_INSERT_ID() as idimp;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MenuHasIdcateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `MenuHasIdcateProcedure`;
delimiter ;;
CREATE PROCEDURE `MenuHasIdcateProcedure`(IN `_idmenu` INT(11), IN `_idcategory` INT(11), IN `_idparentmenu` INT(11))
BEGIN
               insert into menu_has_cate(idmenu,idcategory,idparentmenu) values (_idmenu,_idcategory,_idparentmenu);  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostPopularProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostPopularProcedure`;
delimiter ;;
CREATE PROCEDURE `MostPopularProcedure`()
BEGIN 
                select info.created_at,info.idproduct,info.namepro,info.short_desc, info.price,info.amount,info.urlfile from (select dtail.created_at,dtail.idproduct,dtail.namepro,dtail.short_desc, dtail.price,dtail.amount,dtail.urlfile,dtail.author, (select namecat from categories WHERE idcategory = prohas.idcategory) as namecat from ( select detail.created_at,detail.idproduct,detail.namepro,detail.short_desc, detail.price,detail.amount,f.urlfile,(select `name` from users WHERE id = detail.iduser) as author from (select p.created_at,p.idproduct,p.namepro,p.short_desc, imp.price,imp.amount,imp.iduser,(select idfile from producthasfile WHERE idproduct = p.idproduct ORDER BY idproducthasfile DESC LIMIT 1) as idfile  FROM products as p JOIN imp_products as imp on p.idproduct = imp.idproduct) as detail join files as f on detail.idfile = f.idfile) as dtail JOIN (select * from catehasproduct where idcategory > 0) as prohas on prohas.idproduct = dtail.idproduct) as info limit 8; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for NewProc
-- ----------------------------
DROP PROCEDURE IF EXISTS `NewProc`;
delimiter ;;
CREATE PROCEDURE `NewProc`()
BEGIN
	/*set @pattern = '^admin/aduser/[0-9]+/edit$';*/
	DECLARE curent_url VARCHAR(255);
	DECLARE pattern VARCHAR(255);
	set curent_url = 'admin/aduser/create';
	/*set pattern = '^admin/aduser/[0-9]+/edit$';*/
	set pattern = 'admin/aduser/[1-9][0-9]+/edit';
	SELECT pathroute FROM categories WHERE pathroute = curent_url;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for new_old_price
-- ----------------------------
DROP PROCEDURE IF EXISTS `new_old_price`;
delimiter ;;
CREATE PROCEDURE `new_old_price`(IN `_idproduct` bigint,IN `_idstore` int,OUT `_newprice` int,OUT `_oldprice` int)
BEGIN
	set _newprice = 0;
	set _oldprice = 0;
	DROP TABLE IF EXISTS tmp_product1;
	DROP TABLE IF EXISTS tmp_product2;
   create TEMPORARY TABLE tmp_product1 (id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idimp INTEGER NULL, idproduct INTEGER null, idcrosstype INTEGER null, idparentcross INTEGER null, amount INTEGER NULL, price_import INTEGER null, price INTEGER NULL, quality_sale INTEGER NULL) as (select * from (select idimp, idproduct, idcrosstype, idparentcross, amount,price_import, price, quality_sale from imp_products WHERE idproduct = @_idproduct and idcrosstype = 0 and idstore = @_idstore and id_status_type = 4 and idparentcross = 0 UNION select idimp, idproduct, idcrosstype, idparentcross, amount, price_import, price, quality_sale from imp_products WHERE idparentcross = @_idproduct and idcrosstype = 4 and idstore = @_idstore and id_status_type = 4) as info ORDER BY info.idimp DESC LIMIT 2);
	 create TEMPORARY TABLE tmp_product2 (id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idimp INTEGER NULL, idproduct INTEGER null, idcrosstype INTEGER null, idparentcross INTEGER null, amount INTEGER NULL, price_import INTEGER null, price INTEGER NULL, quality_sale INTEGER NULL) as (SELECT * from tmp_product1);
	 SELECT info.*, p.namepro, p.short_desc, p.description, f.urlfile FROM (select tmp1.*,latestidfile(tmp1.idproduct,1) as idfile, tmp2.price as old_price from (SELECT * FROM tmp_product1 limit 1) as tmp1 LEFT JOIN tmp_product2 as tmp2 on tmp2.id = 2) as info LEFT JOIN products as p on info.idproduct = p.idproduct LEFT JOIN files as f on info.idfile = f.idfile;
	 DROP TABLE tmp_product1;
	 DROP TABLE tmp_product2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for OrderHistoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `OrderHistoryProcedure`;
delimiter ;;
CREATE PROCEDURE `OrderHistoryProcedure`(IN `_userid_order` INT(11), IN `_idproduct` BIGINT(20), IN `_quality` INT(11))
BEGIN
                insert into order_history(userid_order, idproduct, quality) values(_userid_order, _idproduct, _quality);
                SELECT LAST_INSERT_ID() as idorderhistory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for OrderProductFromSessionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `OrderProductFromSessionProcedure`;
delimiter ;;
CREATE PROCEDURE `OrderProductFromSessionProcedure`(IN `_idcustomer` INT(11), IN `_idrecipent` INT(11), IN `_iduser` INT(11), IN `_note` TEXT CHARSET utf8mb4, IN `_fromnamestore` VARCHAR(255), IN `_tonamestore` VARCHAR(255), IN `_queryStr` text)
BEGIN
                Declare _idcattype int;
                DECLARE _fromidstore int;
								DECLARE _toidstore int;
                DECLARE _idnumberorder int;
                DECLARE _axis_x INT(11);
                DECLARE _axis_y INT(11);
                DECLARE _axis_z INT(11);
								DECLARE ordertotal DOUBLE(20,0);
                set _axis_x = 0;
                set _axis_y = 0;
                set _axis_z = 0;
                set _idcattype = (select idcattype from category_types where catnametype='store');
                set _fromidstore = (select cat.idcategory from (select idcategory,shortname from categories WHERE idcattype = _idcattype) as cat WHERE cat.shortname=_fromnamestore);
								set _toidstore = (select cat.idcategory from (select idcategory,shortname from categories WHERE idcattype = _idcattype) as cat WHERE cat.shortname=_tonamestore);
								
								DROP TABLE IF EXISTS tmp_product1;
                DROP TABLE IF EXISTS temp_product2;
								DROP TABLE IF EXISTS temp_product3;
                create TEMPORARY TABLE tmp_product1(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idorder INTEGER not NULL, idcrosstype INTEGER  NULL,parent  INTEGER not NULL, idparentcross INTEGER NULL,input_quality  INTEGER  NULL,idproduct  INTEGER NULL,inp_session  INTEGER  NULL,trash INTEGER  NULL);
                SET @queryString = _queryStr;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                create TEMPORARY TABLE temp_product2(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idorder INTEGER not NULL, idcrosstype INTEGER not NULL,parent  INTEGER not NULL, idparentcross INTEGER NULL,input_quality  INTEGER not NULL,idproduct  INTEGER not NULL,inp_session  INTEGER not NULL,trash  INTEGER not NULL) as (SELECT * from tmp_product1);
								create TEMPORARY TABLE temp_product3(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idorder INTEGER not NULL, idcrosstype INTEGER not NULL,parent  INTEGER not NULL, idparentcross INTEGER NULL,input_quality  INTEGER not NULL,idproduct  INTEGER not NULL,inp_session  INTEGER not NULL,trash  INTEGER not NULL) as (SELECT * from tmp_product1);
									INSERT into listorder(note) VALUES (_note);
                    set _idnumberorder = (select LAST_INSERT_ID());
										/*set _idnumberorder = 52;*/
                    /*INSERT into exp_products(idnumberorder, idcrosstype, idproduct,idorder, parentidorder, idcustomer, idrecipent, iduser, amount, price, note, idstore, axis_x, axis_y, axis_z, id_status_type) */
										/*select _idnumberorder, info.idcrosstype, info.idproduct, info.idorder, info.parent, _idcustomer, _idrecipent, _iduser, info.inp_session, info.price,'' as note, _toidstore, _axis_x, _axis_y, _axis_z, info.trash from (select tmp1.*, imp1.idcustomer, imp1.iduser, imp1.price, imp1.quality_sale, imp1.fromdate, imp1.todate from tmp_product as tmp1 left JOIN (select * from imp_products WHERE idstore = _fromidstore and id_status_type = 4 AND idparentcross = 0) as imp1 on tmp1.idproduct = imp1.idproduct and tmp1.idparentcross = imp1.idparentcross WHERE imp1.idproduct is not NULL UNION ALL select tmp2.*, imp2.idcustomer, imp2.iduser, imp2.price, imp2.quality_sale, imp2.fromdate, imp2.todate from temp_products as tmp2 left JOIN (select * from imp_products WHERE idstore = _fromidstore and id_status_type = 4 AND idparentcross > 0) as imp2 on tmp2.idproduct = imp2.idproduct and tmp2.idparentcross = imp2.idparentcross WHERE imp2.idproduct is not NULL) as info order by info.idorder ASC;*/
										
										INSERT into exp_products(idnumberorder, idcrosstype, idproduct,idorder, parentidorder, idcustomer, idrecipent, iduser, amount, price, note, idstore, axis_x, axis_y, axis_z, id_status_type ,prev_idimp, prev_idproducthasfile) (SELECT _idnumberorder, info.idcrosstype, info.idproduct, info.idorder, info.parent, _idcustomer, _idrecipent, _iduser, info.inp_session, info.price,'' as note, _toidstore, _axis_x, _axis_y, _axis_z, info.trash, info.max_idimp_price, MAX(phf1.idproducthasfile) as max_idproducthasfile from (SELECT info1.*, imp1.price FROM (SELECT tmp1.*, MAX(imp1.idimp) as max_idimp_price FROM tmp_product1 as tmp1 LEFT JOIN imp_products as imp1 on tmp1.idproduct = imp1.idproduct WHERE tmp1.idcrosstype = imp1.idcrosstype AND tmp1.idparentcross = imp1.idparentcross GROUP BY tmp1.idorder) as info1 LEFT JOIN imp_products as imp1 on info1.max_idimp_price = imp1.idimp) as info LEFT JOIN producthasfile as phf1 on phf1.idproduct = info.idproduct WHERE phf1.hastype = 1 GROUP BY info.idorder);
												
										set ordertotal = (SELECT inf.ordertotal from (select idnumberorder,SUM(amount*price) as ordertotal from exp_products WHERE idnumberorder = _idnumberorder GROUP BY idnumberorder) as inf);
										select inp_f.*,f.urlfile,ordertotal from (select inf_p.*,phf.idfile from (select inf.*,p.namepro,p.slug,p.short_desc,p.description from (select * from exp_products WHERE idnumberorder = _idnumberorder) as inf LEFT JOIN products as p on inf.idproduct = p.idproduct) as inf_p LEFT JOIN producthasfile as phf on inf_p.prev_idproducthasfile = phf.idproducthasfile) as inp_f LEFT JOIN files f on inp_f.idfile = f.idfile;
                    DROP TABLE tmp_product1;
                    DROP TABLE temp_product2;
										DROP TABLE temp_product3;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for OrderProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `OrderProductProcedure`;
delimiter ;;
CREATE PROCEDURE `OrderProductProcedure`(IN `_ordernumber` INT(11), IN `_idproduct` INT(11), IN `_parentidproduct` INT(11), IN `_idcustomer` INT(11), IN `_idrecipent` INT(11), IN `_iduser` INT(11), IN `_amount` DOUBLE(20,0), IN `_price` DOUBLE(20,0), IN `_note` TEXT CHARSET utf8mb4, IN `_namestore` VARCHAR(255), IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11))
BEGIN
								 Declare _idcattype int;
								 DECLARE _idstore int;
								 set _idstore = 0;
                 set _idcattype = (select idcattype from category_types where catnametype="store");
								 set _idstore = (select cat.idcategory from (select idcategory,shortname from categories WHERE idcattype = _idcattype) as cat WHERE cat.shortname=_namestore);
								 INSERT into exp_products(ordernumber, idproduct, parentidproduct, idcustomer, idrecipent, iduser, amount, price, note, idstore, axis_x, axis_y, axis_z, id_status_type) VALUES( _ordernumber, _idproduct, _parentidproduct,_idcustomer, _idrecipent, _iduser, _amount, _price, _note, _idstore, _axis_x, _axis_y, _axis_z, _id_status_type);
								 select LAST_INSERT_ID() as ordernumber;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PermissionByidProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `PermissionByidProcedure`;
delimiter ;;
CREATE PROCEDURE `PermissionByidProcedure`(IN _idperm INT(11))
BEGIN             
                SELECT p.*,c.idcattype FROM (SELECT * from permissions WHERE idperm = _idperm) as p LEFT JOIN categories as c on p.idcategory = c.idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PermissonDashboardProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `PermissonDashboardProcedure`;
delimiter ;;
CREATE PROCEDURE `PermissonDashboardProcedure`(IN `_iduser` int,IN `_command` varchar(255),`_catnametype` VARCHAR(255), OUT result bit)
sp:BEGIN
	set @_idrole = (SELECT idrole FROM `grants` WHERE to_iduser= _iduser limit 1);
	if @_idrole is NULL THEN
		BEGIN
			set result = 0;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
		set @_idcommand = (SELECT idpercommand from perm_commands WHERE command = _command);
		if @_idcommand IS NULL THEN 
			BEGIN
			set result = 0;
			LEAVE sp;
			END;
		END IF;
		set @_idcatetype = (SELECT idcattype FROM category_types WHERE catnametype = _catnametype);
		SELECT cat1.*, CASE WHEN cat2.idparent > 0 THEN 1 ELSE 0 END haschild from (select c.* from ( select DISTINCT perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= _iduser) as tbl_role LEFT JOIN imp_perms as imp on imp.idrole = tbl_role.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm LEFT JOIN perm_commands as pcom on pcom.idpercommand = perm.idpermcommand WHERE pcom.idpercommand = @_idcommand) as cateperm LEFT JOIN categories as c on c.idcategory = cateperm.idcategory WHERE c.idcattype = @_idcatetype) as cat1 LEFT JOIN (select DISTINCT c.idparent from ( select DISTINCT perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= _iduser) as tbl_role LEFT JOIN imp_perms as imp on imp.idrole = tbl_role.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm LEFT JOIN perm_commands as pcom on pcom.idpercommand = perm.idpermcommand WHERE pcom.idpercommand = @_idcommand) as cateperm LEFT JOIN categories as c on c.idcategory = cateperm.idcategory WHERE c.idcattype = @_idcatetype) as cat2 on cat1.idcategory = cat2.idparent;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PostByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `PostByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `PostByIdProcedure`(IN `id_post` INT(11))
BEGIN
                SELECT p.title,p.body,p.slug,p.id_post_type as idposttype,(select nametype from post_types WHERE idposttype = p.id_post_type) as nameposttype,p.idcategory,(SELECT namecat FROM categories WHERE idcategory = p.idcategory) as namecate FROM posts as p WHERE p.idpost=id_post;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PostHasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `PostHasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `PostHasFileProcedure`(IN `_idpost` INT(11), IN `_idfile` INT(11))
BEGIN
                INSERT INTO post_has_files(idpost,idfile) VALUES (_idpost,_idfile);
                SELECT LAST_INSERT_ID() as idposthasfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ProductBelongCategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProductBelongCategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `ProductBelongCategoryProcedure`(IN `_list_idcat` TEXT CHARSET utf8mb4)
BEGIN
                SET @s = CONCAT("INSERT INTO catehasproduct (idproduct,idcategory) VALUES ", _list_idcat); 
                PREPARE stmt1 FROM @s; 
                EXECUTE stmt1; 
                DEALLOCATE PREPARE stmt1;             
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ProducthasFile
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProducthasFile`;
delimiter ;;
CREATE PROCEDURE `ProducthasFile`(IN `_list_file` TEXT, IN `_sign` VARCHAR(10), IN `_hastype` VARCHAR(255), IN `_idproduct` INT(11))
BEGIN
                DECLARE x INT;
								DECLARE _idfile INT;
                DECLARE str_item VARCHAR(255);
                DECLARE item VARCHAR(255);
                DECLARE result VARCHAR(255);
                DECLARE rs_split VARCHAR(255); 
                SET x = LENGTH(_list_file);
                set result = "";
                set str_item ="";
                SET item = "";
								set _idfile = 0;
                set rs_split = _list_file;
                WHILE x  > 0 DO
                set item = SUBSTRING_INDEX(rs_split, _sign, -1);
                set rs_split = SUBSTRING(_list_file, 1, (LENGTH(rs_split)-LENGTH(item)-1));
                set str_item = CONCAT("(",item,")");
                call InsertFilePath(str_item, _idfile);
								INSERT into producthasfile(idproduct,hastype,idfile) VALUES (_idproduct,_hastype,_idfile);
                set x = LENGTH(rs_split);
                END WHILE;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ProducthasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProducthasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `ProducthasFileProcedure`(IN `_urlfile` VARCHAR(255), IN `_name_origin` VARCHAR(255), IN `_namefile` VARCHAR(255), IN `_typefile` VARCHAR(255), IN `_idproduct` INT(11), IN `_hastype` INT(10))
BEGIN
               DECLARE _idfile INT(11);
               INSERT INTO files(urlfile,name_origin,namefile, typefile) VALUES (_urlfile,_name_origin, _namefile, _typefile);
               set _idfile = LAST_INSERT_ID();
               INSERT INTO producthasfile(idproduct,hastype,idfile) VALUES (_idproduct,_hastype,_idfile);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ReachInitSessionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ReachInitSessionProcedure`;
delimiter ;;
CREATE PROCEDURE `ReachInitSessionProcedure`(IN _str_query text, IN _idstore int(11),IN _int_count int(11))
BEGIN             
                DROP TABLE IF EXISTS tmp_product;
                DROP TABLE IF EXISTS temp_products;
                set @idorder:=(_int_count-1);
                create TEMPORARY TABLE tmp_product(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                create TEMPORARY TABLE temp_products(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null) as (select idproduct,input_quality from tmp_product);
								select (@idorder:= @idorder + 1) as idorder, info.* from (select 0 as parent, tmp1.id, tmp1.idproduct as parent_in, tmp1.input_quality, imp1.idproduct,imp1.idcrosstype,imp1.idparentcross,imp1.amount,imp1.price_import,imp1.price,imp1.quality_sale from (SELECT * from tmp_product) as tmp1 JOIN (select * from imp_products WHERE idcrosstype = 0 and idstore = _idstore and id_status_type = 4 and idparentcross = 0) as imp1 on tmp1.idproduct = imp1.idproduct UNION all select _int_count as parent, tmp2.id, tmp2.idproduct as parent_in, tmp2.input_quality,imp2.idproduct,imp2.idcrosstype,imp2.idparentcross,imp2.amount,imp2.price_import,imp2.price,imp2.quality_sale from (SELECT * from temp_products) as tmp2 JOIN (select * from imp_products WHERE idstore = _idstore and id_status_type = 4) as imp2 on tmp2.idproduct = imp2.idparentcross) as info;
								DROP TABLE tmp_product;
                DROP TABLE temp_products;	
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RelateProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `RelateProductProcedure`;
delimiter ;;
CREATE PROCEDURE `RelateProductProcedure`()
BEGIN
                select info.created_at,info.idproduct,info.namepro,info.short_desc, info.price_import, info.price, info.amount,info.urlfile from (select dtail.created_at,dtail.idproduct,dtail.namepro,dtail.short_desc, dtail.price_import, dtail.price, dtail.amount,dtail.urlfile,dtail.author, (select namecat from categories WHERE idcategory = prohas.idcategory) as namecat from ( select detail.created_at,detail.idproduct,detail.namepro,detail.short_desc, detail.price_import, detail.price, detail.amount,f.urlfile,(select `name` from users WHERE id = detail.iduser) as author from (select p.created_at,p.idproduct,p.namepro,p.short_desc, imp.price_import, imp.price, imp.amount,imp.iduser,(select idfile from producthasfile WHERE idproduct = p.idproduct and hastype=1 ORDER BY idproducthasfile DESC LIMIT 1) as idfile  FROM (select pr.* from products as pr left join cross_product as c on pr.idproduct = c.idproduct_cross where c.idcrossproduct is NULL) as p JOIN imp_products as imp on p.idproduct = imp.idproduct) as detail join files as f on detail.idfile = f.idfile) as dtail JOIN (select * from catehasproduct where idcategory > 0) as prohas on prohas.idproduct = dtail.idproduct) as info limit 8; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ReportProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ReportProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ReportProductProcedure`(IN `strqr_tmp_cate` text,IN `_id_post_type` int,IN `_id_status_type` int, in _idstore int ,IN `_start_date` timestamp,`_end_date` timestamp)
BEGIN
set @rg = (select strqr_tmp_cate REGEXP '^[(0-9,)]{1,}');
if @rg > 0 THEN
BEGIN 
	DROP TABLE IF EXISTS tmp_category;
	create TEMPORARY TABLE tmp_category(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idcategory INTEGER not NULL);
	set @str = CONCAT('INSERT into tmp_category(idcategory) VALUES ', strqr_tmp_cate);
	SET @queryString = @str;
	PREPARE stmt FROM @queryString;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	select info8.*, imp2.*, phf2.idfile, f.urlfile, u.`name` as author from (SELECT info7.*, MAX(info7.idproducthasfile) as max_idproducthasfile FROM (select info6.*,phf1.idproducthasfile from (SELECT info5.*,MAX(info5.idimp) as max_idimp from (select info4.*, imp1.idimp,imp1.idcrosstype from (SELECT info3.*, GROUP_CONCAT(info3.namecat SEPARATOR ', ') as listcat from (select info2.*,c.namecat from (select info1.*,p.namepro, p.slug, p.short_desc, p.description FROM ( SELECT chp.idproduct, chp.idcategory from catehasproduct as chp right JOIN tmp_category as tmp_c on chp.idcategory = tmp_c.idcategory WHERE chp.created_at BETWEEN _start_date and _end_date ) as info1 LEFT JOIN products as p on info1.idproduct = p.idproduct WHERE p.idstatus_type = _id_status_type AND p.idproduct is not NULL and p.id_post_type = _id_post_type and p.created_at BETWEEN _start_date AND _end_date) as info2 LEFT JOIN categories as c on c.idcategory = info2.idcategory) as info3 GROUP BY info3.idproduct) as info4 LEFT JOIN imp_products as imp1 on info4.idproduct = imp1.idproduct WHERE imp1.idstore=_idstore AND imp1.id_status_type = 4 AND imp1.idcrosstype in (0,4) and imp1.idimp is not NULL) as info5 GROUP BY info5.idproduct) as info6 LEFT JOIN producthasfile as phf1 on info6.idproduct = phf1.idproduct WHERE phf1.hastype = 1 and phf1.status_file = 1 and phf1.idproducthasfile is not NULL) as info7 GROUP BY info7.idproduct) as info8 LEFT JOIN imp_products as imp2 on info8.max_idimp = imp2.idimp LEFT JOIN producthasfile as phf2 on info8.max_idproducthasfile = phf2.idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN users as u on imp2.iduser = u.id ORDER BY info8.max_idimp DESC LIMIT 100;
	DROP TABLE tmp_category;
END;
ELSE
BEGIN
	SELECT info7.*,imp2.*, phf2.idfile, f.urlfile, u.`name` as author FROM (SELECT info6.*, MAX(info6.idproducthasfile) as max_idproducthasfile FROM (SELECT info5.*,phf1.idproducthasfile FROM (SELECT info4.*,MAX(info4.idimp) as max_idimp FROM (SELECT info3.*, imp1.idimp,imp1.idcrosstype from ( SELECT info2.*,GROUP_CONCAT(info2.namecat SEPARATOR ', ') as listcat FROM (SELECT info1.*,p.namepro, p.slug, p.short_desc, p.description FROM (SELECT cate.idcategory, cate.namecat, chp.idcateproduct, chp.idproduct FROM catehasproduct as chp LEFT JOIN categories as cate on cate.idcategory = chp.idcategory WHERE chp.idcateproduct is not NULL and chp.created_at BETWEEN _start_date AND _end_date) as info1 LEFT JOIN products as p on info1.idproduct = p.idproduct WHERE p.idstatus_type = _id_status_type AND p.idproduct is not NULL and id_post_type = _id_post_type and created_at BETWEEN _start_date AND _end_date) as info2 GROUP BY info2.idproduct ) as info3 LEFT JOIN imp_products as imp1 on info3.idproduct = imp1.idproduct WHERE imp1.idstore=_idstore AND imp1.id_status_type = 4 AND imp1.idcrosstype in (0,4) and imp1.idimp is not NULL) as info4 GROUP BY info4.idproduct) as info5 LEFT JOIN producthasfile as phf1 on info5.idproduct = phf1.idproduct WHERE phf1.hastype = 1 and phf1.status_file = 1 and phf1.idproducthasfile is not NULL) as info6 GROUP BY info6.idproduct) as info7 LEFT JOIN imp_products as imp2 on info7.max_idimp = imp2.idimp LEFT JOIN producthasfile as phf2 on info7.max_idproducthasfile = phf2.idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN users as u on imp2.iduser = u.id ORDER BY info7.max_idimp DESC limit 100;
END;
END IF;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelAllColorProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelAllColorProcedure`;
delimiter ;;
CREATE PROCEDURE `SelAllColorProcedure`()
BEGIN
                select idcolor,value from color; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelAllSizeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelAllSizeProcedure`;
delimiter ;;
CREATE PROCEDURE `SelAllSizeProcedure`()
BEGIN
                select idsize,value from size; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCategorybyIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCategorybyIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCategorybyIdProcedure`(IN `idcat` INT(11))
BEGIN
                SELECT c1.idcategory, c1.namecat, c1.idcattype, (select catnametype from category_types where idcattype=c1.idcattype) as catnametype, c1.idparent, c2.namecat as parent from (select * from categories where idcategory=idcat) as c1 left Join categories as c2 on c1.idparent = c2.idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCateSelectedProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCateSelectedProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCateSelectedProcedure`(IN `_idproduct` INT(11))
BEGIN
                SELECT c.idcateproduct,c.idcategory from catehasproduct as c where c.idproduct = _idproduct and c.checked > 0 ORDER BY c.idcateproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCityTownProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCityTownProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCityTownProcedure`()
BEGIN
                 select idcitytown, namecitytown from city_town; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCrossProductByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCrossProductByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCrossProductByIdProcedure`(IN `_idproduct` INT(11), IN `_idcrosstype` INT(11))
BEGIN
								select infoc.*, (SELECT urlfile FROM files where idfile = infoc.idfile) as urlfile from (select pro.idproduct,pro.namepro, pro.short_desc, pro.description, pro.idsize,(select `value` from size where idsize = pro.idsize) as size,pro.idcolor,(select `value` from color where idcolor = pro.idcolor) as color,imp.price_import, imp.price, imp.price_sale_origin, imp.price_combo, imp.quality_combo, imp.price_gift, imp.quality_gift, imp.amount,(SELECT idfile from producthasfile WHERE idproduct= pro.idproduct and hastype= 1 ORDER BY idproducthasfile DESC LIMIT 1) as idfile from (select p.* from (SELECT idproduct_cross FROM cross_product WHERE idproduct = _idproduct and idcrosstype = _idcrosstype) as crp left join products as p on p.idproduct = crp.idproduct_cross) as pro join imp_products as imp on pro.idproduct = imp.idproduct) as infoc;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCrossTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCrossTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCrossTypeProcedure`()
BEGIN
               SELECT * FROM cross_type;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelDepartmentByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelDepartmentByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelDepartmentByIdProcedure`(IN `_iddepart` INT(11))
BEGIN
                SELECT c1.iddepart, c1.namedepart, c1.idparent, c2.namedepart as parent from (select * from departments where iddepart=_iddepart) as c1 left Join departments as c2 on c1.idparent = c2.iddepart;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelDicstrictProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelDicstrictProcedure`;
delimiter ;;
CREATE PROCEDURE `SelDicstrictProcedure`(IN `_idcitytown` INT(11))
BEGIN
                 select iddistrict,namedist from district where idcitytown =_idcitytown; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelectProfileByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelectProfileByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelectProfileByIdProcedure`(IN `_idprofile` INT)
BEGIN
	select * from `profile` WHERE idprofile=_idprofile;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelectProfileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelectProfileProcedure`;
delimiter ;;
CREATE PROCEDURE `SelectProfileProcedure`(IN `_iduser` INT(11))
BEGIN
                select u.*,p.* from (select id,email from users where id = _iduser) as u JOIN profile as p on u.id = p.iduser;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelGalleryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelGalleryProcedure`;
delimiter ;;
CREATE PROCEDURE `SelGalleryProcedure`(IN `_idproduct` INT(11), IN `_idgallery` INT(10))
BEGIN
                select pf.idproducthasfile,f.idfile,f.urlfile from (SELECT idproducthasfile,idfile from producthasfile  where idproduct = _idproduct and hastype = _idgallery and status_file='1') as pf join files as f on pf.idfile = f.idfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelIdproductHisProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelIdproductHisProcedure`;
delimiter ;;
CREATE PROCEDURE `SelIdproductHisProcedure`(IN `_idhis` BIGINT(20))
BEGIN
               SELECT idproduct FROM `order_history` where idorderhistory = _idhis;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelImportByIDProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelImportByIDProductProcedure`;
delimiter ;;
CREATE PROCEDURE `SelImportByIDProductProcedure`(IN _idproduct int(11), IN _idstore int(11))
BEGIN
               SELECT p.namepro, p. slug, p.short_desc, p.description, info.*, phf.max_idproducthasfile, phf2.idfile, f.urlfile FROM (SELECT * FROM imp_products WHERE idstore = _idstore AND id_status_type = 4 and idproduct = _idproduct and idcrosstype > 0) as info LEFT JOIN (SELECT max(phf1.idproducthasfile) as max_idproducthasfile, phf1.idproduct from (SELECT * from producthasfile WHERE hastype = 1 and status_file = 1) as phf1 GROUP BY phf1.idproduct) as phf on info.idparentcross = phf.idproduct LEFT JOIN producthasfile as phf2 on  phf.max_idproducthasfile = phf2.idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN products as p on phf2.idproduct = p.idproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SellistcategorybyidProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SellistcategorybyidProcedure`;
delimiter ;;
CREATE PROCEDURE `SellistcategorybyidProcedure`(IN `_idcat` INT(11))
BEGIN
     SELECT idcategory, namecat from categories where idparent = _idcat;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelListDepartmentByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelListDepartmentByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelListDepartmentByIdProcedure`(IN `_iddepart` INT(11))
BEGIN
                SELECT c1.iddepart, c1.namedepart from departments as c1 where c1.idparent = _iddepart;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelListOrderSesProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelListOrderSesProcedure`;
delimiter ;;
CREATE PROCEDURE `SelListOrderSesProcedure`(IN _str_query varchar(255), IN _idstore int(11))
BEGIN
                DROP TABLE IF EXISTS tmp_product;
                DROP TABLE IF EXISTS temp_products;
                set @idorder:=0;
                create TEMPORARY TABLE tmp_product(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                create TEMPORARY TABLE temp_products(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idproduct INTEGER not NULL, input_quality INTEGER not null) as (select idproduct,input_quality from tmp_product);
                select (@idorder:= @idorder + 1) as idorder, info_pro.idcrosstype,info_pro.parent,info_pro.id,info_pro.input_quality,imp.*,(CASE WHEN info_pro.idcrosstype = 1 THEN info_pro.input_quality*imp.quality_combo WHEN info_pro.idcrosstype = 2 THEN info_pro.input_quality*imp.quality_gift ELSE info_pro.input_quality END) as inp_session from (select al_pros.*,0 as parent,0 as idcrosstype from (select p.idproduct,tmp_prs.id,tmp_prs.input_quality from temp_products as tmp_prs JOIN products as p on tmp_prs.idproduct = p.idproduct) as al_pros UNION all select al_pro.* from (select p.idproduct,pr.id, pr.input_quality,pr.parent,pr.idcrosstype from (select cp.idproduct,cp.idcrosstype,cp.idproduct_cross,tmp_p.id as parent,tmp_p.id, tmp_p.input_quality from tmp_product as tmp_p join cross_product as cp on tmp_p.idproduct = cp.idproduct) as pr join products as p on pr.idproduct_cross = p.idproduct) as al_pro) as info_pro join (select idproduct,price,price_gift,quality_gift,price_combo,quality_combo from imp_products WHERE idstore = _idstore) as imp on info_pro.idproduct = imp.idproduct;
                DROP TABLE tmp_product;
                DROP TABLE temp_products;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelParentCrossProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelParentCrossProductProcedure`;
delimiter ;;
CREATE PROCEDURE `SelParentCrossProductProcedure`(IN `_idproduct` INT(11))
BEGIN
                 select idproduct from cross_product where idproduct_cross = _idproduct limit 1;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelParentProductCrossProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelParentProductCrossProcedure`;
delimiter ;;
CREATE PROCEDURE `SelParentProductCrossProcedure`(IN _idproduct int(11))
BEGIN
               select idparentcross from imp_products where idproduct = _idproduct limit 1;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelProductByIdimpProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelProductByIdimpProcedure`;
delimiter ;;
CREATE PROCEDURE `SelProductByIdimpProcedure`(IN _idimp int(11))
BEGIN
               select idproduct,idcrosstype,idparentcross,price,quality_sale from imp_products WHERE idimp = _idimp;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelProductByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelProductByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelProductByIdProcedure`(IN `_idproduct` INT(11), IN `_idstore` INT(11), IN _iduser INT)
sp:BEGIN
						set @_commit := 0;
						call UserProductPermissionProcedure(_iduser,'select',_idproduct , @_commit );
						if @_commit < 1 THEN 
							BEGIN
							SELECT @_commit as _commit;
							LEAVE sp;
							END;
						END IF;
    SELECT  @_commit as _commit, p.namepro,p.short_desc, p.slug, p.description, info3.*, imp1.*, imp2.price as old_price, phf.idfile as idfile, f.urlfile as url_thumbnail from (SELECT info1.idproduct, info1.max_idimp_price, info2.max_idproducthasfile from (SELECT MAX(idimp) as max_idimp_price, info.idproduct FROM (SELECT * FROM imp_products WHERE idstore = _idstore and id_status_type = 4 and  idproduct = _idproduct and idcrosstype in (0,4)) as info GROUP BY info.idproduct) as info1 LEFT JOIN (SELECT MAX(idproducthasfile) as max_idproducthasfile,idproduct from producthasfile WHERE idproduct = _idproduct and hastype = 1 GROUP BY idproduct) as info2 on info1.idproduct = info2.idproduct) as info3 LEFT JOIN products as p on info3.idproduct = p.idproduct LEFT JOIN imp_products as imp1 on info3.max_idimp_price = imp1.idimp LEFT JOIN imp_products as imp2 on imp1.prev_id = imp2.idimp LEFT JOIN producthasfile as phf on info3.max_idproducthasfile = phf.idproducthasfile LEFT JOIN files as f on phf.idfile = f.idfile;
            END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelProductCrossByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelProductCrossByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelProductCrossByIdProcedure`(IN _idproduct int(11))
BEGIN
               set @idorder:= 0;
							 SELECT info2.*,imp1.*, p.namepro, p.slug, p.short_desc, p.description, phf2.idfile, f.urlfile, ct.namecross FROM (SELECT info1.*, MAX(info1.idproducthasfile) as max_idproducthasfile FROM (SELECT (@idorder:= @idorder + 1) as idorder, imp1.idimp, imp1.idproduct, phf1.idproducthasfile from (SELECT * FROM imp_products WHERE idstore = 31 and id_status_type = 4 and idparentcross = _idproduct and idcrosstype <> 4 and idcrosstype > 0) as imp1 LEFT JOIN producthasfile as phf1 on imp1.idproduct = phf1.idproduct) as info1 GROUP BY info1.idorder) as info2 LEFT JOIN imp_products as imp1 on info2.idimp = imp1.idimp LEFT JOIN products as p on info2.idproduct = p.idproduct LEFT JOIN producthasfile as phf2 on phf2.idproducthasfile = info2.max_idproducthasfile LEFT JOIN files as f on phf2.idfile = f.idfile LEFT JOIN cross_type as ct on ct.idcrosstype = imp1.idcrosstype;
		
							 /*select inf_p.*,f.urlfile from (select inf.*,phf.idfile from (SELECT imp.idimp,imp.idproduct, imp.idcrosstype,(SELECT namecross FROM cross_type WHERE idcrosstype = imp.idcrosstype) as namecross,imp.idparentcross , imp.amount, imp.price_import, imp.price, imp.quality_sale,imp.id_status_type,imp.fromdate,imp.todate,p.namepro,p.slug,p.short_desc,p.description from (select * from imp_products where idparentcross = _idproduct and id_status_type = 4 and idproduct <> _idproduct) as imp LEFT JOIN products as p on imp.idproduct = p.idproduct) as inf LEFT JOIN producthasfile as phf on inf.idproduct = phf.idproduct) as inf_p LEFT JOIN files as f on inf_p.idfile = f.idfile;*/
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelRowCategoryByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelRowCategoryByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelRowCategoryByIdProcedure`(IN `_idcategory` INT(11))
BEGIN
                SELECT idcategory, namecat from categories where idcategory = _idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelSexProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelSexProcedure`;
delimiter ;;
CREATE PROCEDURE `SelSexProcedure`()
BEGIN
                 select idsex, namesex from sex; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelToppingProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelToppingProcedure`;
delimiter ;;
CREATE PROCEDURE `SelToppingProcedure`(IN `_topping` VARCHAR(255))
BEGIN
                 declare _idcategory varchar(255);
                 set _idcategory = (select idcategory FROM categories WHERE shortname=_topping limit 1);
								 IF (_idcategory > 0) THEN
											BEGIN
												select protop.idproduct,protop.namepro,protop.price,protop.amount,(SELECT urlfile from files where idfile = protop.idfile) as url_thumbnail from (select pr.idproduct,(select idfile from producthasfile WHERE idproduct = pr.idproduct and hastype="thumbnail" ORDER BY idproducthasfile DESC LIMIT 1) as idfile,pr.namepro,imp.price,imp.amount from (select p.* from (select idproduct from catehasproduct where idcategory = _idcategory) as catep JOIN products as p on catep.idproduct = p.idproduct) as pr JOIN imp_products as imp on pr.idproduct = imp.idproduct) as protop;
											END;
									END IF;          
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ShortTotalProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ShortTotalProcedure`;
delimiter ;;
CREATE PROCEDURE `ShortTotalProcedure`(IN `_ordernumber` INT(11))
BEGIN
               select sum(p.amount * p.price) as total from exp_products as p where ordernumber = _ordernumber;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for split_pattern
-- ----------------------------
DROP PROCEDURE IF EXISTS `split_pattern`;
delimiter ;;
CREATE PROCEDURE `split_pattern`(IN `string_split` VARCHAR(255), IN `_sign` VARCHAR(10), OUT `outresult` VARCHAR(255))
BEGIN
		DECLARE x INT;
		DECLARE str_item VARCHAR(255);
		DECLARE item VARCHAR(255);
		DECLARE result VARCHAR(255);
		DECLARE rs_split VARCHAR(255); 
		SET x = LENGTH(string_split);
		set result = "";
		set str_item ="";
		SET item = "";
		set rs_split = string_split;
		WHILE x  > 0 DO
		set item = SUBSTRING_INDEX(rs_split,_sign, -1);
		set rs_split = SUBSTRING(string_split, 1, (LENGTH(rs_split)-LENGTH(item)-1));
		set str_item = CONCAT("(", item,")");
		set result = CONCAT(result,",", str_item);
		set x = LENGTH(rs_split);
		END WHILE;
		set outresult = SUBSTRING(result,2); 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for split_string
-- ----------------------------
DROP PROCEDURE IF EXISTS `split_string`;
delimiter ;;
CREATE PROCEDURE `split_string`(IN `string_split` VARCHAR(255), IN `_idextend` VARCHAR(255), IN `_sign` VARCHAR(10), OUT `outresult` VARCHAR(255))
BEGIN
		DECLARE x INT;
		DECLARE str_item VARCHAR(255);
		DECLARE item VARCHAR(255);
		DECLARE result VARCHAR(255);
		DECLARE rs_split VARCHAR(255); 
		SET x = LENGTH(string_split);
		set result = "";
		set str_item ="";
		SET item = "";
		set rs_split = string_split;
		WHILE x  > 0 DO
		set item = SUBSTRING_INDEX(rs_split,_sign, -1);
		set rs_split = SUBSTRING(string_split, 1, (LENGTH(rs_split)-LENGTH(item)-1));
		set str_item = CONCAT("(",_idextend,",", item,")");
		set result = CONCAT(result,",", str_item);
		set x = LENGTH(rs_split);
		END WHILE;
		set outresult = SUBSTRING(result,2);
		SELECT outresult;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for TrashGelleryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `TrashGelleryProcedure`;
delimiter ;;
CREATE PROCEDURE `TrashGelleryProcedure`(IN `_idproducthasfile` INT(11))
BEGIN
                update producthasfile set status_file = 0 where idproducthasfile = _idproducthasfile; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for TrashIdmenuhascateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `TrashIdmenuhascateProcedure`;
delimiter ;;
CREATE PROCEDURE `TrashIdmenuhascateProcedure`(IN `_idmenuhascate` int)
BEGIN
	UPDATE menu_has_cate set trash = 1 WHERE idmenuhascate = _idmenuhascate;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateCatehasproProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateCatehasproProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateCatehasproProcedure`(IN `_idcateproduct` INT(11))
BEGIN
                update catehasproduct set idcategory = 0 where idcateproduct = _idcateproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateIdcategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateIdcategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateIdcategoryProcedure`(IN `_idcategory` int,IN `_idproduct` int,IN `_checked` int, IN _hidden_idcate INT)
BEGIN
 if _checked = 0 THEN
 BEGIN
	UPDATE catehasproduct set checked = 0
	WHERE idcateproduct = _hidden_idcate;
 END;
 ELSE
 BEGIN
	set @_idcateproduct = (SELECT idcateproduct from (SELECT * FROM catehasproduct WHERE checked < 1 ) as cate WHERE cate.idproduct = _idproduct AND cate.idcategory = _idcategory);
	if @_idcateproduct > 0 THEN
		BEGIN
			UPDATE catehasproduct set checked = 1
			WHERE idcateproduct = @_idcateproduct;
		END;
	ELSE
		BEGIN
			INSERT INTO catehasproduct(idproduct,idcategory,checked) VALUES (_idproduct,_idcategory,1);
		END;
	END IF;
 END;
 end if;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateImportProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateImportProductProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateImportProductProcedure`(IN `_idimp` INT(11), IN `_idcustomer` INT(11), IN `_iduser` INT(11), IN `_idcrosstype` INT(11), IN `_amount` DOUBLE(11,2), IN `_price_import` DOUBLE(20,0), IN `_price` DOUBLE(20,0), IN `_quality_sale` INT(11), IN `_note` TEXT, IN `_idstore` INT(11), IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11))
BEGIN
                update imp_products set idcustomer=_idcustomer, iduser = _iduser, idcrosstype = _idcrosstype, amount = _amount, price_import = _price_import,price = _price, quality_sale =_quality_sale, note = _note, idstore = _idstore, axis_x = _axis_x, axis_y = _axis_y, axis_z = _axis_z, id_status_type = _id_status_type where idimp = _idimp;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateImppostByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateImppostByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateImppostByIdProcedure`(IN `id_imp_post` INT(11), IN `id_post` INT(11), IN `id_category` INT(11), IN `id_posttype` INT(11), IN `id_statustype` INT(11), IN `id_user_imp` INT(11))
if (id_imp_post > 0 )  then
                    update impposts set idpost=id_post,idcategory=id_category,id_post_type=id_posttype,id_status_type = id_statustype,iduser_imp = id_user_imp
                    where idimppost = id_imp_post;
                else
                    insert into impposts(idpost,idcategory,id_post_type,id_status_type,iduser_imp) values(id_post,id_category,id_posttype,id_statustype,id_user_imp);
                end if
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateImpProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateImpProductProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateImpProductProcedure`(IN _str_query TEXT)
BEGIN
                DROP TABLE IF EXISTS tmp_import;
                create TEMPORARY TABLE tmp_import(idtmp INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY , idimp INTEGER not NULL, idcrosstype INTEGER not NULL, price INTEGER not NULL, quality_sale  INTEGER not NULL, id_status_type  INTEGER not NULL, fromdate datetime NULL, todate datetime NULL);
                SET @queryString = _str_query;
                PREPARE stmt FROM @queryString;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                update imp_products as imp JOIN tmp_import as tmp_imp on imp.idimp = tmp_imp.idimp 
                set imp.idcrosstype = tmp_imp.idcrosstype, imp.price = tmp_imp.price, imp.quality_sale = tmp_imp.quality_sale, imp.id_status_type = tmp_imp.id_status_type, imp.fromdate = tmp_imp.fromdate, imp.todate = tmp_imp.todate
                WHERE imp.idimp > 0;
                DROP TABLE tmp_import;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateMenuHasCateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateMenuHasCateProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateMenuHasCateProcedure`(IN `_idmenuhascate` INT(11), IN `_idmenu` INT(11), IN `_idcategory` INT(11), IN `_idparent` INT(11), IN `_depth` INT(11), IN `_reorder` INT(11), IN `_trash` INT(11))
BEGIN
               update menu_has_cate set idmenu=_idmenu, idcategory = _idcategory, idparent = _idparent, depth = _depth, reorder = _reorder, trash = _trash where idmenuhascate=_idmenuhascate;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateMenuItemByIdhasProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateMenuItemByIdhasProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateMenuItemByIdhasProcedure`(IN `_str_query` VARCHAR(255))
BEGIN
                SET @sqlv=_str_query;
                PREPARE stmt FROM @sqlv;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateOrderNumberProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateOrderNumberProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateOrderNumberProcedure`(IN `_ordernumber` INT(11))
BEGIN
                 update exp_products set ordernumber = _ordernumber where idexp = _ordernumber;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdatePermissionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdatePermissionProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdatePermissionProcedure`(IN `_name` VARCHAR(250), IN `_description` TEXT, IN _idpermcommand INT(11), IN _idcategory INT(11), IN _idperm INT(11))
BEGIN             
                update permissions set `name` = _name, description = _description, idpermcommand = _idpermcommand, idcategory = _idcategory where idperm = _idperm;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateProfileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateProfileProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateProfileProcedure`(IN `_idprofile` INT, IN `_firstname` VARCHAR(255) CHARSET utf8mb4, IN `_lastname` VARCHAR(255) CHARSET utf8mb4, IN `_middlename` VARCHAR(255) CHARSET utf8mb4, IN `_idsex` INT, IN `_birthday` DATETIME, IN `_address` VARCHAR(255) CHARSET utf8mb4, IN `_mobile` VARCHAR(255) CHARSET utf8mb4, IN `_idcitytown` INT, IN `_iddistrict` INT)
BEGIN
	update `profile` set firstname = _firstname, lastname=_lastname, middlename=_middlename, idsex=_idsex, birthday = _birthday, address=_address, mobile=_mobile, idcitytown=_idcitytown, iddistrict=_iddistrict where idprofile = _idprofile;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UploadAvatarProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UploadAvatarProcedure`;
delimiter ;;
CREATE PROCEDURE `UploadAvatarProcedure`(IN `_idprofile` INT, IN `_url_avatar` VARCHAR(255))
BEGIN
                update `profile` set url_avatar = _url_avatar where idprofile=_idprofile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UserPermDashboardByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UserPermDashboardByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `UserPermDashboardByTypeProcedure`(IN `_iduser` int,IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255),OUT `result` bit)
sp:BEGIN
	set @_idrole = (SELECT idrole FROM `grants` WHERE to_iduser= _iduser limit 1);
	if @_idrole is NULL THEN
		BEGIN
			set result = 0;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
		set @_idcommand = (SELECT idpercommand from perm_commands WHERE command = _command);
		if @_idcommand IS NULL THEN 
			BEGIN
			set result = 0;
			LEAVE sp; 
			END;
		END IF;
		SET @_idcategory = (SELECT idcategory from categories WHERE pathroute REGEXP _curent_url limit 1);
		if @_idcategory is NULL THEN
			BEGIN
				set result = 0;
				LEAVE sp;
			END;
		ELSE
			 BEGIN
					if EXISTS (SELECT imp.idperm, imp.idrole, imp.iduserimp,perm.`name`, perm.description, perm.idpermcommand, perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= _iduser) as tbrole LEFT JOIN imp_perms as imp on imp.idrole = tbrole.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm WHERE perm.idpermcommand = @_idcommand AND perm.idcategory = @_idcategory) THEN
					set result = 1;
					ELSE
						set result = 0;
					end if;
			 END;
		END IF;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UserPermDashByCateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UserPermDashByCateProcedure`;
delimiter ;;
CREATE PROCEDURE `UserPermDashByCateProcedure`(IN `_iduser` int,IN `_command` varchar(255),IN `_catnametype` varchar(255),IN `_curent_url` VARCHAR(255),OUT `result` int)
sp:BEGIN
	set @_idrole = (SELECT idrole FROM `grants` WHERE to_iduser= _iduser limit 1);
	if @_idrole is NULL THEN
		BEGIN
			set result = 0;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
		if _command is NULL or _command='' THEN 
			SET _command='select';
		END IF;
		set @_idcommand = (SELECT idpercommand from perm_commands WHERE command = _command);
		if @_idcommand IS NULL THEN 
			BEGIN
			set result = 0;
			LEAVE sp;
			END;
		END IF;
		SET @_idcategory = (SELECT idcategory from categories WHERE pathroute = _curent_url);
		if @_idcategory is NULL THEN
			BEGIN
				set result = 0;
				LEAVE sp;
			END;
		ELSE
			 BEGIN
					if EXISTS (SELECT imp.idperm, imp.idrole, imp.iduserimp,perm.`name`, perm.description, perm.idpermcommand, perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= _iduser) as tbrole LEFT JOIN imp_perms as imp on imp.idrole = tbrole.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm WHERE perm.idpermcommand = @_idcommand AND perm.idcategory = @_idcategory) THEN
					set result = 1;
					ELSE
						set result = 0;
					end if;
			 END;
		END IF;
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UserPermission
-- ----------------------------
DROP PROCEDURE IF EXISTS `UserPermission`;
delimiter ;;
CREATE PROCEDURE `UserPermission`(IN `iduser` int, IN _idcategory INT, IN _command VARCHAR(255), OUT result bit)
sp:BEGIN
	set @_idrole = (SELECT idrole FROM `grants` WHERE to_iduser= iduser limit 1);
	if @_idrole is NULL THEN
		BEGIN
			set result = 0;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
		set @_idcommand = (SELECT idpercommand from perm_commands WHERE command = _command);
		if @_idcommand IS NULL THEN 
			BEGIN
			set result = 0;
			LEAVE sp;
			END;
		END IF;
		if EXISTS (SELECT tbl_perm.idcategory from (select pcom.idpercommand,pcom.command,perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= iduser) as tbl_role LEFT JOIN imp_perms as imp on imp.idrole = tbl_role.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm LEFT JOIN perm_commands as pcom on pcom.idpercommand = perm.idpermcommand) as tbl_perm WHERE tbl_perm.idcategory = _idcategory and tbl_perm.idpercommand = @_idcommand limit 1) THEN
		BEGIN
		set result = 1;
		END;
		ELSE SET result = 0;
		END IF;
		/*select rl.`name` as role, perm.`name`,pcom.idpercommand,pcom.command,cate.idcategory,cate.namecat from (SELECT idrole FROM `grants` WHERE to_iduser= iduser) as tbl_role LEFT JOIN imp_perms as imp on imp.idrole = tbl_role.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm LEFT JOIN perm_commands as pcom on pcom.idpercommand = perm.idpermcommand LEFT JOIN categories as cate on cate.idcategory = perm.idcatogory LEFT JOIN roles as rl on imp.idrole = rl.idrole;*/
		END;
	END if;
END
;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UserProductPermissionProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UserProductPermissionProcedure`;
delimiter ;;
CREATE PROCEDURE `UserProductPermissionProcedure`(IN `_iduser` int,IN `_command` varchar(255),`_idproduct` int, OUT result bit)
sp:BEGIN
	set @_idrole = (SELECT idrole FROM `grants` WHERE to_iduser= _iduser limit 1);
	if @_idrole is NULL THEN
		BEGIN
			set result = 0;
			LEAVE sp;
		END;
	 ELSE
		BEGIN
		set @_idcommand = (SELECT idpercommand from perm_commands WHERE command = _command);
		if @_idcommand IS NULL THEN 
			BEGIN
			set result = 0;
			LEAVE sp;
			END;
		END IF;
		if EXISTS (SELECT cateperm.idcategory from (select DISTINCT perm.idcategory from (SELECT idrole FROM `grants` WHERE to_iduser= _iduser) as tbl_role LEFT JOIN imp_perms as imp on imp.idrole = tbl_role.idrole LEFT JOIN permissions as perm on imp.idperm = perm.idperm LEFT JOIN perm_commands as pcom on pcom.idpercommand = perm.idpermcommand WHERE pcom.idpercommand = @_idcommand) as cateperm LEFT JOIN (SELECT idcategory FROM catehasproduct WHERE idproduct = _idproduct and checked > 0) as curidcate on cateperm.idcategory = curidcate.idcategory WHERE curidcate.idcategory is not NULL) THEN
		BEGIN
		set result = 1;
		END;
		ELSE SET result = 0;
		END IF;
		END;
	END if;
END
;
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
