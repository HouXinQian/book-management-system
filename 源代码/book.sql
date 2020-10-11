/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2019-11-16 15:53:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL auto_increment,
  `bookname` varchar(255) character set utf8 NOT NULL,
  `author` varchar(255) character set utf8 NOT NULL,
  `price` float(50,0) NOT NULL,
  `fileName` varchar(255) character set utf8 NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('31', 'PHP', '周五', '50', 'PHP.txt');
INSERT INTO `book` VALUES ('32', 'Python', '赵六', '60', 'Python.txt');
INSERT INTO `book` VALUES ('34', 'HTML', '小明', '50', 'HTML.txt');
INSERT INTO `book` VALUES ('35', 'web', '小红', '50', 'Android.txt');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL auto_increment,
  `username` varchar(255) character set utf8 NOT NULL,
  `password` varchar(255) character set utf8 NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '4214', '111');
INSERT INTO `user` VALUES ('2', 'admin', '123');
INSERT INTO `user` VALUES ('3', 'aaaa', '111');
INSERT INTO `user` VALUES ('4', 'cccc', 'aaaa');
INSERT INTO `user` VALUES ('5', 'qqqq', 'qqqq');
INSERT INTO `user` VALUES ('6', 'qqqq', 'qqqq');
INSERT INTO `user` VALUES ('7', '切切切', 'asd');
INSERT INTO `user` VALUES ('8', '123', '123');
INSERT INTO `user` VALUES ('9', '111', '111');
INSERT INTO `user` VALUES ('10', '222', '222');
