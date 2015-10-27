<?php die();?>DROP TABLE IF EXISTS `bowei_account`
CREATE TABLE `bowei_account` (  `id` int(10) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `orderid` char(30) NOT NULL default '0',  `money` decimal(10,2) NOT NULL default '0.00',  `type` tinyint(3) unsigned NOT NULL default '0',  `custom` varchar(200) NOT NULL,  `payment` char(50) NOT NULL,  `paymenttype` tinyint(1) unsigned NOT NULL default '1',  `paymentno` char(100) NOT NULL,  `molds` char(30) NOT NULL,  `aid` mediumint(8) unsigned NOT NULL default '0',  `addtime` int(10) unsigned NOT NULL default '0',  `auser` char(30) NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_admin_group`
CREATE TABLE `bowei_admin_group` (  `gid` smallint(5) unsigned NOT NULL auto_increment,  `name` char(20) NOT NULL,  `audit` tinyint(1) unsigned NOT NULL default '0',  `oneself` tinyint(1) unsigned NOT NULL default '0',  `paction` text NOT NULL,  PRIMARY KEY  (`gid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_admin_per`
CREATE TABLE `bowei_admin_per` (  `pid` tinyint(5) unsigned NOT NULL auto_increment,  `action` char(50) NOT NULL,  `name` char(20) NOT NULL,  `up` tinyint(5) NOT NULL default '0',  `no` tinyint(1) unsigned NOT NULL default '0',  `orders` int(10) unsigned NOT NULL default '0',  `molds` char(30) NOT NULL,  PRIMARY KEY  (`pid`)) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_admin_user`
CREATE TABLE `bowei_admin_user` (  `auid` smallint(5) unsigned NOT NULL auto_increment,  `auser` char(20) NOT NULL,  `apass` char(32) NOT NULL,  `aname` char(30) NOT NULL,  `amail` char(100) NOT NULL,  `atel` char(100) NOT NULL,  `level` tinyint(1) unsigned NOT NULL default '0',  `gid` smallint(5) unsigned NOT NULL default '0',  `pclasstype` text NOT NULL,  PRIMARY KEY  (`auid`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_ads`
CREATE TABLE `bowei_ads` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `taid` smallint(5) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `name` char(100) NOT NULL,  `type` tinyint(1) unsigned NOT NULL default '0',  `adsw` smallint(5) unsigned NOT NULL default '0',  `adsh` smallint(5) unsigned NOT NULL default '0',  `adfile` char(200) NOT NULL,  `body` text NOT NULL,  `gourl` char(200) NOT NULL,  `target` char(8) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_adstype`
CREATE TABLE `bowei_adstype` (  `taid` smallint(5) NOT NULL auto_increment,  `name` char(100) NOT NULL,  `adsw` smallint(5) unsigned NOT NULL default '0',  `adsh` smallint(5) unsigned NOT NULL default '0',  PRIMARY KEY  (`taid`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_article`
CREATE TABLE `bowei_article` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `sid` smallint(5) unsigned NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `style` char(60) NOT NULL,  `trait` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `htmlfile` char(100) NOT NULL,  `htmlurl` char(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `hits` int(10) unsigned NOT NULL default '0',  `litpic` char(255) NOT NULL,  `orders` int(10) NOT NULL default '0',  `mrank` smallint(5) NOT NULL default '0',  `mgold` decimal(10,2) unsigned NOT NULL default '0.00',  `keywords` char(200) NOT NULL,  `description` char(255) NOT NULL,  `user` char(30) NOT NULL,  `usertype` tinyint(2) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `article` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_article_field`
CREATE TABLE `bowei_article_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `body` mediumtext NOT NULL,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_attribute`
CREATE TABLE `bowei_attribute` (  `sid` mediumint(8) unsigned NOT NULL auto_increment,  `tid` mediumint(8) unsigned NOT NULL,  `name` char(100) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `orders` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`sid`),  KEY `attribute` (`tid`,`isshow`),  KEY `attribute_orbye` (`orders`)) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_attribute_type`
CREATE TABLE `bowei_attribute_type` (  `tid` mediumint(8) unsigned NOT NULL auto_increment,  `name` char(100) NOT NULL,  `classtype` text NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `orders` int(10) NOT NULL default '0',  PRIMARY KEY  (`tid`)) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_classtype`
CREATE TABLE `bowei_classtype` (  `tid` smallint(5) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `pid` smallint(5) unsigned NOT NULL default '0',  `classname` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `litpic` char(200) NOT NULL,  `title` char(100) NOT NULL,  `keywords` char(255) NOT NULL,  `description` varchar(300) NOT NULL,  `isindex` tinyint(1) unsigned NOT NULL default '1',  `t_index` char(50) NOT NULL,  `t_list` char(50) NOT NULL,  `t_listimg` char(50) NOT NULL,  `t_listb` char(50) NOT NULL,  `t_content` char(50) NOT NULL,  `listnum` mediumint(8) unsigned NOT NULL default '0',  `htmldir` char(100) NOT NULL,  `htmlfile` char(100) NOT NULL,  `mrank` smallint(5) NOT NULL default '0',  `msubmit` smallint(5) NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `body` mediumtext NOT NULL,  `mshow` tinyint(1) unsigned NOT NULL default '1',  `imgw` smallint(5) unsigned NOT NULL default '0',  `imgh` smallint(5) unsigned NOT NULL default '0',  `unit` char(20) NOT NULL,  PRIMARY KEY  (`tid`)) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_comment`
CREATE TABLE `bowei_comment` (  `cid` mediumint(8) unsigned NOT NULL auto_increment,  `aid` mediumint(8) unsigned NOT NULL,  `molds` char(20) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '0',  `body` text NOT NULL,  `reply` text NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `retime` int(10) unsigned NOT NULL default '0',  `user` char(30) NOT NULL,  `ruser` char(30) NOT NULL,  PRIMARY KEY  (`cid`)) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_custom`
CREATE TABLE `bowei_custom` (  `id` smallint(8) unsigned NOT NULL auto_increment,  `name` char(200) NOT NULL,  `dir` char(100) NOT NULL,  `template` char(100) NOT NULL,  `file` char(200) NOT NULL,  `html` tinyint(1) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_fields`
CREATE TABLE `bowei_fields` (  `fid` mediumint(8) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `fieldsname` char(20) NOT NULL,  `fields` char(20) NOT NULL,  `fieldstype` char(20) NOT NULL,  `fieldslong` smallint(5) unsigned NOT NULL default '0',  `selects` text NOT NULL,  `fieldorder` int(10) NOT NULL default '0',  `issubmit` tinyint(1) unsigned NOT NULL default '1',  `lists` tinyint(1) unsigned NOT NULL default '0',  `fieldshow` tinyint(1) unsigned NOT NULL default '1',  `types` text NOT NULL,  `contingency` char(20) NOT NULL,  `imgw` smallint(6) NOT NULL default '0',  `imgh` smallint(6) NOT NULL default '0',  PRIMARY KEY  (`fid`)) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_funs`
CREATE TABLE `bowei_funs` (  `fid` smallint(5) unsigned NOT NULL auto_increment,  `funs` char(20) NOT NULL,  `fundb` char(255) NOT NULL,  `name` char(20) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `afiles` text NOT NULL,  `version` char(20) NOT NULL,  PRIMARY KEY  (`fid`)) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_goodscart`
CREATE TABLE `bowei_goodscart` (  `id` int(10) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `aid` mediumint(8) unsigned NOT NULL default '0',  `num` mediumint(8) unsigned NOT NULL default '1',  `attribute` text NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_labelcus`
CREATE TABLE `bowei_labelcus` (  `id` smallint(5) NOT NULL auto_increment,  `name` char(50) NOT NULL,  `body` text NOT NULL,  `type` tinyint(1) NOT NULL default '1',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_links`
CREATE TABLE `bowei_links` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `taid` smallint(5) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `name` char(100) NOT NULL,  `image` char(200) NOT NULL,  `gourl` char(200) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_linkstype`
CREATE TABLE `bowei_linkstype` (  `taid` smallint(5) NOT NULL auto_increment,  `name` char(100) NOT NULL,  PRIMARY KEY  (`taid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_member`
CREATE TABLE `bowei_member` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `user` char(20) NOT NULL,  `pass` char(32) NOT NULL,  `email` char(100) NOT NULL,  `gid` smallint(5) NOT NULL default '1',  `money` decimal(10,2) NOT NULL default '0.00',  `regtime` int(10) unsigned NOT NULL default '0',  `token` char(35) NOT NULL,  `tokentime` int(11) NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_member_field`
CREATE TABLE `bowei_member_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_member_file`
CREATE TABLE `bowei_member_file` (  `id` int(8) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `ip` char(30) NOT NULL default '0',  `url` char(255) NOT NULL,  `size` int(11) unsigned NOT NULL default '0',  `fields` char(20) NOT NULL,  `hand` int(11) unsigned NOT NULL default '0',  `aid` mediumint(8) unsigned NOT NULL default '0',  `molds` char(20) NOT NULL,  PRIMARY KEY  (`id`),  UNIQUE KEY `user` (`uid`,`url`,`size`,`fields`,`hand`)) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_member_group`
CREATE TABLE `bowei_member_group` (  `gid` smallint(5) unsigned NOT NULL auto_increment,  `sys` smallint(5) unsigned NOT NULL default '0',  `name` char(20) NOT NULL,  `weight` int(11) NOT NULL default '0',  `audit` tinyint(1) unsigned NOT NULL default '0',  `submit` tinyint(1) unsigned NOT NULL default '0',  `filetype` char(255) NOT NULL,  `filesize` int(10) unsigned NOT NULL default '0',  `fileallsize` int(10) unsigned NOT NULL default '0',  `discount_type` tinyint(1) unsigned NOT NULL default '0',  `discount` decimal(10,2) unsigned NOT NULL default '0.00',  PRIMARY KEY  (`gid`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_message`
CREATE TABLE `bowei_message` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `fmolds` char(20) NOT NULL,  `faid` mediumint(8) NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `retime` int(10) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `user` char(30) NOT NULL,  `body` text NOT NULL,  `reply` text NOT NULL,  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `article` (`isshow`,`tid`)) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_message_field`
CREATE TABLE `bowei_message_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `u_xueli` varchar(50) default NULL,  `u_nianlin` varchar(50) default NULL,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_molds`
CREATE TABLE `bowei_molds` (  `mid` smallint(5) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `molddb` char(255) NOT NULL,  `moldname` char(20) NOT NULL,  `orders` int(10) NOT NULL default '0',  `t_index` char(50) NOT NULL,  `t_list` char(50) NOT NULL,  `t_listimg` char(50) NOT NULL,  `t_listb` char(50) NOT NULL,  `t_content` char(50) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `version` char(20) NOT NULL,  `sys` tinyint(1) unsigned NOT NULL default '0',  `config` text NOT NULL,  PRIMARY KEY  (`mid`)) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_order`
CREATE TABLE `bowei_order` (  `id` int(10) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `orderid` char(25) NOT NULL,  `favorable` decimal(10,2) unsigned NOT NULL default '0.00',  `state` tinyint(1) unsigned NOT NULL default '0',  `addtime` int(10) unsigned NOT NULL default '0',  `payment` char(50) NOT NULL,  `paymentno` char(100) NOT NULL,  `paytime` int(10) unsigned NOT NULL default '0',  `actualpay` decimal(10,2) unsigned NOT NULL default '0.00',  `info` text NOT NULL,  `unote` text NOT NULL,  `rnote` text NOT NULL,  `anote` text NOT NULL,  `goods` text NOT NULL,  `logistics` char(100) NOT NULL,  `virtual` tinyint(1) unsigned NOT NULL default '0',  `sendgoods` text NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_payment`
CREATE TABLE `bowei_payment` (  `id` smallint(5) unsigned NOT NULL auto_increment,  `pay` char(30) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '0',  `name` char(100) NOT NULL,  `body` text NOT NULL,  `key` text NOT NULL,  `keyv` text NOT NULL,  `orders` int(11) NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_person`
CREATE TABLE `bowei_person` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `sid` smallint(5) unsigned NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `style` char(60) NOT NULL,  `trait` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `htmlfile` char(100) NOT NULL,  `htmlurl` char(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `hits` int(10) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `mrank` smallint(5) NOT NULL default '0',  `mgold` int(10) unsigned NOT NULL default '0',  `keywords` char(200) NOT NULL,  `description` char(255) NOT NULL,  `user` char(30) NOT NULL,  `usertype` tinyint(2) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `person` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_person_field`
CREATE TABLE `bowei_person_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `gangwei` varchar(100) default NULL,  `xueli` char(30) default NULL,  `nianlin` varchar(50) default NULL,  `xingbie` char(30) default NULL,  `jingyan` char(30) default NULL,  `jieshao` text,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_product`
CREATE TABLE `bowei_product` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `sid` smallint(5) unsigned NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `style` char(60) NOT NULL,  `trait` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `htmlfile` char(100) NOT NULL,  `htmlurl` char(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `record` int(10) unsigned NOT NULL default '0',  `hits` int(10) unsigned NOT NULL default '0',  `litpic` char(255) NOT NULL,  `photo` text NOT NULL,  `orders` int(10) NOT NULL default '0',  `price` decimal(10,2) unsigned NOT NULL default '0.00',  `virtual` tinyint(1) unsigned NOT NULL default '0',  `logistics` text NOT NULL,  `mrank` smallint(5) NOT NULL default '0',  `mgold` decimal(10,2) unsigned NOT NULL default '0.00',  `keywords` char(200) NOT NULL,  `description` char(255) NOT NULL,  `user` char(30) NOT NULL,  `usertype` tinyint(2) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `product` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_product_attribute`
CREATE TABLE `bowei_product_attribute` (  `aid` mediumint(8) unsigned NOT NULL,  `tid` mediumint(8) unsigned NOT NULL,  `sid` mediumint(8) unsigned NOT NULL,  `price` decimal(10,2) NOT NULL default '0.00',  KEY `product_attribute` (`aid`,`tid`,`sid`),  KEY `aid` (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_product_discount`
CREATE TABLE `bowei_product_discount` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `mgid` smallint(5) unsigned NOT NULL default '0',  `type` tinyint(1) unsigned NOT NULL default '0',  `discount` decimal(10,2) unsigned NOT NULL default '0.00',  KEY `aid` (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_product_field`
CREATE TABLE `bowei_product_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `body` mediumtext NOT NULL,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_product_virtual`
CREATE TABLE `bowei_product_virtual` (  `id` int(8) unsigned NOT NULL auto_increment,  `aid` mediumint(8) unsigned NOT NULL default '0',  `number` char(100) NOT NULL,  `virtual` varchar(500) NOT NULL,  `state` tinyint(1) unsigned NOT NULL default '0',  `oid` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_sales_record`
CREATE TABLE `bowei_sales_record` (  `id` int(10) unsigned NOT NULL auto_increment,  `aid` mediumint(8) unsigned NOT NULL default '0',  `oid` int(10) unsigned NOT NULL default '0',  `user` char(20) NOT NULL,  `num` mediumint(6) unsigned NOT NULL default '0',  `stime` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`,`aid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_special`
CREATE TABLE `bowei_special` (  `sid` smallint(5) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `name` char(50) NOT NULL,  `litpic` char(200) NOT NULL,  `title` char(100) NOT NULL,  `keywords` char(255) NOT NULL,  `description` varchar(300) NOT NULL,  `gourl` char(255) NOT NULL,  `isindex` tinyint(1) unsigned NOT NULL default '1',  `t_index` char(50) NOT NULL,  `t_list` char(50) NOT NULL,  `t_listb` char(50) NOT NULL,  `listnum` mediumint(8) unsigned NOT NULL default '0',  `htmldir` char(100) NOT NULL,  `htmlfile` char(100) NOT NULL,  `orders` int(10) NOT NULL default '0',  `body` mediumtext NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  PRIMARY KEY  (`sid`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_sysconfig`
CREATE TABLE `bowei_sysconfig` (  `name` char(35) NOT NULL,  `sets` varchar(500) NOT NULL,  UNIQUE KEY `sysconfig` (`name`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_traits`
CREATE TABLE `bowei_traits` (  `id` smallint(5) unsigned NOT NULL auto_increment,  `name` char(50) NOT NULL,  `molds` char(20) NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `bowei_update`
CREATE TABLE `bowei_update` (  `id` int(11) NOT NULL auto_increment,  `version` char(10) NOT NULL,  `newupdate` char(15) NOT NULL,  `uptime` int(10) unsigned NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
INSERT INTO `bowei_admin_group` VALUES('1','录入员','0','0',',a_html,a_article_add,a_article_edit,a_product,a_product_add,a_product_edit,a_product_del,a_product_audit,a_message,a_message_edit,a_message_del,a_message_audit,a_article_index,a_classtypes_index,a_fields_info,a_adminuser_edituser,uploads,a_label,a_sys_ecache,a_product_index,a_goods_attribute_ajax,a_channel,channel_person_index,')
INSERT INTO `bowei_admin_per` VALUES('1','a_article','管理','0','0','20','article')
INSERT INTO `bowei_admin_per` VALUES('2','a_classtypes','栏目管理','0','0','96','')
INSERT INTO `bowei_admin_per` VALUES('3','a_fields','自定义字段管理','37','0','29','')
INSERT INTO `bowei_admin_per` VALUES('4','a_article_index','列表','1','1','0','')
INSERT INTO `bowei_admin_per` VALUES('5','a_article_add','添加','1','0','0','')
INSERT INTO `bowei_admin_per` VALUES('6','a_article_edit','编辑','1','0','0','')
INSERT INTO `bowei_admin_per` VALUES('7','a_article_del','删除','1','0','0','')
INSERT INTO `bowei_admin_per` VALUES('8','a_article_audit','审核','1','0','0','')
INSERT INTO `bowei_admin_per` VALUES('9','a_classtypes_index','栏目列表','2','1','0','')
INSERT INTO `bowei_admin_per` VALUES('10','a_classtypes_add','栏目添加','2','0','0','')
INSERT INTO `bowei_admin_per` VALUES('11','a_classtypes_edit','栏目编辑','2','0','0','')
INSERT INTO `bowei_admin_per` VALUES('12','a_classtypes_del','栏目删除','2','0','0','')
INSERT INTO `bowei_admin_per` VALUES('13','a_molds','频道设置','37','0','30','')
INSERT INTO `bowei_admin_per` VALUES('17','a_adminuser','管理员管理','36','0','29','')
INSERT INTO `bowei_admin_per` VALUES('22','a_sys','系统设置','36','0','30','')
INSERT INTO `bowei_admin_per` VALUES('24','a_fields_info','字段列表','0','1','0','')
INSERT INTO `bowei_admin_per` VALUES('27','a_adminuser_edituser','修改资料','0','1','0','')
INSERT INTO `bowei_admin_per` VALUES('28','uploads','上传','0','1','0','')
INSERT INTO `bowei_admin_per` VALUES('29','a_traits','推荐属性管理','37','0','28','')
INSERT INTO `bowei_admin_per` VALUES('34','a_dbbak','数据备份','36','0','27','')
INSERT INTO `bowei_admin_per` VALUES('35','a_label','模板调用生成器','0','1','0','')
INSERT INTO `bowei_admin_per` VALUES('36','','系统','0','0','99','')
INSERT INTO `bowei_admin_per` VALUES('37','','频道管理','0','0','97','')
INSERT INTO `bowei_admin_per` VALUES('38','a_sys_ecache','更新缓存','0','1','0','')
INSERT INTO `bowei_admin_per` VALUES('40','a_labelcus','自定义模板标签','36','0','28','')
INSERT INTO `bowei_admin_per` VALUES('41','a_funs','插件设置','42','0','30','')
INSERT INTO `bowei_admin_per` VALUES('42','','其他管理','0','0','98','')
INSERT INTO `bowei_admin_per` VALUES('43','a_files','清理附件','36','0','0','')
INSERT INTO `bowei_admin_per` VALUES('66','a_message','管理','0','0','0','message')
INSERT INTO `bowei_admin_per` VALUES('67','a_message_edit','编辑','66','0','0','')
INSERT INTO `bowei_admin_per` VALUES('68','a_message_del','删除','66','0','0','')
INSERT INTO `bowei_admin_per` VALUES('69','a_message_audit','审核','66','0','0','')
INSERT INTO `bowei_admin_per` VALUES('71','a_comment','评论管理','42','0','0','')
INSERT INTO `bowei_admin_per` VALUES('72','a_links','友情链接管理','42','0','0','')
INSERT INTO `bowei_admin_per` VALUES('73','a_member','会员管理','42','0','0','')
INSERT INTO `bowei_admin_per` VALUES('74','a_special','专题管理','42','0','0','')
INSERT INTO `bowei_admin_per` VALUES('75','a_update','在线升级','36','0','0','')
INSERT INTO `bowei_admin_per` VALUES('76','a_html','静态生成','36','0','0','')
INSERT INTO `bowei_admin_per` VALUES('77','a_product','管理','0','0','20','product')
INSERT INTO `bowei_admin_per` VALUES('78','a_product_index','列表','77','1','0','')
INSERT INTO `bowei_admin_per` VALUES('79','a_product_add','添加','77','0','0','')
INSERT INTO `bowei_admin_per` VALUES('80','a_product_edit','编辑','77','0','0','')
INSERT INTO `bowei_admin_per` VALUES('81','a_product_del','删除','77','0','0','')
INSERT INTO `bowei_admin_per` VALUES('82','a_product_audit','审核','77','0','0','')
INSERT INTO `bowei_admin_per` VALUES('84','a_ads','广告管理','42','0','0','')
INSERT INTO `bowei_admin_per` VALUES('85','a_pay','支付系统','42','0','0','')
INSERT INTO `bowei_admin_per` VALUES('86','a_goods','购物系统','42','0','0','')
INSERT INTO `bowei_admin_per` VALUES('87','a_goods_attribute_ajax','规格属性','0','1','0','')
INSERT INTO `bowei_admin_per` VALUES('104','a_channel','自定义频道','0','1','0','')
INSERT INTO `bowei_admin_per` VALUES('123','channel_person_index','列表','118','1','0','')
INSERT INTO `bowei_admin_per` VALUES('122','channel_person_audit','审核','118','0','0','')
INSERT INTO `bowei_admin_per` VALUES('121','channel_person_del','删除','118','0','0','')
INSERT INTO `bowei_admin_per` VALUES('120','channel_person_edit','编辑','118','0','0','')
INSERT INTO `bowei_admin_per` VALUES('119','channel_person_add','添加','118','0','0','')
INSERT INTO `bowei_admin_per` VALUES('118','channel_person','管理','0','0','0','person')
INSERT INTO `bowei_admin_per` VALUES('117','a_template','模板管理','36','0','28','')
INSERT INTO `bowei_admin_per` VALUES('136','a_product_virtual','虚拟货物','77','0','0','')
INSERT INTO `bowei_admin_user` VALUES('1','admin','86f3059b228c8acf99e69734b6bb32cc','真实姓名','邮箱','电话','1','1','')
INSERT INTO `bowei_ads` VALUES('1','1','0','banner1','1','980','300','skin/images/banner.jpg','<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>','#','self','1')
INSERT INTO `bowei_ads` VALUES('2','1','0','banner2','1','980','300','skin/images/banner.jpg','<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>','#','self','1')
INSERT INTO `bowei_ads` VALUES('3','1','0','banner3','1','980','300','skin/images/banner.jpg','<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>','#','self','1')
INSERT INTO `bowei_ads` VALUES('6','2','0','自定义广告','5','0','0','','','','blank','1')
INSERT INTO `bowei_adstype` VALUES('1','头部通栏banner','980','300')
INSERT INTO `bowei_adstype` VALUES('2','自定义代码示例','0','0')
INSERT INTO `bowei_article` VALUES('55','27','0','1','浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所','','','','','','1385188620','2','/uploads/2013/11/231438366175.png','0','0','0.00','','浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所','admin','0')
INSERT INTO `bowei_article` VALUES('56','27','0','1','浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所','','','','','','1385188800','0','/uploads/2013/11/231440376997.png','0','0','0.00','','浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所','admin','0')
INSERT INTO `bowei_article` VALUES('54','27','0','1','付款方式付款方式付款方式','','','','','','1385187000','0','/uploads/2013/11/231411055727.jpg','0','0','0.00','','付款方式付款方式付款方式付款方式付款方式付款方式付款方式付款方式付款方式付款方式付款方式付款方式付款方式付款方式','admin','0')
INSERT INTO `bowei_article_field` VALUES('54','<span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式<span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span><span style=\"white-space:normal;\">付款方式</span></span>')
INSERT INTO `bowei_article_field` VALUES('55','浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所')
INSERT INTO `bowei_article_field` VALUES('56','浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所浅水湾休闲会所')
INSERT INTO `bowei_attribute` VALUES('4','2','红色','1','0')
INSERT INTO `bowei_attribute` VALUES('5','2','蓝色','1','0')
INSERT INTO `bowei_attribute` VALUES('6','3','S','1','0')
INSERT INTO `bowei_attribute` VALUES('7','3','M','1','0')
INSERT INTO `bowei_attribute` VALUES('8','3','L','1','0')
INSERT INTO `bowei_attribute_type` VALUES('2','颜色','|18|','1','0')
INSERT INTO `bowei_attribute_type` VALUES('3','尺码','|18|','1','0')
INSERT INTO `bowei_classtype` VALUES('1','article','0','品牌文化','','/index/daohang/css/11.jpg','品牌文化','','品牌文化','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','关于我们...内容建设中...','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('2','article','0','新闻中心','','','新闻中心','','','1','list_index.html','list_xinwen.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('3','product','0','产品展示','','','产品展示','','','2','list_index.html','list.html','list_image.html','list_body.html','product.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('4','article','0','美丽分享','','','美丽分享','','','2','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('23','message','22','在线应聘','','','在线应聘','','','1','person_message.html','person_message.html','person_message.html','person_message.html','person_message.html','20','','','0','1','0','','0','0','0','')
INSERT INTO `bowei_classtype` VALUES('6','article','0','加盟合作','','','加盟合作','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','营销网络...内容建设中...','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('7','article','0','服务支持','','','服务支持','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','联系我们...内容建设中...','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('8','article','0','加盟咨询','','','加盟咨询','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','1','0','','1','200','200','')
INSERT INTO `bowei_classtype` VALUES('9','article','1','品牌简介','','/index/daohang/css/11.jpg','品牌简介','','品牌简介品牌简介品牌简介品牌简介品牌简介','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','公司介绍，内容完善中...','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('10','article','1','品牌价值','','/index/daohang/css/11.jpg','品牌价值','','品牌价值品牌价值品牌价值品牌价值品牌价值','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('11','message','0','在线留言','','','在线留言','','','1','message.html','message.html','message.html','message.html','message.html','10','','','0','1','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('28','article','2','行业资讯','','','行业资讯','','','1','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('27','article','2','公司动态','','','公司动态','','','1','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('22','article','0','联系我们','','','联系我们','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','<br />\r\n<br />\r\n广告合作<br />\r\n有关媒体广告合作机会，请与宝洁公司大中华区媒介部联系。<br />\r\n电子邮件：wong.su@pg.com,Jiang.xi@pg.com<br />\r\n新闻采访<br />\r\n尊敬的新闻媒体朋友：<br />\r\n感谢您对宝洁公司的支持和厚爱。<br />\r\n如果涉及新闻采访，请点击登陆宝洁媒体沙龙<br />\r\n如果涉及政府部门查询（包括：卫生厅/局、防疫站、疾病控制中心、质量监督所、纠察<br />\r\n大队等），请联系专业法规部：<br />\r\n电话：020-85183356<br />\r\n如果涉及法院、律师起诉，请联系法律部：<br />\r\n电话：020-85186688<br />\r\n产品咨询<br />\r\n所有有关产品的咨询或投诉请致函公司消费者服务部。<br />\r\n地址：中国广州市天河区林和西路161号中泰国际广场B塔楼30层宝洁（中国）有限公司<br />\r\n消费者服务部<br />\r\n邮编：510620<br />\r\n<br />\r\n<br />\r\n有关以下产品的咨询或投诉请拨打以下免费热线电话：<br />\r\n舒肤佳/卡玫尔：800-830-2808，400-830-2808<br />\r\n护舒宝： 800-830-3698, 400-830-7698<br />\r\n佳洁士： 800-830-6880，400-830-7880<br />\r\n帮宝适： 800-830-3698 / 宝宝乐园（帮宝适）： 400-830-3698<br />\r\nSK-II 俱乐部： 800-830-5562<br />\r\n汰渍 / 碧浪： 800-830-3668，400-830-9668<br />\r\n洗发护发产品： 800-830-3618，400-830-5618<br />\r\n玉兰油： 800-830-3000 / OLAY 纯美沙龙：400-670-0067<br />\r\n威娜： 400-886-0168<br />\r\n海肌源： 800-830-2831，400-830-2831<br />\r\nSKII： 800-830-3365 ，400-830-2365<br />\r\nOlay/Olay沐浴系列：800-830-3000，400-830-3000<br />\r\n博朗/欧乐-B： 800-820-1357，400-820-1357<br />\r\n吉列： 400-882-1888<br />\r\n金霸王： 400-885-0883<br />\r\n生活家会员热线：400-886-4566<br />\r\n品牌保护（打假防伪）：400-884-2808<br />','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('24','article','1','企业荣誉','','','企业荣誉','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('25','article','1','精彩活动','','','精彩活动','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('26','article','1','团队展示','','','团队展示','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('29','article','2','店家风采','','/index/daohang/css/11.jpg','店家风采','','店家风采店家风采店家风采店家风采店家风采','1','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('30','article','4','产品研发','','','产品研发','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('31','article','4','美容科技','','','美容科技','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('32','article','6','加盟展示','','','加盟展示','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('33','article','6','加盟等级','','','加盟等级','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('34','article','6','加盟','','','加盟','','','1','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('35','article','7','项目优势','','','项目优势','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('36','article','7','团队介绍','','','团队介绍','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('37','article','7','在线教育','','','在线教育','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('38','article','7','在线售后','','','在线售后','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('39','article','7','售后支持','','','售后支持','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('40','article','8','加盟政策','','','加盟政策','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('41','article','8','加盟申请','','','加盟申请','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('42','article','8','加盟解答','','','加盟解答','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('43','article','8','加盟解答','','','加盟解答','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('44','article','22','联系我们','','','联系我们','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('45','article','22','在线留言','','','在线留言','','','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('46','person','22','企业招聘','','','企业招聘','','','3','list_index.html','list.html','list_image.html','list_body.html','content.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('47','product','3','男生产品','','','男生产品','','','2','list_index.html','list.html','list_image.html','list_body.html','product.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_classtype` VALUES('48','article','0','招商单页','','','招商单页','','','3','list_index.html','list.html','list_image.html','list_body_zhaoshang.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `bowei_comment` VALUES('54','3','product','0','asdf','','1340949850','0','游客','')
INSERT INTO `bowei_comment` VALUES('53','1','product','0','asdfasdf','','1340771473','0','游客','')
INSERT INTO `bowei_comment` VALUES('55','3','article','0','fhjdfghdfh','','1352975201','0','游客','')
INSERT INTO `bowei_comment` VALUES('58','47','article','1','1111111111','asdf','1353412302','1353412308','1','admin')
INSERT INTO `bowei_comment` VALUES('57','50','article','0','asdfasdfasdf','asdf','1353411949','1353412281','1','admin')
INSERT INTO `bowei_custom` VALUES('2','测试','aa','index.html','123','0')
INSERT INTO `bowei_fields` VALUES('14','person','招聘岗位','gangwei','varchar','100','','0','1','1','1','|22|23|44|45|46|','','0','0')
INSERT INTO `bowei_fields` VALUES('15','person','学历要求','xueli','select','0','不限=1,小学及以上=2,初中及以上=3,高中(中专)及以上=4,大专及以上=5,本科及以上=6,硕士及以上=7,博士及以上=8','0','1','1','1','|22|23|44|45|46|','','0','0')
INSERT INTO `bowei_fields` VALUES('16','person','年龄要求','nianlin','varchar','50','','0','1','1','1','|22|23|44|45|46|','','0','0')
INSERT INTO `bowei_fields` VALUES('17','person','性别要求','xingbie','select','0','不限=不限,男=男,女=女','0','1','1','1','|22|23|44|45|46|','','0','0')
INSERT INTO `bowei_fields` VALUES('18','person','工作经验','jingyan','select','0','不限=1,一年以上=2,二年以上=3,三年以上=4,五年以上=5,十年以上=6','0','1','1','1','|22|23|44|45|46|','','0','0')
INSERT INTO `bowei_fields` VALUES('19','person','招聘介绍','jieshao','text','0','','0','1','0','1','|22|23|44|45|46|','','670','350')
INSERT INTO `bowei_fields` VALUES('24','message','学历','u_xueli','varchar','50','','0','1','0','1','|23|','','0','0')
INSERT INTO `bowei_fields` VALUES('25','message','年龄','u_nianlin','varchar','50','','0','1','0','1','|23|','','0','0')
INSERT INTO `bowei_funs` VALUES('31','ads','ads,adstype','广告','1','','1.0')
INSERT INTO `bowei_funs` VALUES('32','comment','comment','评论','1','','1.0')
INSERT INTO `bowei_funs` VALUES('33','links','links,linkstype','友情链接','1','','1.0')
INSERT INTO `bowei_funs` VALUES('34','member','member,member_field,member_group,member_file','会员','1','','1.0')
INSERT INTO `bowei_funs` VALUES('35','special','special','专题','1','','1.0')
INSERT INTO `bowei_funs` VALUES('37','pay','account,order,payment','支付系统','1','','1.0')
INSERT INTO `bowei_funs` VALUES('38','goods','product_attribute,attribute,attribute_type','购物系统','1','','1.0')
INSERT INTO `bowei_links` VALUES('1','1','0','DOYO建站','','http://wdoyo.com','1')
INSERT INTO `bowei_links` VALUES('2','1','0','新浪','','http://www.sina.com.cn','1')
INSERT INTO `bowei_linkstype` VALUES('1','门户导航')
INSERT INTO `bowei_member_file` VALUES('73','13','','uploads/2012/12/131508249443.jpg','16247','sdfg','0','16','message')
INSERT INTO `bowei_member_file` VALUES('57','0','192.168.1.8','uploads/2012/12/061735275121.jpg','13824','sdfg','1735256009','0','')
INSERT INTO `bowei_member_file` VALUES('55','0','192.168.1.8','uploads/2012/12/041558051712.jpg','13824','sdfg','0','13','message')
INSERT INTO `bowei_member_file` VALUES('52','0','192.168.1.8','uploads/2012/12/041553486594.jpg','13824','sdfg','0','12','message')
INSERT INTO `bowei_member_file` VALUES('51','0','192.168.1.8','uploads/2012/12/031244352468.jpg','13824','asdf','0','11','message')
INSERT INTO `bowei_member_group` VALUES('1','1','游客','0','0','0','jpg,gif,jpeg,png','0','0','0','0.00')
INSERT INTO `bowei_member_group` VALUES('2','1','普通会员','1','0','1','jpg,gif,jpeg,png','200','5000','0','0.00')
INSERT INTO `bowei_message` VALUES('1','11','','0','1','asdfasdf','1339824282','0','0','sydna','asdfasdf','')
INSERT INTO `bowei_message` VALUES('2','11','','0','1','fasdfasdfasdf','1339917303','1339917300','0','sydna','saasdfasd','asdfasdf')
INSERT INTO `bowei_message` VALUES('3','11','','0','1','asdf','1340177705','0','0','sydna','asdfasdf','')
INSERT INTO `bowei_molds` VALUES('1','article','article','文章','0','list_index.html','list.html','list_image.html','list_body.html','article.html','1','1.0','1','')
INSERT INTO `bowei_molds` VALUES('6','message','message,message_field','表单(留言)','0','message.html','message.html','message.html','message.html','message.html','1','1.0','1','N;')
INSERT INTO `bowei_molds` VALUES('2','product','product','商品','0','list_index.html','list.html','list_image.html','list_body.html','product.html','1','1.0','1','a:2:{s:7:\"photo_w\";a:3:{i:0;s:15:\"图集缩略宽\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略宽，0表示继承系统设置\";}s:7:\"photo_h\";a:3:{i:0;s:15:\"图集缩略高\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略高，0表示继承系统设置\";}}')
INSERT INTO `bowei_molds` VALUES('18','person','','人才招聘','0','list_index.html','list.html','list_image.html','list_body.html','content.html','1','','0','N;')
INSERT INTO `bowei_payment` VALUES('3','alipay','0','支付宝','国内最大的支付平台，支持多家银行在线支付。<a href=\"https://b.alipay.com\" target=\"_blank\">需要签约支付宝商家服务，点此进入</a>，强烈建议使用“即时到帐”接口，若无法申请“即时到帐”接口，可选择申请财付通“即时到帐”接口，相比支付宝容易审核。','a:4:{s:7:\"service\";s:12:\"接口类型\";s:4:\"user\";s:21:\"签约支付宝账号\";s:3:\"pid\";s:18:\"合作者身份PID\";s:3:\"key\";s:18:\"安全校验码Key\";}','a:4:{s:7:\"service\";s:1:\"1\";s:4:\"user\";s:0:\"\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}','99')
INSERT INTO `bowei_payment` VALUES('4','tenpay','0','财付通','腾讯旗下支付平台，支持多家银行在线支付。<a href=\"https://www.tenpay.com/v2/mch/mch_intro.shtml\" target=\"_blank\">签约财付通商家服务，点此进入</a>，强烈建议使用“即时到帐”接口。','a:3:{s:7:\"service\";s:12:\"接口类型\";s:3:\"pid\";s:9:\"商户号\";s:3:\"key\";s:6:\"密钥\";}','a:3:{s:7:\"service\";s:1:\"1\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}','98')
INSERT INTO `bowei_payment` VALUES('2','cashbalance','1','余额支付','使用会员账户余额支付。','','N;','1')
INSERT INTO `bowei_payment` VALUES('1','offline','1','线下付款','线下收款，收款后需手工在后台修改订单状态。','','N;','0')
INSERT INTO `bowei_person` VALUES('1','22','0','1','招聘网站前台美工三名','','','','','','1354510740','36','0','0','0','','','admin','0')
INSERT INTO `bowei_person_field` VALUES('1','网站美工','1','18岁以上','不限','2','<p>因发展需要，现急聘网站前台美工三名，要求如下：</p><p>1、精通至少一款图片设计软件<br />2、精通HTML、js、flash制作设计。<br />3、有良好的色彩搭配理念，能够准确把握用户、客户需求。<br />4、熟悉团队合作流程、有较强的解决问题能力。</p>')
INSERT INTO `bowei_product` VALUES('21','47','0','1','浅水湾休闲会所','','','','','','1385182500','0','0','/uploads/2013/11/231255226918.png','','0','0.00','0','0','0','0.00','','','admin','0')
INSERT INTO `bowei_product` VALUES('22','47','0','1','浅水湾休闲会所','','','','','','1385182500','0','0','/uploads/2013/11/231255226918.png','','0','0.00','0','0','0','0.00','','','admin','0')
INSERT INTO `bowei_product` VALUES('23','47','0','1','浅水湾休闲会所','','','','','','1385182500','0','0','/uploads/2013/11/231255226918.png','','0','0.00','0','0','0','0.00','','','admin','0')
INSERT INTO `bowei_product` VALUES('24','47','0','1','浅水湾休闲会所','','','','','','1385182500','0','1','/uploads/2013/11/231255226918.png','','0','0.00','0','0','0','0.00','','','admin','0')
INSERT INTO `bowei_product` VALUES('20','47','0','1','细纹皱纹显现细纹皱纹显现','','','','','','1385182320','0','29','/uploads/2013/11/231253346491.png','/uploads/2013/11/231348461238.png|,|细纹皱纹','0','100.00','0','0','0','0.00','','细纹皱纹显现细纹皱纹显现细纹皱纹显现','admin','0')
INSERT INTO `bowei_product_attribute` VALUES('16','3','6','0.00')
INSERT INTO `bowei_product_attribute` VALUES('16','3','7','0.00')
INSERT INTO `bowei_product_attribute` VALUES('16','3','8','0.00')
INSERT INTO `bowei_product_attribute` VALUES('18','3','8','0.00')
INSERT INTO `bowei_product_attribute` VALUES('18','3','7','0.00')
INSERT INTO `bowei_product_attribute` VALUES('18','3','6','0.00')
INSERT INTO `bowei_product_attribute` VALUES('16','2','4','0.00')
INSERT INTO `bowei_product_attribute` VALUES('16','2','5','0.00')
INSERT INTO `bowei_product_attribute` VALUES('18','2','5','-5.00')
INSERT INTO `bowei_product_attribute` VALUES('18','2','4','20.00')
INSERT INTO `bowei_product_discount` VALUES('20','2','0','0.00')
INSERT INTO `bowei_product_discount` VALUES('21','2','0','0.00')
INSERT INTO `bowei_product_discount` VALUES('22','2','0','0.00')
INSERT INTO `bowei_product_discount` VALUES('23','2','0','0.00')
INSERT INTO `bowei_product_discount` VALUES('24','2','0','0.00')
INSERT INTO `bowei_product_field` VALUES('23','')
INSERT INTO `bowei_product_field` VALUES('24','')
INSERT INTO `bowei_product_field` VALUES('20','<span style=\"color:#868686;font-family:Arial, Verdana, Helvetica, sans-serif, 宋体;line-height:30px;white-space:normal;background-color:#FFFFFF;\">细纹皱纹显现<span style=\"color:#868686;font-family:Arial, Verdana, Helvetica, sans-serif, 宋体;line-height:30px;white-space:normal;background-color:#FFFFFF;\">细纹皱纹显现<span style=\"color:#868686;font-family:Arial, Verdana, Helvetica, sans-serif, 宋体;line-height:30px;white-space:normal;background-color:#FFFFFF;\">细纹皱纹显现<span style=\"color:#868686;font-family:Arial, Verdana, Helvetica, sans-serif, 宋体;line-height:30px;white-space:normal;background-color:#FFFFFF;\">细纹皱纹显现</span></span></span></span>')
INSERT INTO `bowei_product_field` VALUES('21','')
INSERT INTO `bowei_product_field` VALUES('22','')
INSERT INTO `bowei_product_virtual` VALUES('12','17','测试fhsdfgsdfgsdfg','c76e53gGuaLZm3IoQbsJ36mrH0OcZ3RBr7PhE1xWCjoX6JHFnyyE8D3V55Iaxcq1','0','0')
INSERT INTO `bowei_product_virtual` VALUES('11','17','测试463vertc','12333HwgRw6YZmRRcl8KNcHrI5oIxRovuPx7mr+WkNE2Vf1XrdobPrUil4SUCVQtqNDejMk','0','0')
INSERT INTO `bowei_product_virtual` VALUES('10','17','测试4567456346','9a19aBBEDunV3WW1Tfv2p/ZoAna5UjQ5BtVM90DbkrW9aVKt120wg6F8LSqVgz6ime/1WmcBm6Y','0','0')
INSERT INTO `bowei_product_virtual` VALUES('9','17','测试6456456456456456','25e0LYgVYcrXL96cj0Zs5pDK4Wpwq+arv1BAvY4ZWoQEJ0OEK+JlHjVKo7S41AMYj+slDhA','0','0')
INSERT INTO `bowei_product_virtual` VALUES('8','17','测试123123123123','afcci5kt/SEwT14i4tw7RQqffsuj4rFYYB374HJ+pIY2b2FL4L4wwuvM1V2oxvb/yPs','0','0')
INSERT INTO `bowei_special` VALUES('1','article','专题演示','','asdfasdf','','','','1','specia.html','specia_list.html','specia_body.html','20','','','0','','1')
INSERT INTO `bowei_sysconfig` VALUES('sendmail','a:4:{s:4:\"smtp\";s:0:\"\";s:4:\"mail\";s:4:\"root\";s:4:\"pass\";s:4:\"root\";s:4:\"name\";s:16:\"DOYO建站系统\";}')
INSERT INTO `bowei_traits` VALUES('1','头条','article')
INSERT INTO `bowei_traits` VALUES('2','推荐','article')
INSERT INTO `bowei_traits` VALUES('3','头条','product')
INSERT INTO `bowei_traits` VALUES('4','推荐','product')
