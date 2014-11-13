/*
Navicat MySQL Data Transfer

Source Server         : hzy
Source Server Version : 50148
Source Host           : hdm-112.hichina.com:3306
Source Database       : hdm1120872_db

Target Server Type    : MYSQL
Target Server Version : 50148
File Encoding         : 65001

Date: 2014-09-07 16:36:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for woquban_build
-- ----------------------------
DROP TABLE IF EXISTS `woquban_build`;
CREATE TABLE `woquban_build` (
  `build_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `building` varchar(60) DEFAULT NULL,
  `place_id` char(15) DEFAULT NULL,
  PRIMARY KEY (`build_id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_comment
-- ----------------------------
DROP TABLE IF EXISTS `woquban_comment`;
CREATE TABLE `woquban_comment` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `election_code` bigint(20) NOT NULL,
  `user_member` int(11) NOT NULL,
  `comment_level` int(2) DEFAULT NULL,
  `to_user_member` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_config
-- ----------------------------
DROP TABLE IF EXISTS `woquban_config`;
CREATE TABLE `woquban_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `website_name` text,
  `website_title` text,
  `website_url` text,
  `address` text,
  `agreement` text,
  `aboutus` text,
  `phone` text,
  `friendslink` text,
  `servicestips` text,
  `disclaimer` text,
  `postcode` text,
  `filing` text,
  PRIMARY KEY (`config_id`),
  KEY `config_id` (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_election
-- ----------------------------
DROP TABLE IF EXISTS `woquban_election`;
CREATE TABLE `woquban_election` (
  `election_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `task_code` int(11) unsigned NOT NULL DEFAULT '0',
  `election_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `election_content` text NOT NULL,
  `election_state` varchar(20) NOT NULL DEFAULT '1',
  `election_cash` int(15) DEFAULT NULL,
  `user_code` int(11) NOT NULL,
  PRIMARY KEY (`election_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=906 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_member
-- ----------------------------
DROP TABLE IF EXISTS `woquban_member`;
CREATE TABLE `woquban_member` (
  `user_code` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `nicheng` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `user_grade` char(1) DEFAULT '0',
  `photo` varchar(100) DEFAULT NULL,
  `myself_content` varchar(200) DEFAULT NULL,
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_status` int(11) NOT NULL DEFAULT '1',
  `ip_dress` varchar(50) DEFAULT NULL,
  `good_percent` int(2) DEFAULT '0',
  `reply_percent` int(2) DEFAULT '0',
  `confirm_photo` char(1) DEFAULT '0',
  `confirm_id_card` char(1) DEFAULT '0',
  `confirm_email` char(1) DEFAULT '0',
  `confirm_tel` char(1) DEFAULT '0',
  PRIMARY KEY (`user_code`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=1566 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_message
-- ----------------------------
DROP TABLE IF EXISTS `woquban_message`;
CREATE TABLE `woquban_message` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_title` varchar(40) DEFAULT NULL,
  `msg_cotent` varchar(300) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `to_user_no` int(11) DEFAULT NULL,
  `msg_type` char(1) DEFAULT NULL,
  `msg_date` date DEFAULT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=962 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_navigation
-- ----------------------------
DROP TABLE IF EXISTS `woquban_navigation`;
CREATE TABLE `woquban_navigation` (
  `navi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `navi_title` varchar(16) DEFAULT NULL,
  `navi_sts` char(1) DEFAULT '1',
  `navi_keyword` varchar(8) DEFAULT NULL,
  `process_date` date DEFAULT NULL,
  `process_user` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`navi_id`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_place
-- ----------------------------
DROP TABLE IF EXISTS `woquban_place`;
CREATE TABLE `woquban_place` (
  `place_code` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`place_code`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for woquban_task
-- ----------------------------
DROP TABLE IF EXISTS `woquban_task`;
CREATE TABLE `woquban_task` (
  `task_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `before_status` char(1) DEFAULT '0',
  `task_status` char(1) DEFAULT '1',
  `task_title` varchar(100) DEFAULT NULL,
  `task_tag` varchar(100) DEFAULT NULL,
  `task_desc` text,
  `task_file` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` int(10) DEFAULT '0',
  `sub_time` int(10) DEFAULT NULL,
  `end_time` int(10) DEFAULT '0',
  `build_code` int(11) DEFAULT '0',
  `other_place` varchar(100) DEFAULT NULL,
  `task_cash` int(15) DEFAULT NULL,
  `real_cash` int(15) DEFAULT NULL,
  `task_cash_coverage` int(11) DEFAULT NULL,
  `largess` varchar(50) DEFAULT NULL,
  `view_num` int(11) DEFAULT '0',
  `work_num` int(11) DEFAULT '0',
  `focus_num` int(11) DEFAULT '0',
  `recommend` int(11) DEFAULT '-1',
  PRIMARY KEY (`task_id`)
) ENGINE=MyISAM AUTO_INCREMENT=943 DEFAULT CHARSET=utf8;
