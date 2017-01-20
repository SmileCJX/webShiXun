
DROP DATABASE IF EXISTS `Log_System`;
CREATE DATABASE `Log_System`;
USE `Log_System`;



DROP TABLE IF EXISTS `User_info`;
CREATE TABLE `User_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  `ask` varchar(30) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User_info
-- ----------------------------
INSERT INTO `User_info` VALUES ('1','admin', '123456','男','篮球','你的属相是什么','猪');
