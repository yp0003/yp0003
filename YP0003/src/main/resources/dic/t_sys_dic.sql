/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : 365itedu

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2014-11-19 18:07:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_sys_dic`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dic`;
CREATE TABLE `t_sys_dic` (
  `id` varchar(42) NOT NULL COMMENT 'id',
  `dic_type` varchar(42) default NULL COMMENT '字典类型',
  `dic_en` varchar(42) default NULL COMMENT '字典英文编码',
  `dic_cn` varchar(42) default NULL COMMENT '字典中文编码',
  `dic_note` varchar(80) default NULL COMMENT '字典说明',
  `dic_status` varchar(15) default NULL COMMENT '字典状态',
  `dic_code` varchar(42) default NULL COMMENT '字典编码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_dic
-- ----------------------------
INSERT INTO `t_sys_dic` VALUES ('10001', 'ORDER_STATUS', 'ORDER_STATUS_UNPAY', '未支付', '订单状态未支付', '1', '0');
INSERT INTO `t_sys_dic` VALUES ('10002', 'ORDER_STATUS', 'ORDER_STATUS_PAIED', '已支付', '订单状态已支付', '1', '1');
INSERT INTO `t_sys_dic` VALUES ('10003', 'ORDER_STATUS', 'ORDER_STATUS_CANCEL', '已取消', '订单状态已支付', '1', '2');
INSERT INTO `t_sys_dic` VALUES ('10004', 'MESSAGE_STATUS', 'MESSAGE_STATUS_UNREAD', '未读', '消息状态未读', '1', '0');
INSERT INTO `t_sys_dic` VALUES ('10005', 'MESSAGE_STATUS', 'MESSAGE_STATUS_READ', '已读', '消息状态已读', '1', '1');
INSERT INTO `t_sys_dic` VALUES ('10006', 'PAY_WAY', 'PAY_WAY_ONLINE_PAY', '在线支付', '支付方式在线支付', '1', '1');
