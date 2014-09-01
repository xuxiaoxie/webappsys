
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weixin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `weixin`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `User_id` varchar(30) DEFAULT NULL COMMENT '用户（拥有该账户的人）',
  `Public_Name` varchar(30) DEFAULT NULL COMMENT '公众号名称',
  `wechat_No` varchar(30) DEFAULT NULL COMMENT '微信号',
  `password` varchar(50) DEFAULT NULL COMMENT '微信密码',
  `Original_Id` varchar(30) DEFAULT NULL COMMENT '原始ID',
  `AppId` varchar(30) DEFAULT NULL COMMENT '开发者ID',
  `AppSecret` varchar(50) DEFAULT NULL COMMENT '开发者密码',
  `URL` varchar(200) DEFAULT NULL COMMENT '服务器配置URL',
  `Token` varchar(30) DEFAULT NULL COMMENT 'Token',
  `Account_type` varchar(2) DEFAULT NULL COMMENT '账户类型（1订阅号，2服务号，3认证服务号）',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `expire_date` date DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



/*Table structure for table `key_word` */

DROP TABLE IF EXISTS `key_word`;

CREATE TABLE `key_word` (
  `id` int(9) NOT NULL COMMENT '主键',
  `ACCOUNT_ID` int(9) DEFAULT NULL COMMENT '账户ID',
  `TYPE` varchar(2) DEFAULT NULL COMMENT '关键词类型（1全匹配，2模糊匹配）',
  `KEY_WORD` varchar(30) DEFAULT NULL COMMENT '关键词',
  `CREATED_DATE` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `key_word` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(9) DEFAULT NULL COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `parent_id` int(9) DEFAULT NULL COMMENT '父菜单ID',
  `type` varchar(2) DEFAULT NULL COMMENT '菜单类型1click,2url,父菜单可为空',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单点击时跳转的链接',
  `message` varchar(2000) DEFAULT NULL COMMENT '点击时返回的消息',
  `CREATED_DATE` date DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `ID` decimal(11,0) NOT NULL COMMENT '主键',
  `FROM` char(30) DEFAULT NULL COMMENT '发自于哪里',
  `TO` char(30) DEFAULT NULL COMMENT '发送给谁',
  `TYPE` char(2) DEFAULT NULL COMMENT '消息类型',
  `content` blob COMMENT '消息内容',
  `date` date DEFAULT NULL COMMENT '消息时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(30) DEFAULT NULL COMMENT '用户名',
  `pass_word` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`ID`,`user_name`,`pass_word`) values (1,'admin','admin');


