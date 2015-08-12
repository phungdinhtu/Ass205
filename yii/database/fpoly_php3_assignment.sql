/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : fpoly_php3_assignment

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-06-15 22:06:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `record_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companies
-- ----------------------------

-- ----------------------------
-- Table structure for lines
-- ----------------------------
DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `record_status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lines
-- ----------------------------
INSERT INTO `lines` VALUES ('1', 'Hà Nội - Nam Định', 'Tuyến Hà Nội - Nam Định', '01:02:43', '13:02:50', '@web/uploads/line_1_1434278179.jpg', '0');
INSERT INTO `lines` VALUES ('2', 'Hà Nội - Lào Cai', 'Tuyến Hà Nội - Lào Cai', '03:05:00', '10:05:00', '@web/uploads/line_2_1434278171.jpg', '0');
INSERT INTO `lines` VALUES ('3', 'Hà Nội - Sơn La', 'Tuyến Hà Nội - Sơn La buổi chiều', '15:09:00', '00:00:00', '@web/uploads/line_3_1434278197.jpg', '0');
INSERT INTO `lines` VALUES ('4', 'Hà Nội - Điện Biên', 'Hà Nội - Điện Biên', '02:00:00', '23:00:00', '@web/uploads/line_4_1434278204.jpg', '0');
INSERT INTO `lines` VALUES ('5', 'Lai Châu - Thanh Hóa', 'Lai Châu - Thanh Hóa', '02:40:00', '20:10:00', '@web/uploads/line_5_1434278213.jpg', '0');
INSERT INTO `lines` VALUES ('14', 'Hà Nội - Hokkaido (Nhật Bản)', 'Hà Nội - Hokkaido (Nhật Bản)', '12:47:00', '12:47:00', '@web/uploads/sdfsd_14.jpeg', '1');
INSERT INTO `lines` VALUES ('15', 'Hà Nội - Quảng Bình', 'Hà Nội - Quảng Bình', '15:48:00', '22:00:00', '@web/uploads/line_15_1434278188.jpg', '0');
INSERT INTO `lines` VALUES ('16', 'thienth', 'thienth', '13:57:00', '23:00:00', '@web/uploads/line_16_1434278222.jpg', '0');
INSERT INTO `lines` VALUES ('17', 'fgfdgdgdf', 'dgffdgdfgdf', '19:09:00', '19:09:00', '@web/uploads/line_17.jpg', '0');
INSERT INTO `lines` VALUES ('18', 'drgdgdf', 'dfgfdgdfg', '19:10:00', '19:10:00', null, '0');
INSERT INTO `lines` VALUES ('19', 'drgdgdf', 'dfgfdgdfg', '19:10:00', '19:10:00', null, '0');
INSERT INTO `lines` VALUES ('20', 'drgdgdf', 'dfgfdgdfg', '19:10:00', '19:10:00', null, '0');
INSERT INTO `lines` VALUES ('21', 'drgdgdf', 'dfgfdgdfg', '19:10:00', '19:10:00', null, '0');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `prority` int(11) DEFAULT NULL,
  `record_status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Member', '1', '1');
INSERT INTO `roles` VALUES ('2', 'Driver', '5', '1');
INSERT INTO `roles` VALUES ('3', 'Business owner', '10', '1');
INSERT INTO `roles` VALUES ('4', 'Admin', '20', '1');

-- ----------------------------
-- Table structure for stations
-- ----------------------------
DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `line_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `record_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `line_id` (`line_id`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stations
-- ----------------------------
INSERT INTO `stations` VALUES ('1', '2', 'Thiện', 'thiệnth', null, '0');
INSERT INTO `stations` VALUES ('2', '1', 'Ga Phủ Lý', 'Ga Phủ Lý', null, '0');
INSERT INTO `stations` VALUES ('3', '2', 'Station 1', '', '@web/uploads/station_3_1434369945.jpg', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `record_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('12', 'thienth@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', null, null, '1');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `note` text,
  `birth_date` datetime DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('6', '12', 'Thiện', '', null, null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('12', '1');

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_type_id` int(255) DEFAULT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `record_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `line_id` (`line_id`),
  KEY `user_id` (`user_id`),
  KEY `vehicle_type_id` (`vehicle_type_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicles_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicles_ibfk_4` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_type
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_type`;
CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `record_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_type
-- ----------------------------
