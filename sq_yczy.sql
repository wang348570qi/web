/*
Navicat MySQL Data Transfer

Source Server         : 卓维
Source Server Version : 50041
Source Host           : 61.152.144.83:3306
Source Database       : sq_yczy

Target Server Type    : MYSQL
Target Server Version : 50041
File Encoding         : 65001

Date: 2015-10-27 14:57:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dy_account`
-- ----------------------------
DROP TABLE IF EXISTS `dy_account`;
CREATE TABLE `dy_account` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `orderid` char(30) NOT NULL default '0',
  `money` decimal(10,2) NOT NULL default '0.00',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `custom` varchar(200) NOT NULL,
  `payment` char(50) NOT NULL,
  `paymenttype` tinyint(1) unsigned NOT NULL default '1',
  `paymentno` char(100) NOT NULL,
  `molds` char(30) NOT NULL,
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `auser` char(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_account
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_admin_group`
-- ----------------------------
DROP TABLE IF EXISTS `dy_admin_group`;
CREATE TABLE `dy_admin_group` (
  `gid` smallint(5) unsigned NOT NULL auto_increment,
  `name` char(20) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `oneself` tinyint(1) unsigned NOT NULL default '0',
  `paction` text NOT NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_admin_group
-- ----------------------------
INSERT INTO `dy_admin_group` VALUES ('1', '录入员', '0', '0', ',a_html,a_article_add,a_article_edit,a_product,a_product_add,a_product_edit,a_product_del,a_product_audit,a_message,a_message_edit,a_message_del,a_message_audit,a_article_index,a_classtypes_index,a_fields_info,a_adminuser_edituser,uploads,a_label,a_sys_ecache,a_product_index,a_goods_attribute_ajax,a_channel,channel_person_index,');

-- ----------------------------
-- Table structure for `dy_admin_per`
-- ----------------------------
DROP TABLE IF EXISTS `dy_admin_per`;
CREATE TABLE `dy_admin_per` (
  `pid` tinyint(5) unsigned NOT NULL auto_increment,
  `action` char(50) NOT NULL,
  `name` char(20) NOT NULL,
  `up` tinyint(5) NOT NULL default '0',
  `no` tinyint(1) unsigned NOT NULL default '0',
  `orders` int(10) unsigned NOT NULL default '0',
  `molds` char(30) NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_admin_per
-- ----------------------------
INSERT INTO `dy_admin_per` VALUES ('1', 'a_article', '管理', '0', '0', '20', 'article');
INSERT INTO `dy_admin_per` VALUES ('2', 'a_classtypes', '栏目管理', '0', '0', '96', '');
INSERT INTO `dy_admin_per` VALUES ('3', 'a_fields', '自定义字段管理', '37', '0', '29', '');
INSERT INTO `dy_admin_per` VALUES ('4', 'a_article_index', '列表', '1', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('5', 'a_article_add', '添加', '1', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('6', 'a_article_edit', '编辑', '1', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('7', 'a_article_del', '删除', '1', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('8', 'a_article_audit', '审核', '1', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('9', 'a_classtypes_index', '栏目列表', '2', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('10', 'a_classtypes_add', '栏目添加', '2', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('11', 'a_classtypes_edit', '栏目编辑', '2', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('12', 'a_classtypes_del', '栏目删除', '2', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('13', 'a_molds', '频道设置', '37', '0', '30', '');
INSERT INTO `dy_admin_per` VALUES ('17', 'a_adminuser', '管理员管理', '36', '0', '29', '');
INSERT INTO `dy_admin_per` VALUES ('22', 'a_sys', '系统设置', '36', '0', '30', '');
INSERT INTO `dy_admin_per` VALUES ('24', 'a_fields_info', '字段列表', '0', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('27', 'a_adminuser_edituser', '修改资料', '0', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('28', 'uploads', '上传', '0', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('29', 'a_traits', '推荐属性管理', '37', '0', '28', '');
INSERT INTO `dy_admin_per` VALUES ('34', 'a_dbbak', '数据备份', '36', '0', '27', '');
INSERT INTO `dy_admin_per` VALUES ('35', 'a_label', '模板调用生成器', '0', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('36', '', '系统', '0', '0', '99', '');
INSERT INTO `dy_admin_per` VALUES ('37', '', '频道管理', '0', '0', '97', '');
INSERT INTO `dy_admin_per` VALUES ('38', 'a_sys_ecache', '更新缓存', '0', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('40', 'a_labelcus', '自定义模板标签', '36', '0', '28', '');
INSERT INTO `dy_admin_per` VALUES ('41', 'a_funs', '插件设置', '42', '0', '30', '');
INSERT INTO `dy_admin_per` VALUES ('42', '', '其他管理', '0', '0', '98', '');
INSERT INTO `dy_admin_per` VALUES ('43', 'a_files', '清理附件', '36', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('66', 'a_message', '管理', '0', '0', '0', 'message');
INSERT INTO `dy_admin_per` VALUES ('67', 'a_message_edit', '编辑', '66', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('68', 'a_message_del', '删除', '66', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('69', 'a_message_audit', '审核', '66', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('71', 'a_comment', '评论管理', '42', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('72', 'a_links', '友情链接管理', '42', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('73', 'a_member', '会员管理', '42', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('74', 'a_special', '专题管理', '42', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('75', 'a_update', '在线升级', '36', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('76', 'a_html', '静态生成', '36', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('77', 'a_product', '管理', '0', '0', '20', 'product');
INSERT INTO `dy_admin_per` VALUES ('78', 'a_product_index', '列表', '77', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('79', 'a_product_add', '添加', '77', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('80', 'a_product_edit', '编辑', '77', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('81', 'a_product_del', '删除', '77', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('82', 'a_product_audit', '审核', '77', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('84', 'a_ads', '广告管理', '42', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('85', 'a_pay', '支付系统', '42', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('86', 'a_goods', '购物系统', '42', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('87', 'a_goods_attribute_ajax', '规格属性', '0', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('104', 'a_channel', '自定义频道', '0', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('123', 'channel_person_index', '列表', '118', '1', '0', '');
INSERT INTO `dy_admin_per` VALUES ('122', 'channel_person_audit', '审核', '118', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('121', 'channel_person_del', '删除', '118', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('120', 'channel_person_edit', '编辑', '118', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('119', 'channel_person_add', '添加', '118', '0', '0', '');
INSERT INTO `dy_admin_per` VALUES ('118', 'channel_person', '管理', '0', '0', '0', 'person');
INSERT INTO `dy_admin_per` VALUES ('117', 'a_template', '模板管理', '36', '0', '28', '');
INSERT INTO `dy_admin_per` VALUES ('136', 'a_product_virtual', '虚拟货物', '77', '0', '0', '');

-- ----------------------------
-- Table structure for `dy_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `dy_admin_user`;
CREATE TABLE `dy_admin_user` (
  `auid` smallint(5) unsigned NOT NULL auto_increment,
  `auser` char(20) NOT NULL,
  `apass` char(32) NOT NULL,
  `aname` char(30) NOT NULL,
  `amail` char(100) NOT NULL,
  `atel` char(100) NOT NULL,
  `level` tinyint(1) unsigned NOT NULL default '0',
  `gid` smallint(5) unsigned NOT NULL default '0',
  `pclasstype` text NOT NULL,
  PRIMARY KEY  (`auid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_admin_user
-- ----------------------------
INSERT INTO `dy_admin_user` VALUES ('1', 'admin', '86f3059b228c8acf99e69734b6bb32cc', '真实姓名', '邮箱', '电话', '1', '1', '');

-- ----------------------------
-- Table structure for `dy_ads`
-- ----------------------------
DROP TABLE IF EXISTS `dy_ads`;
CREATE TABLE `dy_ads` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `taid` smallint(5) unsigned NOT NULL default '0',
  `orders` int(10) NOT NULL default '0',
  `name` char(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0',
  `adsw` smallint(5) unsigned NOT NULL default '0',
  `adsh` smallint(5) unsigned NOT NULL default '0',
  `adfile` char(200) NOT NULL,
  `body` text NOT NULL,
  `gourl` char(200) NOT NULL,
  `target` char(8) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_ads
-- ----------------------------
INSERT INTO `dy_ads` VALUES ('1', '1', '0', 'banner1', '1', '980', '300', 'skin/images/banner.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('2', '1', '0', 'banner2', '1', '980', '300', 'skin/images/banner.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('3', '1', '0', 'banner3', '1', '980', '300', 'skin/images/banner.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('14', '9', '1', '首页视频（视频）', '5', '100', '100', '', '<div class=\"youkuinfo\">\r\n<div class=\"text\">\r\n<div id=\"player\"> </div>\r\n<div><script type=\"text/javascript\" src=\"http://static.youku.com/v/js/swfobject.js\"></script><script type=\"text/javascript\">\r\n	var vid = \'XNTgxNjU0NTc2\'; \r\n	var fo = new SWFObject(\'http://static.youku.com/v/swf/qplayer.swf\', \'movie_player\', \'100%\', \'100%\', 7, \'\');\r\n	fo.addVariable(\'VideoIDS\',vid); \r\n	fo.addVariable(\'winType\',\'index\');\r\n	fo.addVariable(\'isShowRelatedVideo\',false);\r\n	fo.addParam(\'allowFullScreen\',true);\r\n	fo.addVariable(\'isAutoPlay\',false);\r\n	fo.write(\'player\');\r\n	</script><style type=\"text/css\">\r\n.youkuinfo .text{position:relative; height:260px;}\r\n.introIMG{ margin-left:0px;}\r\n#player{position:absolute;left:0px;_left:-315px;top:0px;*top:-2px;_top:-3px;width:290px;height:250px;}</style></div>\r\n</div></div>', '', 'blank', '1');
INSERT INTO `dy_ads` VALUES ('7', '5', '0', '首页图片1', '1', '488', '331', 'skin/default/images/index-03.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-03.jpg\" width=\"488\" height=\"331\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('8', '5', '0', '首页图片2', '1', '488', '362', 'skin/default/images/index-04.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-04.jpg\" width=\"488\" height=\"362\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('9', '6', '0', '首页图片2', '1', '446', '500', 'skin/default/images/index-05.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-05.jpg\" width=\"446\" height=\"500\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('10', '6', '0', '首页图片2', '1', '446', '195', 'skin/default/images/index-06.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-06.jpg\" width=\"446\" height=\"195\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('11', '7', '0', '首页图片3', '1', '244', '274', 'skin/default/images/index-07.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-07.jpg\" width=\"244\" height=\"274\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('12', '7', '0', '首页图片3', '1', '244', '415', 'skin/default/images/index-08.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-08.jpg\" width=\"244\" height=\"415\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('13', '8', '0', '新浪微博', '5', '1200', '470', '', '<a href=\"#\">新浪微博</a>', '', 'blank', '1');
INSERT INTO `dy_ads` VALUES ('15', '9', '0', '首页视频（文字）', '5', '100', '100', '', '西藏探秘越野车俱乐部全体员工共同的心愿： 让您不为购物店所累，只为尽享旅程！我们的资深级旅游顾问为您量身定制行程和服务，为您营造一个完美的旅行！快来报名吧！我们在蓝天白云之间急驰！我们的亲情、友情、爱情在世界之巅升华！期待在拉萨见到您！', '', 'blank', '1');
INSERT INTO `dy_ads` VALUES ('16', '10', '0', '首页广告1', '1', '290', '405', 'skin/default/images/index-18.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-18.jpg\" width=\"290\" height=\"405\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('17', '11', '0', '首页广告', '1', '290', '270', 'skin/default/images/index-19.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/default/images/index-19.jpg\" width=\"290\" height=\"270\" /></a>', '#', 'self', '1');
INSERT INTO `dy_ads` VALUES ('18', '12', '0', '首页底部广告', '1', '1200', '90', '/uploads/2013/11/022106248062.jpg', '<a href=\"#\" target=\"_self\"><img src=\"/uploads/2013/11/022106248062.jpg\" width=\"1200\" height=\"90\" /></a>', '#', 'self', '1');

-- ----------------------------
-- Table structure for `dy_adstype`
-- ----------------------------
DROP TABLE IF EXISTS `dy_adstype`;
CREATE TABLE `dy_adstype` (
  `taid` smallint(5) NOT NULL auto_increment,
  `name` char(100) NOT NULL,
  `adsw` smallint(5) unsigned NOT NULL default '0',
  `adsh` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`taid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_adstype
-- ----------------------------
INSERT INTO `dy_adstype` VALUES ('1', '头部通栏banner', '980', '300');
INSERT INTO `dy_adstype` VALUES ('9', '首页视频', '100', '100');
INSERT INTO `dy_adstype` VALUES ('5', '首页图片1', '0', '0');
INSERT INTO `dy_adstype` VALUES ('6', '首页图片2', '100', '100');
INSERT INTO `dy_adstype` VALUES ('7', '首页图片3', '100', '100');
INSERT INTO `dy_adstype` VALUES ('8', '新浪微博', '1200', '470');
INSERT INTO `dy_adstype` VALUES ('10', '首页广告', '100', '100');
INSERT INTO `dy_adstype` VALUES ('11', '首页广告', '290', '270');
INSERT INTO `dy_adstype` VALUES ('12', '首页底部广告', '1200', '90');

-- ----------------------------
-- Table structure for `dy_article`
-- ----------------------------
DROP TABLE IF EXISTS `dy_article`;
CREATE TABLE `dy_article` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `tid` smallint(5) unsigned NOT NULL default '0',
  `sid` smallint(5) unsigned NOT NULL default '0',
  `isshow` tinyint(1) unsigned NOT NULL default '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `litpic` char(255) NOT NULL,
  `orders` int(10) NOT NULL default '0',
  `mrank` smallint(5) NOT NULL default '0',
  `mgold` decimal(10,2) unsigned NOT NULL default '0.00',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `article` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_article
-- ----------------------------
INSERT INTO `dy_article` VALUES ('75', '87', '0', '1', '庄园资讯', '', '', '', '', '', '1445184360', '1', '', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `dy_article` VALUES ('74', '78', '0', '1', '《甄嬛传》妃嫔们的饮食保养之道', '', '', '', '', '', '1440577680', '12', '/uploads/2015/08/261631546230.png', '0', '0', '0.00', '', '一部《甄嬛传》捧红了众多红粉佳人，戏中或清纯秀丽、或华丽高贵的妃嫔们，戏外是否依旧动人呢?让我们跟随庄园时代小编一起来看看她们走下银屏之后的饮食保养之道。', 'admin', '0');
INSERT INTO `dy_article` VALUES ('72', '78', '0', '1', '人体的衰老死亡，就是经络不断堵塞的过程', '', '', '', '', '', '1440491640', '8', '/uploads/2015/08/251636377592.jpg', '0', '0', '0.00', '', '我们的健康，取决于各个系统（组织和器官）的工作质量。而我们的寿命呢？则取决于各个系统的使用寿命，而它们的使用寿命则取决于它们的衰老速度！', 'admin', '0');
INSERT INTO `dy_article` VALUES ('76', '86', '0', '1', '疗养日记', '', '', '', '', '', '1445184360', '3', '', '0', '0', '0.00', '', '疗养日记', 'admin', '0');
INSERT INTO `dy_article` VALUES ('77', '90', '0', '1', '百度', '', '', '', '', '', '1445184900', '0', '', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `dy_article` VALUES ('78', '48', '0', '1', '功能医学检测', '', '', '', '', '', '1445264820', '5', '', '0', '0', '0.00', '', '功能医学检测', 'admin', '0');

-- ----------------------------
-- Table structure for `dy_article_field`
-- ----------------------------
DROP TABLE IF EXISTS `dy_article_field`;
CREATE TABLE `dy_article_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `body` mediumtext NOT NULL,
  `ziduan01` varchar(255) default NULL,
  `ziduan02` varchar(255) default NULL,
  `ziduan03` char(30) default NULL,
  `ziduan04` varchar(255) default NULL,
  `ziduan05` varchar(255) default NULL,
  `ziduan06` varchar(255) default NULL,
  `eng` varchar(255) default NULL,
  `tzurl` varchar(255) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_article_field
-- ----------------------------
INSERT INTO `dy_article_field` VALUES ('75', '<h2 style=\"margin:0px 0px 20px;padding:0px;border:0px;outline:0px;font-size:18px;vertical-align:baseline;font-weight:normal;color:#666666;font-family:微软雅黑;white-space:normal;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\">\r\n	庄园资讯\r\n</h2>', null, null, null, null, null, null, null, null);
INSERT INTO `dy_article_field` VALUES ('72', '<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">我们的健康，取决于各个系统（组织和器官）的工作质量。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"text-align:center;text-indent:2em;font-size:14px;\">而我们的寿命呢？则取决于各个系统的使用寿命，而它们的使用寿命则取决于它们的衰老速度！</span><img src=\"/uploads/2015/08/251637301659.jpg\" alt=\"\" style=\"text-align:center;line-height:1.5;text-indent:21pt;\" />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">一个木桶能装多少水，取决于最矮的那个木板之长短。而一个人的寿命，则取决于最早报废的那个系统。一个肝癌患者40多岁就死了，是因为他的肝脏报废了，尽管其它系统还好好的。一个高血压患者30多岁脑血栓死了，是因为他的大脑报废了，尽管其它系统好好的。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">所以，我们要想健康长寿，就要关照好身体的每个系统。而影响系统衰老速度的根本原因是什么呢？就是在于微循环的瘀、堵程度和速度。也就是说，人的寿命取决于微循环。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">有人为什么会早死呢？就是说，最早报废的系统，为什么会出现问题呢？就是因为“局部微循环”出现了问题。</span><span style=\"text-indent:0pt;font-size:14px;\">人为什么到“七老八十”就会老死？人越老，行动越迟缓，都会这样的感觉，越来越没劲了，走不动了。</span><span style=\"text-indent:0pt;font-size:14px;\">到底什么原因呢？就是因为微循环。</span> \r\n</p>\r\n<p class=\"p\" style=\"text-align:center;margin-left:0pt;text-indent:0pt;\">\r\n	<span style=\"text-indent:0pt;\"><img src=\"/uploads/2015/08/251640522634.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"text-indent:0pt;\"> </span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;text-indent:0pt;\"><br />\r\n</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;text-indent:0pt;\">&nbsp; &nbsp; 微循环都是处于身体的外端和远端，这些地方先形成瘀、堵，慢慢再向里蔓延，一般是每年瘀、堵百分之一。人到了五十岁的时候，微循环瘀堵大概达到50%（一半以上），这时候人体开始走向快速衰老。而到了七八十岁的时候，微循环瘀堵到70--80%，基本只有人体的中间部位循环畅通，四肢和远端的微循环都基本不行了，人的生命也就快到了尽头了。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;为什么有人能活一百多岁？因为他们的微循环能够保持畅通，为什么现在很多人“未老先衰”？，是因为他们虽然年青，但微循环瘀堵的却很严重了。这不是凭空想象，我们每个人都可以根据自己的健康状况，再和下面的瘀堵级别对比，大家就会判断自己大概的未来。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;那么，瘀堵会有什么感觉呢？或者说我们怎么知道自己有没有瘀堵呢？瘀堵首先会有疼痛。疼痛是好事还是坏事？经络或者血液循环出现问题，所表现出来的最典型症状就是疼痛，所谓“痛则不通、通则不疼”。很多人最害怕的也是疼痛，很多人最急于治疗的还是疼痛。因为疼痛让人无法活动，疼痛让人无法吃饭，疼痛让人无法入睡。但是，有一点也许大家不明白，我们身体一旦有问题，我们怕的不是疼，而怕的是不疼。疼是好事，说明血液循环还没彻底堵死，身体在产生自救，在冲击“瘀堵”。而一旦堵死了，你就感觉不到疼了，这样反而坏了大事。就像很多人有静脉曲张，我们能够清清楚楚看到一条条血管都被堵死了，可有人感觉到疼吗？</span> \r\n</p>\r\n<img src=\"/uploads/2015/08/251641407348.jpg\" alt=\"\" /><span style=\"font-size:14px;\"></span><br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"text-indent:0pt;\"> </span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;也许很多人没注意过，静脉曲张只是在早期才会有疼痛的感觉，到后期彻底堵死就感觉不到疼痛了。血管都被堵死了，我们就感觉不到疼痛了，随之而来的是麻、木、凉，这才是更严重的后果。所以在这里，我们一定要明白一个道理，如果我们对付疼痛的办法是用的止疼药，千万不要认为以后不疼了就是好事。只有把经络彻底打通了，才是解决疼痛的最根本办法。因为不仅仅是解决疼痛的问题，而是消除隐患的问题。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;text-indent:0pt;\">&nbsp; &nbsp; &nbsp; &nbsp; 血液循环最容易在哪里瘀堵呢？</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;关节和毛细血管。关节处有很多内通外联的缝隙，中医叫穴位，是外邪侵入和内邪外排的“突破口”，大家注意一下就明白了，身体的穴位在关节处最多。所以大家千万别轻视或忽视关节的异常，这个报警信号最重要，通过拔罐加温灸是向外“祛邪”的最快最有效的办法。毛细血管都是在微循环上，关节也多是毛细血管，因为一般大、中血管不会堵。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 为什么微循环容易堵呢？</span> \r\n</p>\r\n<img src=\"/uploads/2015/08/251642169451.jpg\" alt=\"\" /><span style=\"font-size:14px;\"></span><br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"text-indent:0pt;\"> </span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;（1）血液里的杂质，千万不要轻视，身体每天都在创造垃圾。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;（2）感受“风寒”，一受风寒血管就收缩，而血液也会变粘，就会造成瘀堵。一是关节、皮肤受寒冷刺激，二是内脏（肠胃）容易受“冷饮、冷食”刺激。所以，在布满毛细血管丛的微循环是最容易瘀堵的。事实上，我们每个人的微循环的瘀堵都会存在，而且都在伴随着年龄的增加而增加。虽然在身体内里，我们看不到，但我们能感觉的到，人越老行动越迟缓，这就是因为年老“血脉不活”的表现。就像刚才提到的“静脉曲张”，这是我们能够看得到的，而我们身体内里看不到的呢？</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 如何能直观地判断身体瘀、堵的程度呢？</span> \r\n</p>\r\n<span style=\"font-size:14px;\"></span><img src=\"/uploads/2015/08/251642464756.jpg\" alt=\"\" /><br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;text-align:justify;\">\r\n	<span style=\"text-indent:0pt;\"> </span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;还有一个“窗口”可以帮助我们，这就是“舌下静脉血管”，中医称为“舌下络脉”，现在中医已经形成“络脉”学说，成立了“络脉”学会。舌下络脉的病理变化，主要表现于色泽和形态两方面。舌脉色青紫，其形粗长或怒张，提示气滞血瘀，或痰瘀互结；其色淡紫，脉形粗大或怒张，提示寒邪凝滞或气虚血瘀；其色紫红，脉形怒张，提示热壅血滞，其色淡红或浅蓝色，脉形细小，提示正气虚弱。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;舌下络脉的变化，主要提示瘀血病变的存在，根据其色青紫、淡紫、紫红，分别确认瘀血属气滞、寒凝、气虚，还是热壅。一般我们简易地把瘀堵程度分为四级。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;line-height:1.5;text-indent:0pt;\"><br />\r\n</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;line-height:1.5;text-indent:0pt;\">&nbsp; &nbsp; &nbsp;一级：舌下两条静脉隐现，主干直径在&nbsp;2.6毫米以下，长度不超过舌系带止点，整条舌下静脉无扭曲、怒张。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 二级：主干饱满，直径不超过2.6毫米，长度不超过舌系带止点与舌尖1/2，轻度弯曲。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;三级：主干饱满，直径增粗超过2.6毫米，长度超过舌系带止点与舌尖3/5，轻度弯曲。三级者表示气血循环有瘀堵。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;四级：主干饱满，曲张明显，直径增粗超过2.6毫米，长度超过舌系带止点与舌尖3/5或将及舌尖，外带有粗枝状分支或鱼子酱刺状。四级者表示体内有早期肿瘤。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;人体的衰老就是经络不断堵塞的过程，经常疏通经络能够延缓衰老。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', null, null, null, null, null, null, null, null);
INSERT INTO `dy_article_field` VALUES ('74', '<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">&nbsp;一部《甄嬛传》捧红了众多红粉佳人，戏中或清纯秀丽、或华丽高贵的妃嫔们，戏外是否依旧动人呢?让我们跟随庄园时代小编一起来看看她们走下银屏之后的饮食保养之道。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\"><strong>皇后蔡少芬：猪骨汤延缓衰老</strong></span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">猪骨汤性寒凉，益力气，补虚弱，强筋骨。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">猪骨含有丰富的蛋白质、脂肪、维生素，还有大量磷酸钙、骨胶原、骨黏蛋白等，能增强肌肤弹性，减缓机体衰老。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">猪骨煅炭研粉则性温，有止泻健胃补骨作用。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\"><strong>甄嬛孙俪：百合增加皮肤弹性</strong></span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">百合主要含生物素、秋水碱等多种生物碱和营养物质，有良好的营养滋补之功，特别是对病后体弱等症大有裨益。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">百合中的硒、铜等微量元素能抗氧化、促进维生素C吸收，可显著抑制黄曲霉素的致突变作用。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">新鲜的植物黏液质对肌肤细胞代谢有一定的增强作用，可刺激细胞再生，保持肌肤弹性。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\"><strong>沈眉庄：斓曦：红甜菜补血益气</strong></span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">红甜菜和红罗卜外形相似，味道稍甜，是最佳的补血良药之一。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">菜根含有丰富的钾、磷及容易消化吸收的糖，可促进肠胃道的蠕动，甜菜根中含有天然红色维生素B12及铁质，可以有效补血。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\"><strong>华妃蒋欣：桂花藕粉排毒美白</strong></span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">藕粉含有丰富的营养，有洁肤美白的功效，另外还能提高细胞的再生活力，让肌肤平滑细腻。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:2em;\">\r\n	<span style=\"font-size:14px;\">桂花含有棕榈酸、月桂酸、肉豆酸、桂花醇、水芹烯、芳樟醇与紫罗兰酮等芳香物质及碳氢化合物，可美白肌肤，清除体内毒素。</span>\r\n</p>', null, null, null, null, null, null, null, null);
INSERT INTO `dy_article_field` VALUES ('76', '<h2 style=\"margin:0px 0px 20px;padding:0px;border:0px;outline:0px;font-size:18px;vertical-align:baseline;font-weight:normal;color:#666666;font-family:微软雅黑;white-space:normal;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\">\r\n	疗养日记\r\n</h2>', null, null, null, null, null, null, null, null);
INSERT INTO `dy_article_field` VALUES ('77', '', null, null, null, null, null, null, null, 'https://www.baidu.com');
INSERT INTO `dy_article_field` VALUES ('78', '<h2 style=\"margin:0px 0px 20px;padding:0px;border:0px;outline:0px;font-size:18px;vertical-align:baseline;font-weight:normal;color:#666666;font-family:微软雅黑;white-space:normal;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\">\r\n	功能医学检测\r\n</h2>', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `dy_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `dy_attribute`;
CREATE TABLE `dy_attribute` (
  `sid` mediumint(8) unsigned NOT NULL auto_increment,
  `tid` mediumint(8) unsigned NOT NULL,
  `name` char(100) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '1',
  `orders` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`sid`),
  KEY `attribute` (`tid`,`isshow`),
  KEY `attribute_orbye` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_attribute
-- ----------------------------
INSERT INTO `dy_attribute` VALUES ('4', '2', '特种线路', '1', '0');
INSERT INTO `dy_attribute` VALUES ('5', '2', '纯玩线路', '1', '0');
INSERT INTO `dy_attribute` VALUES ('9', '2', '青海及尼泊尔线路', '1', '0');

-- ----------------------------
-- Table structure for `dy_attribute_type`
-- ----------------------------
DROP TABLE IF EXISTS `dy_attribute_type`;
CREATE TABLE `dy_attribute_type` (
  `tid` mediumint(8) unsigned NOT NULL auto_increment,
  `name` char(100) NOT NULL,
  `classtype` text NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '1',
  `orders` int(10) NOT NULL default '0',
  PRIMARY KEY  (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_attribute_type
-- ----------------------------
INSERT INTO `dy_attribute_type` VALUES ('2', '线路', '|2|24|25|26|27|28|29|30|', '1', '0');

-- ----------------------------
-- Table structure for `dy_classtype`
-- ----------------------------
DROP TABLE IF EXISTS `dy_classtype`;
CREATE TABLE `dy_classtype` (
  `tid` smallint(5) unsigned NOT NULL auto_increment,
  `molds` char(20) NOT NULL,
  `pid` smallint(5) unsigned NOT NULL default '0',
  `classname` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `litpic` char(200) NOT NULL,
  `title` char(100) NOT NULL,
  `keywords` char(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `isindex` tinyint(1) unsigned NOT NULL default '1',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listimg` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `t_content` char(50) NOT NULL,
  `listnum` mediumint(8) unsigned NOT NULL default '0',
  `htmldir` char(100) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `mrank` smallint(5) NOT NULL default '0',
  `msubmit` smallint(5) NOT NULL default '0',
  `orders` int(10) NOT NULL default '0',
  `body` mediumtext NOT NULL,
  `mshow` tinyint(1) unsigned NOT NULL default '1',
  `imgw` smallint(5) unsigned NOT NULL default '0',
  `imgh` smallint(5) unsigned NOT NULL default '0',
  `unit` char(20) NOT NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_classtype
-- ----------------------------
INSERT INTO `dy_classtype` VALUES ('1', 'article', '0', '关于庄园', '', 'uploads/2012/04/261014486626.jpg', '关于庄园', '', '关于庄园', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '10', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	关于庄园\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('66', 'article', '0', '健康智库', '', '', '健康智库', '', '健康智库', '3', 'list_index.html', 'list.html', 'list_image.html', 'zk_body.html', 'article.html', '20', '', '', '0', '0', '5', '&nbsp; &nbsp; &nbsp; “传播健康修身,分享健康智慧,创造健康价值。”健康智库——真正的健康第一平台!\r\n      知识就是力量，充实自我的健康知识，可以让您更加了解自己的身体并提升生活品质。\r\n      健康智库栏目整理了过敏免疫、保健营养菜、自然养生、营养新知、体重管理、心血管保健、环境隐患7类和您息息息相关的健康知识文章，帮您解答各种健康问题，让您随时掌握科学新知动态。', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('67', 'article', '66', '过敏免疫', '', '', '健康智库01', '', '过敏免疫', '1', 'list_index.html', 'list.html', 'list_image.html', 'zk_body.html', 'article.html', '20', '', '', '0', '0', '0', '<h4>\r\n	免疫力是人体对抗疾病的能力，对健康而言它就象是两面刃的利剑，太过与不及都会对健康造成伤害。免疫力低下当然会导致常常发生各种感染性疾病，象是呼吸道、肠胃道、泌尿道等感染，甚至象是癌症，都是免疫系统不足所引起的。然而，免疫力过于亢进也会引起疾病，象是过敏或是自体免疫的疾病。<br />\r\n<span lang=\"EN-US\">&nbsp;&nbsp;&nbsp; </span>民间保健品一味的诉求增强免疫力，殊不知每个人因为基因背景的不同、生理的状态不同，或是病程状态的不同，会对于保健品有不同的反应。因此保健品不能乱吃乱补，一定要针对每个人的体质与生理状况，量身订作最适合的保健品，才能真正对健康有帮助。<br />\r\n<span lang=\"EN-US\">&nbsp;&nbsp;&nbsp; </span>干扰素<span lang=\"EN-US\">(INF, interferon)</span>是免疫系统中重要的细胞激素，它是属于先天免疫系统的一环，是身体的第一道防线。它是多功能性的免疫分子，由体内的白血球与组织细胞分泌，主要作用是抗病毒感染、抗肿瘤以及调节免疫力。干扰素的研究至今已经<span lang=\"EN-US\">50</span>年，它被广泛应用于各种疾病的治疗，例如病毒的感染<span lang=\"EN-US\">(B</span>型肝炎、<span lang=\"EN-US\">C</span>型肝炎、流感病毒、冠状病毒与鼻病毒<span lang=\"EN-US\">)</span>、癌症<span lang=\"EN-US\">(</span>血癌、淋巴癌<span lang=\"EN-US\">)</span>、自体免疫性疾病<span lang=\"EN-US\">(</span>多发性硬化症<span lang=\"EN-US\">)</span>、减缓过敏症状。因此干扰素是免疫系统健康的最佳指标，干扰素的分泌能使免疫系统的防线更健全。<br />\r\n<span lang=\"EN-US\">&nbsp;&nbsp;&nbsp; </span>微生物与人体免疫系统间的互动关系最为密切，因此微生物最能改变人体的免疫系统。益生菌的定义是对人体健康有帮助的微生物，包括细菌<span lang=\"EN-US\">(</span>如乳酸菌、酵母菌<span lang=\"EN-US\">)</span>、药用真菌<span lang=\"EN-US\">(</span>牛樟芝、北虫草<span lang=\"EN-US\">)</span>。益生菌与一般化学药物不同，它是有生命的，因此我们称之为<span lang=\"EN-US\">living drug</span>。根据研究益生菌能够有效刺激免疫系统产生干扰素<span lang=\"EN-US\">14</span>，直接改变人体免疫能力。<br />\r\n<span>&nbsp;&nbsp; </span>一般食物过敏可分为急性过敏与慢性过敏两种，相较于有迹可寻的急性过敏症状，无明显症状的慢性食物过敏实在让人难以察觉，举凡头痛、失眠等这些让人困扰的小毛病，都有可能是慢性食物过敏在作祟<span>! </span><br />\r\n尤其是有过敏病史、孕妇和常为小病痛烦身的人，更需要注意慢性食物过敏的发生.<br />\r\n过敏症状最常表现在人体的皮肤系统、呼吸系统、神经系统、眼睛系统和消化系统，根据联安数据资料统计显示，慢性食物过敏患者主要十大临床症状则包含：<br />\r\n一、过敏性鼻炎、鼻塞、流鼻水<span style=\"text-indent:21pt;line-height:1.5;\">；</span><br />\r\n<span style=\"text-indent:21pt;line-height:1.5;\">二、皮肤起疹子（湿疹或荨麻疹）；</span><br />\r\n<span style=\"text-indent:21pt;line-height:1.5;\">三、疲倦；</span><br />\r\n<span style=\"text-indent:21pt;line-height:1.5;\">四、眼睛发痒</span><span style=\"line-height:1.5;text-indent:21pt;\">；</span><br />\r\n<span style=\"line-height:1.5;text-indent:21pt;\">五、异位性皮肤炎；</span><br />\r\n<span style=\"line-height:1.5;text-indent:21pt;\">六、头痛、偏头痛；</span><br />\r\n<span style=\"line-height:1.5;text-indent:21pt;\">七、经常感冒；</span><br />\r\n<span style=\"line-height:1.5;text-indent:21pt;\">八、青春痘、痘子；</span><br />\r\n<span style=\"line-height:1.5;text-indent:21pt;\">九、便秘或拉肚子</span><span style=\"line-height:1.5;text-indent:21pt;\">；</span><br />\r\n<span style=\"line-height:1.5;text-indent:21pt;\">十、失眠，这些延迟性的过敏反应常被患者忽略或误判为他种疾病，但其实是慢性过敏原长期在体内累积而引发的健康问题。</span><br />\r\n慢性食物过敏的成因是来自于体内<span>IgG</span>的免疫球蛋白的反应，和急性过敏原相较，慢性食物过敏需要反复性或大量的过敏食物才会产生，但因症状难以联想是食物过敏的现象，若不及时察觉，对健康和生活质量将造成不良影响，更严重的是，某些研究已经指出慢性食物过敏将会导致慢性病发生。<br />\r\n过敏原多半埋伏在日常饮食中 慢性食物过敏原检测找出潜藏危机 国内主要十大过敏原食物为：一、牛奶；二、蛋白；三、蛋黄；四、起司；五、花生；六、酵母；七、花豆；八、麦胶蛋白；九、牡蛎；十、海带，皆属于日常生活常见的食物，同时也是维持人体健康的重要营养来源，因此常让人不知不觉中吃进过敏原\r\n</h4>\r\n<h4>\r\n	干扰素是免疫系统的最佳健康指标\r\n</h4>\r\n<h4>\r\n	益生菌与免疫系统\r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<h4>\r\n	解开食物密码 避免祸从口入\r\n</h4>\r\n<p>\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('68', 'article', '66', '营养保健', '', '', '营养保健', '', '营养保健', '1', 'list_index.html', 'list.html', 'list_image.html', 'zk_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('69', 'article', '0', '庄园资讯', '', '', '庄园资讯', '', '庄园资讯', '1', 'list_index.html', 'list_zx.html', 'list_image.html', 'list_body.html', 'article_zx.html', '20', '', '', '0', '1', '6', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('70', 'article', '0', '联系我们', '', '', '联系我们', '', '联系我们', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;\"> \r\n	<iframe src=\"http://www.biocell-china.com/include/js/kindeditor/plugins/baidumap/index.html?center=121.376407%2C31.064152&zoom=17&width=558&height=360&markers=121.376407%2C31.064152&markerStyles=l%2CA\" frameborder=\"0\" style=\"width:560px;height:362px;\">\r\n	</iframe>\r\n<br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;热线电话：400-668-6877</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系地址：上海市闵行区颛兴路1688号</span> \r\n</p>', '0', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('44', 'article', '1', '庄园介绍', '', '', '庄园介绍', '', '庄园时代，国内最大一家集预防、治疗、休养为一体的一站式抗衰老疗养机构，汇聚全球最权威的高科技人才，引进世界最先进的技术设备，精选全球最优质的产品，整合国内知名三甲医院及德国抗衰老医疗资源，让客户在国内即可享受世界领先水准的健康服务与管理。', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241625102809.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 上海庄园时代，国内最大一家集预防、治疗、休养为一体的一站式抗衰老疗养机构，汇聚全球最权威的高科技人才，引进国外最尖端的技术设备，精选全球最优质的产品，整合国内知名三甲医院及德国抗衰老医疗资源，致力于帮助有需求的客人在国内享受世界领先水准的健康服务与管理，提高生命质量和价值。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;上海庄园时代占地2万平方米，多幢欧美别墅，环境优美，空气清新，自然静谧，拥有中国首家功能医学检验中心，独家引进美国功能医学检测技术，建立疾病早期检测体系，研发疾病的非药物干预手段，旨在为客户提供符合人类健康发展的身体管理方式。我们的国际抗衰老团队，由世界级功能医学专家、医疗服务专家、荷尔蒙专家、抗衰老专家、排毒专家、饮食保健专家等资深专业人士组成，为国内高端客户提供功能医学检测、抗衰老疗养、终身健康管理等个性化服务。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241716185706.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>美国功能医学抗衰老检测中心</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 耗资数千万引进美国功能医学抗衰老检测实验室，检测评估器官的功能而不仅仅是器官的病理，在了解体内潜在的危险因子及所有荷尔蒙的浓度之后，医学专家会依据报告结果为客户量身定制全方位的抗衰老医学服务。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241703097066.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>Revita细胞净化与激活中心</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 首席抗衰老专家Dr.Queenie&nbsp;Mei，2010年美国总统奖、功能医学最佳成就奖获得者，经过多年临床研究，独创全新的“Revita细胞净化与激活疗法”，依据人体细胞检测评估诊断，通过细胞净化、清除自由基和重金属、净化体内环境，并有效激活细胞，实现身体年轻、健康美丽的梦想。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241703232354.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>德国活细胞抗衰老中心</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 德国活细胞疗法，拥有60多种不同器官的细胞分子产品，服务过上千位世界级名流和政要。中心专家会根据您身体的具体状况，配置个性化的活细胞分子配合组合，有效激活和修复体内开始衰老的或者是不健全的细胞，达到全面抗衰老、治疗或显著改善疾病的目的，是一个有着80年历史的国际传统项目。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241703404595.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>荷尔蒙健康中心</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 与美国著名华裔荷尔蒙专家黄颖博士合作，引进被美国抗衰老医学会推荐的有效抗衰老第一疗法——荷尔蒙疗法，这是目前非常先进、彻底的逆转时光疗法，可以平衡体内各式各样的荷尔蒙，并采用生物等同荷尔蒙补充，让卵巢年轻化，让恢复青春变成现实，让靓丽红颜得到永驻。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241704066624.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>美式整脊中心</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 脊柱是人体的第二条生命线，在人体内占据着中枢部位，影响着人类的健康。美式整脊疗法是一种自然绿色疗法，注重人体的整体研究，注重人体内部各器官及组织的相互关系，寻求一种维护、修复自然生理与物理平衡的方法。在欧美，社会名流、明星、政客都已经普遍使用整脊来保养和调理自己的健康平衡。&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241626317202.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>防癌中心</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 与美国雷诺综合医学中心合作，运用美国防癌超前检测手段，提前5-7年准确发现癌症。拥有全世界最优的早期癌症诊断技术——Oncoblot，可以检测出200万个癌细胞，并可准确定位27种最常见的癌细胞形式。&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241704286808.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>健康生活方式中心</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 倡导自然健康的生活方式，引进国际上最尖端的健康产品及设备，让客户在度假疗养中体验与日常生活息息相关的空气、水、饮食、运动、清洁等生活方式类产品，引领客户健康生活新观念，为客户提供1+364天全方位健康管理服务。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241710457416.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>VIP住宿中心</strong></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241704517878.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; 上海庄园时代，隶属上海健拓健康产业联盟，由国家卫生部中国健康促进基金会功能医学专项发展基金发起，被授权为：中国三甲医院体检联盟抗衰老服务基地、中国与海外企业家健康俱乐部、中国健康促进基金会抗衰老示范基地。</span> \r\n</p>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241716456623.jpg\" alt=\"\" /><br />\r\n</div>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241716587949.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;line-height:2;\"><strong><img src=\"/uploads/2015/08/241720089035.jpg\" alt=\"\" /><br />\r\n</strong></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/241726471230.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;line-height:2;\"><strong><img src=\"/uploads/2015/08/241721113091.jpg\" alt=\"\" /><br />\r\n</strong></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;line-height:2;color:#E53333;\"><strong>在这里，我们将一起为你的健康努力，让你活得更年轻、更健康、更长久！</strong></span> \r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('71', 'article', '55', '空气系列', '', '', '空气系列', '', '空气系列', '3', 'list_index.html', 'list.html', 'list_image.html', 'shfs_body.html', 'article.html', '20', '', '', '0', '0', '10', '<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">　<img src=\"/uploads/2014/03/271526268086.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">卓越健康生活方式体验中心由中国健康促进基金会功能医学专项基金发起，是中国健康生活方式进家庭工程实施推广机构，健拓围绕健康生活产业核心，通过协同性多产业的配套以及延伸产业的对接和互动，构建一个高端医疗体检、健康疗养、 </span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp; 健康生活方式提供的健康生活产业集群，为消费者提供1+364天全方位的健康服务</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">卓越健康生活体验中心围绕家庭生活化的产品规划，践行人与自然的生命连接，提供空气，饮用水，食用油，个人清洁用品等四大健康产品系列，传递积极乐观的生活态度，倡导自然健康的生活方式，为中国家庭带来健康活力</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp; 健康生活方式进家庭工程由中国健康促进基金会支持，以实现家庭健康生活零污染、倡导科学合理的运动方式和亚健康、慢性病的有效预防为三项基本节点，倡导以家庭为单位积极参与环境保护行动，将“绿色、环保、低碳、节能”作为行为准则，从日常行为小事做起，摒弃不良生活习惯，树立和加强环保意识，积极使用和传播科学先进的健康理念和方式方法，从多方面防控各类亚健康、慢性病的发生。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('58', 'article', '55', '清洁系列', '', '', '清洁系列', '', '清洁系列', '3', 'list_index.html', 'list.html', 'list_image.html', 'shfs_body.html', 'article.html', '20', '', '', '0', '0', '4', '<p class=\"MsoNormal\">\r\n	&nbsp;众所周知，饮食与健康关系密切。而食用油恰恰是大家容易忽视的一方面。由于一般人停留在食用油仅仅是调味品的认识上，造成了中国目前前所未有的食用油危害。别的不说，单拿心脑血管疾病为例：中国近几年每年<span>50%</span>以上死亡人口因为是心脑血管疾病，<span>65</span>岁以上的老人<span>80%</span>死于心脑血管疾病。而专家指出，慢性病尤其心脑血管疾病与食用油的食用不当关系密切。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	&nbsp;<img src=\"/uploads/2014/03/271557405612.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>2000</b><b>多年前，中华名族就食用茶油来预防疾病和养生</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>茶油食用、外用都有很好的药效，《中国药典》（<span>1995</span>年版）将茶油作为药用油收载。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	&nbsp; 《本草纲目》、《农政全书》、《纲目拾遗》、《天工开物》等中国历代药学著作对食用茶油有药用功效都有详细记载。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	&nbsp;&nbsp; 油茶籽在油茶树上历经十三个月的寒暑风霜早已褪尽火气，茶油是联合国粮农组织重点推广的凉性高品质木本食用油。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>天 然 成 份<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	油酸、亚油酸、亚麻酸、饱和酸、茶多酚、山茶皂甙、角鲨烯、茶多糖、硒、维生素<span>E</span>、茶黄素、锌、β-胡萝卜素等。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>中国居民日常主要食用油营养成分对照表</b><b></b> \r\n</p>\r\n<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border:none;\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"243\" colspan=\"3\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">&nbsp;</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:宋体;\">茶油</span><span style=\"font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:宋体;\">橄榄油</span><span style=\"font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:宋体;\">豆油</span><span style=\"font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:宋体;\">花生油</span><span style=\"font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"102\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-size:8.0pt;font-family:宋体;\">单不饱和脂肪酸</span><span style=\"font-size:5.0pt;font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"61\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:宋体;\">油酸</span><span style=\"font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">%</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">82.3</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">81.6</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">23.8</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">41.2</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"102\" rowspan=\"2\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-size:8.0pt;font-family:宋体;\">多不饱和脂肪酸</span><span style=\"font-size:12.0pt;font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"61\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:宋体;\">亚油酸</span><span style=\"font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">%</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">7.39</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">7.0</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">52.8</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">37.6</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"61\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:宋体;\">亚麻酸</span><span style=\"font-family:;\" \"=\"\"></span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">%</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">0.21</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">0-1&nbsp;</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">8.4</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"81\" valign=\"top\" style=\"border:solid windowtext 1.0pt;\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\r\n					<span style=\"font-family:;\" \"=\"\">&nbsp;</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('59', 'article', '55', '饮食系列', '', '', '饮食系列', '', '饮食系列', '3', 'list_index.html', 'list.html', 'list_image.html', 'shfs_body.html', 'article.html', '20', '', '', '0', '0', '5', '<h4>\r\n	<span style=\"font-weight:normal;font-size:14px;\"><strong>【</strong></span><span lang=\"EN-US\" style=\"font-weight:normal;font-size:14px;\"><strong>OPTIMCLEAN</strong></span><span style=\"font-weight:normal;font-size:14px;\"><strong>介绍】</strong></span> \r\n</h4>\r\n<p>\r\n	<span style=\"font-weight:normal;font-size:14px;\"><strong><img src=\"/uploads/2014/04/071404148017.jpg\" alt=\"\" /><br />\r\n</strong></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\"> </span> \r\n</p>\r\n<h4 style=\"white-space:normal;\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;</span><span lang=\"EN-US\" style=\"font-size:14px;\">OPTIMCLEAN产品系列是</span><span style=\"line-height:1.5;font-size:14px;\">致力于健康卫生清洁二十多年的科研结晶。</span> \r\n</h4>\r\n<h4 style=\"white-space:normal;\">\r\n	<span style=\"line-height:1.5;font-size:14px;\">秉承着：尊重生态，回归自然，又结合生态科技研究及生物能量学理念，海能量各人清洁用品系列倡导环保，天然，健康的生活状态。</span> \r\n</h4>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">　　　</span><span lang=\"EN-US\" style=\"font-size:14px;\">OPTIMCLEAN</span><span style=\"font-size:14px;\">专注生态技术的研发，以尖端高科技的生态设备，超越生化、生物科技的领域进入生态高科技研究工作。寻找大自然的资源，借着海洋与陆地上矿物元素的组合，完成了独具颠覆性、革命性的产品研发—海能量系列产品，让我们一起加入【净化地球】的重建工程，力挽这场世纪污染的浩劫。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">　　　为了我们绿色的未来，子孙后代还能有片碧水蓝天，也为了自己和家人的健康，从身边做起，选择绿色健康的清洁用品。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('45', 'article', '1', '庄园文化', '', '', '庄园文化', '', '庄园文化', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '<p style=\"text-indent:2em;\">\r\n	<span style=\"line-height:2;font-size:16px;\">根据研究统计，世界人口只有</span><span lang=\"EN-US\" style=\"line-height:2;font-size:16px;\">15%</span><span style=\"line-height:2;font-size:16px;\">属于完全健康，而近</span><span lang=\"EN-US\" style=\"line-height:2;font-size:16px;\">8</span><span style=\"line-height:2;font-size:16px;\">成是亚健康的状态，也就是健康检查结果大多没有太大异常，但日常生活中却还是感觉身体不适，例如疲倦、焦虑、压力、失眠、免疫力下降等。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"line-height:2;font-size:16px;\"><span style=\"font-size:12px;\"></span><br />\r\n</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n	<span style=\"line-height:2;font-size:16px;\">为了预防医学促进健康的目标，我们成立庄园时代抗衰老疗养中心，引进先进的功能医学检查，配合一日健检，推出「个人化健康资产管理</span><span lang=\"EN-US\" style=\"line-height:2;font-size:16px;\">VIP</span><span style=\"line-height:2;font-size:16px;\">专有照护」服务，将健康管理的服务从</span><span lang=\"EN-US\" style=\"line-height:2;font-size:16px;\">1</span><span style=\"line-height:2;font-size:16px;\">日延伸到</span><span lang=\"EN-US\" style=\"line-height:2;font-size:16px;\">364</span><span style=\"line-height:2;font-size:16px;\">天，藉由</span><span lang=\"EN-US\" style=\"line-height:2;font-size:16px;\">1</span><span style=\"line-height:2;font-size:16px;\">日健诊中发现的健康问题，进而透过庄园时代</span><span lang=\"EN-US\" style=\"line-height:2;font-size:16px;\">364</span><span style=\"line-height:2;font-size:16px;\">天健康管理服务，从生理健康、心理健康到生活健康层层把关，以资产管理的精神替客户落实全年健康保养。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:12px;line-height:2;\">&nbsp;&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-right:0pt;line-height:150%;text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;\">庄园时代引领着世界预防医学的发展方向，代表了最顶级的抗衰老技术，针对客户个人身体特制，结合全面功能医学检查的生理指标，制定个性化抗衰老疗养方案，针对性地改善和活化客户衰老器官的功能，并提供多种慢性病的调理疗养。</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-right:0pt;margin-left:0pt;text-indent:2em;line-height:150%;\">\r\n	<span style=\"font-size:12px;line-height:2;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-right:0pt;margin-left:0pt;text-indent:2em;line-height:150%;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:2em;\">这是一把开启青春时光的钥匙，客户在这里重新焕发了生命活力，恢复了健康体魄，凝固了时光流转。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-right:0pt;line-height:150%;text-indent:2em;\">\r\n	<o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-right:0pt;margin-left:0pt;line-height:150%;text-indent:2em;\">\r\n	<span style=\"line-height:2;\">&nbsp;<span>&nbsp;&nbsp;&nbsp;</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-right:0pt;line-height:150%;text-indent:2em;\">\r\n	<span style=\"font-size:16px;\"><span style=\"line-height:2;\">庄园时代专注于做全球抗衰老疗养领域的领跑者，凭借着看得见效果的抗衰老疗养和精益求精的服务精神，吸引了来自各地的政界要员、商界名流、娱乐明星、财富新贵等</span><span style=\"line-height:2;\">。</span></span><o:p></o:p>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('91', 'article', '1', '发展历程', '', '', '发展历程', '', '发展历程', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '<p class=\"p0\" style=\"margin-bottom:0pt;margin-top:0pt;\">\r\n	发展历程\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('92', 'article', '1', '合作机构版块', '', '', '合作机构版块', '', '合作机构版块', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '<p class=\"p0\" style=\"margin-bottom:0pt;margin-top:0pt;\">\r\n	合作机构版块\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('93', 'article', '69', '行业资讯', '', '', '行业资讯', '', '行业资讯', '1', 'list_index.html', 'list_zx.html', 'list_image.html', 'list_body.html', 'article_zx.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('94', 'article', '69', '媒体关注', '', '', '媒体关注', '', '媒体关注', '1', 'list_index.html', 'list_zx.html', 'list_image.html', 'list_body.html', 'article_zx.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('95', 'article', '69', '专家访谈', '', '', '专家访谈', '', '专家访谈', '1', 'list_index.html', 'list_zx.html', 'list_image.html', 'list_body.html', 'article_zx.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('47', 'article', '0', '庄园服务', '', '', '庄园服务', '', '庄园服务', '1', 'list_index.html', 'list_zyfw.html', 'list_image.html', 'zyfw_body.html', 'article_zyfw.html', '20', '', '', '0', '0', '9', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('48', 'article', '47', '功能医学检测', '', '', '功能医学检测', '', '功能医学检测', '1', 'list_index.html', 'list_zyfw.html', 'list_image.html', 'zyfw_body.html', 'article_zyfw.html', '20', '', '', '0', '0', '0', '<h4 style=\"text-indent:2em;\">\r\n	<p>\r\n		<strong style=\"font-size:14px;line-height:2;text-indent:2em;\"><span style=\"font-size:16px;\">功能医学是一门以综合治疗手段为核心的预防医学，它起源于20世纪中期，以分子矫正医学、医学生物化学作为理论基础。2010年，功能医学作为美国白宫保健医学被纳入美国奥巴马政府的医保范畴，自此引领世界范围内的第二次医学革命。</span></strong> \r\n	</p>\r\n</h4>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"line-height:2;font-size:16px;\">功能医学以先进准确的检测手段，检测个人的生化体质、代谢平衡、生态环境，以达到早期改善并维持生理、情绪认知及体能的平衡。其治疗包括饮食调整、营养补充品、植物或药草处方及其他辅助疗法，以促进身体自行痊癒。功能医学检测是根据每一个病人独特而与众不同的体质，评估身体器官无临床症状变化的功能状况，“其评估器官的“功能”而非仅器官的“病理”。</span> \r\n</p>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/251534329197.png\" alt=\"\" /><br />\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:18px;line-height:2;\"><strong>功能医学与传统医学区别与联系</strong></span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;\">功能医学检测与传统医学检测最大的区别在于它是评估器官的“功能(&nbsp;function&nbsp;)”。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;\">传统体检：主要针对人体已经出现的临床病变进行诊断和检查，它的主要任务是疾病的早期诊断。而事实上，很多疾病需要10几年乃至几十年的发展才能形成，往往疾病在发现后错过最佳的治疗时机。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;\">功能医学检测：健康状态的检测，评估影响器官功能的因子、器官的受损情况。通过功医学检测可以采取个性化干预手段使疾病不表达出来，预防疾病。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/2015/08/251421089006.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:18px;line-height:2;\"><strong>功能医学检测优势</strong></span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;\">全面性、系统性：功能医学检测不是针对人体某一部份器官检查而已，而是从人的基因、生活形态、环境、饮食、心灵这些方面逐个开展，系统地研究一切影响健康及引致疾病背后的种种错综复杂的因素。</span> \r\n</p>\r\n<p style=\"text-align:left;text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;\">检测不具侵袭：功能医学检测只需收集个人的粪便、尿液、唾液、血液及毛发进行分析、检测，评估人体六大功能系统，如：生理代谢功能分析、内分泌系统分析、营养状况分析、免疫系统分析、环境毒素分析、肠胃道系统分析。</span><img src=\"/uploads/2015/08/251542025740.jpg\" alt=\"\" style=\"font-size:14px;line-height:2;text-indent:2em;\" /> \r\n</p>\r\n<p style=\"text-align:center;text-indent:2em;\">\r\n	<span style=\"font-size:14px;line-height:2;text-align:center;text-indent:2em;\"></span> \r\n</p>\r\n<p style=\"text-align:center;text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:18px;line-height:2;color:#006600;\"><strong>功能医学检测意义</strong></span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\"><strong>功能医学是寻病源、除病根儿的医学</strong></span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\">功能医学以特有的矩阵问诊法，对病人病史、长期生活方式、基本情况做全面的问诊咨询，结合一整套系统的检测化验体系，科学地解读健康受损的原因，找到病根儿，并有针对性地提供有效的施治方案。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\"><strong>功能医学是个性化医疗方法</strong></span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\">功能医学是以“人”为本的医学，它通过了解与疾病症状、严重程度、持续时间相关的因素，进行分析治疗，并制定个性化的应对手段，弥补了传统医学以“病”为中心的滞后性和被动性。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\"><strong>功能医学是全面、系统的循证医学和预防医学</strong></span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\">功能医学除了治疗疾病外，更提倡健康的维护，它在生物指标的临床验证、统计学分析结果指导下，从遗传、环境、心理、生理和生活方式的关系着手，研究人体由功能下降到病理改变的发病过程，从而在保健、慢性病治疗以及抗衰老等方面提供诊断和干预治疗方案。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\"><strong>功能医学是针对慢病、亚健康人群进行健康管理的有效工具</strong></span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;text-indent:0pt;\">功能医学为病人提供早期干预、预防的系统和方法，可以大大降低慢性健康问题的发病率，减缓病情的严重程度，使病人不必等到疾病发生后才开始治疗。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<strong style=\"font-size:16px;line-height:2;\">功能医学是提高生命活力的医学</strong> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:2;\">健康是器官功能的最佳状态，不仅仅是不得病，而且是有活力的健康状态。功能医学可以调理人体各个生理系统的网络关联，以独具特色的诊断和治疗方法使人达到最具活力的生命状态。</span> \r\n</p>\r\n<span style=\"font-size:14px;line-height:2;\"> \r\n<hr />\r\n</span> \r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:center;\">\r\n	<span style=\"line-height:2;\"><strong><span style=\"font-size:18px;\">功能医学检查——</span><span style=\"color:#006600;font-size:18px;\">根源体检</span></strong></span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	<span style=\"font-size:16px;line-height:2;\">　　根源体检是查找疾病根源，探求疾病发生，发展过程的检查。任何疾病在发生前都有漫长的功能下降过程。通过功能医学的矩阵式问诊、功能基因组学、指标组学检测、物理及影像学检查，根源体检可以发现功能下降的区域及程度。人体的生理功能是相互关联的网络。根源体检通过数理公式及人工智能网络分析各个功能之间的相互关系，从而得出人体所处的疾病风险及其严重程度。疾病的产生是人体基因与外界环境相互作用的结果。根源体检给出个性化的生活方式，饮食，营养素服用及运动建议，以便降低疾病风险。根源体检应用了迄今为止最先进的体检理念，应用了最现代化的科学技术手段，是最完备地诠释疾病风险的身体检查。</span> \r\n</p>\r\n<div style=\"text-align:center;\">\r\n	<span style=\"text-indent:2em;line-height:1.5;\"></span><img src=\"/uploads/2015/08/251455065999.jpg\" alt=\"\" style=\"text-indent:2em;line-height:1.5;\" /> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('49', 'article', '47', '重金属螯合', '', '', '重金属螯合', '', '重金属螯合', '1', 'list_index.html', 'list_zyfw.html', 'list_image.html', 'zyfw_body.html', 'article_zyfw.html', '20', '', '', '0', '0', '0', '<h3 style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;\">　　</span><span lang=\"EN-US\" style=\"font-size:14px;\">Revita</span><span style=\"font-size:14px;\">螯合重金属排毒疗法　　</span><span style=\"text-indent:21pt;font-size:14px;font-weight:normal;line-height:1.5;\">　</span> \r\n</h3>\r\n<h4>\r\n	<div style=\"text-align:center;\">\r\n		<span style=\"font-weight:normal;line-height:1.5;font-size:14px;\">　　重金属污染</span> \r\n	</div>\r\n	<div style=\"text-align:center;\">\r\n		<span style=\"font-weight:normal;line-height:1.5;font-size:14px;\">　　生命不能承受之“重”</span> \r\n	</div>\r\n</h4>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\"><img src=\"/uploads/2014/03/270950509894.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">　　</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\">你对重金属了解多少？</span></b> \r\n</h4>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">一般来说，重金属是指比重大于</span><span lang=\"EN-US\" style=\"font-size:14px;\">5</span><span style=\"font-size:14px;\">、原子量大于</span><span lang=\"EN-US\" style=\"font-size:14px;\">55</span><span style=\"font-size:14px;\">的金属。从环境污染方面所说的重金属，主要是指汞、镉、铅、铬以及类金属砷。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<br />\r\n</p>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\">重金属离我们遥远吗？</span></b> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">你可否知道，国内重金属污染严重，每</span><span lang=\"EN-US\" style=\"font-size:14px;\">100</span><span style=\"font-size:14px;\">人当中，即有高达</span><span lang=\"EN-US\" style=\"font-size:14px;\">85</span><span style=\"font-size:14px;\">人有体内重金属过高问题。</span><span style=\"text-indent:21pt;line-height:1.5;font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">由于人类对重金属的开采、冶炼、加工及商业制造活动日益增多，造成不少重金属如铅、汞、镉、钴等进入大气、水、土壤中，引起严重的环境污染。废水排出的重金属，也可在藻类和底泥中积累，被鱼和贝的体表吸附，产生食物链浓缩，从而造成公害。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">汽车尾气排放的铅经大气扩散等过程进入环境中，造成目前地表铅的浓度已有显着提高，致使近代人体内铅的吸收量比原始人增加了约</span><span lang=\"EN-US\" style=\"font-size:14px;\">100</span><span style=\"font-size:14px;\">倍，损害了人体健康。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\">诸多事件已敲响警钟</span></b> \r\n</h4>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">在湖南郴州，一家铅冶炼厂附近的村庄至少有</span><span lang=\"EN-US\" style=\"font-size:14px;\">250</span><span style=\"font-size:14px;\">名儿童被查出血铅超标；在湖南浏阳郊区，由一家化工厂排污引发的镉污染事件，造就了一大批奇形怪状的“变脸”果蔬，完全不能食用；在土壤重金属污染日趋严重的长三角地区，已经发现“镉米”、“铅米”、“汞米”……</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">“污染一次，遗患万年”，说的是重金属对土壤造的孽。天津市农业资源与环境研究所</span><span lang=\"EN-US\" style=\"font-size:14px;\">20</span><span style=\"font-size:14px;\">多年来对蔬菜中重金属的监测显示出一条令人忧心的轨迹：施用城市垃圾肥的土壤，有</span><span lang=\"EN-US\" style=\"font-size:14px;\">5</span><span style=\"font-size:14px;\">种重金属含量高于背景值，其中汞达到背景值的</span><span lang=\"EN-US\" style=\"font-size:14px;\">30</span><span style=\"font-size:14px;\">多倍；而污灌区土壤，</span><span lang=\"EN-US\" style=\"font-size:14px;\">8</span><span style=\"font-size:14px;\">种重金属含量全部高于背景值，其中镉超出</span><span lang=\"EN-US\" style=\"font-size:14px;\">10</span><span style=\"font-size:14px;\">倍，汞超出</span><span lang=\"EN-US\" style=\"font-size:14px;\">125</span><span style=\"font-size:14px;\">倍</span><span lang=\"EN-US\" style=\"font-size:14px;\">(</span><span style=\"font-size:14px;\">土壤中本来含有一定的重金属，未受外界污染土壤的重金属含量称为土壤背景值</span><span lang=\"EN-US\" style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;重金属染指的不只是农作物，还有水产品、猪肉等。</span> \r\n</h4>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">2005年，江苏省环境监测中心对省内四大湖泊水产养殖区及近海水域水产品质量进行调查，结果约四成样品镉、铅、汞等重金属含量超标，其中</span><span lang=\"EN-US\" style=\"font-size:14px;\">27%</span><span style=\"font-size:14px;\">受到中度乃至重度污染。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">此外，吸烟已被证明能大大增加人体对镉的吸收</span><span lang=\"EN-US\" style=\"font-size:14px;\">(</span><span style=\"font-size:14px;\">香烟发出的烟雾，是瘾君子镉暴露的重大来源，它比较容易被肺吸收</span><span lang=\"EN-US\" style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">重金属危害是个隐形杀手，难以提防，排出重金属，刻不容缓！</span> \r\n</h4>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<br />\r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">重金属</span><span lang=\"EN-US\" style=\"font-size:14px;\">----</span><span style=\"font-size:14px;\">健康的杀手</span><span lang=\"EN-US\"><span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><o:p></o:p></span> \r\n</h4>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:left;text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">　重金属污染对处在食物链末端的人来说，危害尤甚。重金属毒物会累积在人体的脑、肾、肝及免疫系统，长期下来会产生肌肉骨骼关节莫明疼痛、贫血、失眠，情绪不安、老人痴呆、儿童学习障碍、异位性皮肤炎、慢性荨麻疹、自体免疫疾病、内分泌失调、疲劳、头晕等等都与重金属毒性有关。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">　　</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">【典型症状】</span> \r\n</h4>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp; 关节疼痛，不明原因发热头痛，情绪暴躁，睡眠差，记忆力下降，脱发等</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">【对人体的损伤】</span> \r\n</h4>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">神经系统</span><span lang=\"EN-US\" style=\"font-size:14px;\">-------</span><span style=\"font-size:14px;\">智力，思维，学习能力下降，早老性痴呆提前；生殖系统</span><span lang=\"EN-US\" style=\"font-size:14px;\">---</span><span style=\"font-size:14px;\">增加不孕不育风险，可能导致后代畸形；骨骼和肌肉</span><span lang=\"EN-US\" style=\"font-size:14px;\">---</span><span style=\"font-size:14px;\">贮存在骨骼中，反复不明原因疼痛乏力，骨质破坏，免疫力下降</span><span lang=\"EN-US\" style=\"font-size:14px;\">----</span><span style=\"font-size:14px;\">严重损伤免疫力，肿瘤发病升高</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span><b style=\"text-indent:21pt;line-height:1.5;\"><span style=\"font-size:14px;\">　　</span></b> \r\n</p>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\">神奇的螯合排毒疗法</span></b> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">「螯合排毒疗法」就是帮助您将心血管里面有害、金属等等毒素排出体外的治疗方法。</span> \r\n</h4>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">&nbsp;螯合排毒疗法（</span><span lang=\"EN-US\" style=\"font-size:14px;\">Chelation Therapy</span><span style=\"font-size:14px;\">）是将</span><span lang=\"EN-US\" style=\"font-size:14px;\">EDTA</span><span style=\"font-size:14px;\">（</span><span lang=\"EN-US\" style=\"font-size:14px;\">Ethylenediamine Tetra-Acetic Acid</span><span style=\"font-size:14px;\">）药剂合并特定的维他命、胺基酸、矿物质</span><span lang=\"EN-US\" style=\"font-size:14px;\">..</span><span style=\"font-size:14px;\">等，以医师诊断投用的方式做治疗。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">螯合排毒疗法的主要功效是将体内有害的重金属如铅、镉、铁、汞等排出体外，而这些重金属主要是由于现代环境污染所造成。螯合排毒疗法的药剂合并重金属产生化合作用，透过尿液排出体外，以减少污染。螯合剂会将那些有害、过量或异位的重金属毒素：如铅、水银、镉、铝‧‧‧等，以无毒害的状态，安全地经排泄器官（肾脏为主）排出体外，让组织、器官恢复正常。</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp; 早在</span><span lang=\"EN-US\" style=\"font-size:14px;\">40</span><span style=\"font-size:14px;\">年代，医学界已研究出用「螯合排毒疗法」医治重金属中毒的病人。从</span><span lang=\"EN-US\" style=\"font-size:14px;\">50</span><span style=\"font-size:14px;\">年代开始，有些医生察觉到病人在接受「螯合疗法」治疗后，很多病痛都得以改善，尤其以患心脏血管系统的病患较为显著，便开始尝试用「螯合排毒疗法」治疗这方面的病，如血管栓塞与硬化、心绞痛及手足坏疽等。而近年来，「螯合排毒疗法」更发展到疾病的预防方面，例如癌症、高血压、心脏病、中风、糖尿病、老人痴呆等等。　　</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;text-indent:21.0pt;\">\r\n	<span style=\"font-size:14px;\">　　</span><span style=\"text-indent:21pt;line-height:1.5;font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\">REVITA</span></b><b><span style=\"font-size:14px;\">重金属螯合排毒疗程</span></b><span style=\"text-align:center;text-indent:21pt;font-weight:normal;line-height:1.5;font-size:14px;\">　　</span> \r\n</h4>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">卓维抗衰老庄园首席螯合疗法专家张秀辉教授经过多年的临床研究，独创全新的“</span><span lang=\"EN-US\" style=\"font-size:14px;\">Revita</span><span style=\"font-size:14px;\">重金属螯合排毒疗法”，依据重金属螯合检测评估诊断和监控，通过细胞排毒、排自由基，净化体内环境，实现身体年轻、健康美丽、心灵美化的梦想！</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">&nbsp;对于重金属螯合排毒的适应人群，张秀辉教授表示：“由于目前环境污染、食品安全等问题非常严重，严格意义上来说，</span><span lang=\"EN-US\" style=\"font-size:14px;\">30</span><span style=\"font-size:14px;\">岁以上的人群，都需要彻底排毒一次。但一般以想要停住时间的脚步，延长年轻时光，生理与皮肤健康，身心美丽的人群为主要推荐对象。”</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"text-indent:21pt;line-height:1.5;font-size:14px;\">&nbsp;</span><b style=\"line-height:1.5;\"><span style=\"font-size:14px;\">　</span></b><span style=\"text-align:center;text-indent:21pt;line-height:1.5;font-size:14px;\">　</span><span style=\"text-align:center;text-indent:21pt;line-height:1.5;font-size:14px;\">　　</span><span style=\"text-align:center;text-indent:21pt;line-height:1.5;font-size:14px;\">　　</span> \r\n</p>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\">Revita</span></b><b><span style=\"font-size:14px;\">金属螯合排毒疗法可以帮助您</span><span lang=\"EN-US\" style=\"font-size:14px;\">:</span></b><span style=\"text-align:center;text-indent:21pt;font-weight:normal;line-height:1.5;font-size:14px;\">&nbsp;</span> \r\n</h4>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">皮肤</span><span lang=\"EN-US\" style=\"font-size:14px;\">----</span><span style=\"font-size:14px;\">皮肤紧致有光泽，减少暗沉，雀斑</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">口腔及消化系统</span><span lang=\"EN-US\" style=\"font-size:14px;\">----</span><span style=\"font-size:14px;\">口腔无异味、牙龈健康，腹痛腹泻症状改善</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">代谢系统</span><span lang=\"EN-US\" style=\"font-size:14px;\">----</span><span style=\"font-size:14px;\">提高年轻时候的新陈代谢能力，改善代谢疾病如糖尿病等</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">生殖系统</span><span lang=\"EN-US\" style=\"font-size:14px;\">----</span><span style=\"font-size:14px;\">保护下一代的聪明健康</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">神经系统</span><span lang=\"EN-US\" style=\"font-size:14px;\">----</span><span style=\"font-size:14px;\">提高记忆力，延缓大脑衰老</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">　　</span><span lang=\"EN-US\"><o:p></o:p></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('50', 'article', '47', '细胞净化与激活', '', '', '细胞净化与激活', '', '细胞净化与激活', '1', 'list_index.html', 'list_zyfw.html', 'list_image.html', 'zyfw_body.html', 'article_zyfw.html', '20', '', '', '0', '0', '0', '<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">物洗则洁，心洗则清</span> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp;　　人体的内环境就像鱼缸里的水，细胞就像鱼缸里的鱼。鱼缸里的水受到污染变得混浊，鱼就会受到污染而生病。必须把鱼缸里的水慢慢换掉，补充鱼所需要的能量，同时帮助鱼排出体内的毒素，鱼才能逐步恢复健康。（要保持鱼的健康需要定期的清洁、调理、补充能量。）</span><span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"font-size:14px;\"></span> \r\n<p>\r\n	<br />\r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">Revita细胞净化与激活中心</span> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">突破科技巨献——细胞净化与激活第一品牌</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">卓维 .Revita细胞净化与激活中心</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">由2010 年美国总统奖功能医学最佳成就奖得主,美籍专家Dr. Queenie Mei 带领其团队,根据在美国多年的治疗经验，整合目前国际最先进的细胞净化与激活理念和方法，结合亚洲人体质,独创了全新:</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">◎Arrest(抓毒)</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">◎Detoix(解毒)</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">◎Remove(排毒)</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">◎Active(细胞激活)</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">四级360°Revita细胞净化与激活疗法</span><o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img src=\"/uploads/2014/03/211544198896.jpg\" alt=\"\" /><span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">Revita 细胞净化与激活的原理</span> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">细胞净化与激活疗法是当今最先进的排毒疗法，目前已经发展到第二代。第一代是单一的把解毒酶送到细胞内进行解毒，只有净化没有激活，而</span><span style=\"font-size:14px;\">Revita </span><span style=\"font-size:14px;\">细胞净化与激活系统是第二代疗法，是在保护并激活组织、细胞自身功能的前提下，采用</span><span style=\"font-size:14px;\">A.D.R.A </span><span style=\"font-size:14px;\">四级一体的逐步疗程将深藏在细胞内，以及特殊组织内的毒素螯合出来，或送到肝脏解毒后排出，或直接送到排毒部位排出。</span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">Arrest(\r\n抓毒</span><span style=\"font-size:14px;\"> )</span> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">采用国际上最先进的</span><span style=\"font-size:14px;\">EDTA </span><span style=\"font-size:14px;\">螯合物及多种天然萃取物，螯合出细胞内及骨骼、神经、大脑、血液、脂肪中残留的重金属、排出体内的化学毒素、防腐剂、清洁剂、环境荷尔蒙、残留农药等毒性物质（如铅、铝、镉、汞、砷、有机质等）。</span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">Detox( 解毒</span><span style=\"font-size:14px;\"> )</span> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">通过补充谷胱甘肽、硫辛酸、水飞蓟、氨基酸等植物萃取精华，，提升肝脏的解毒代谢功能， 使其转化为无毒害或易于排出的代谢物。总之，解毒就是解除毒素的毒性并提高它的可排泄性。</span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">Remove(Remove( 排毒</span><span style=\"font-size:14px;\"> )</span> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">应用</span><span style=\"font-size:14px;\">20 </span><span style=\"font-size:14px;\">余种物理和化学的方法，维护、挖掘、激活、强化身体的各种排毒途径的排毒功能，\r\n使毒素从肾脏，肠胃，肺部，皮肤等处顺利排出。排毒渠道更广，排毒更彻底，排毒量更大！</span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">Active( 激活</span><span style=\"font-size:14px;\"> )</span> \r\n</h4>\r\n<p class=\"Default\" style=\"text-align:justify;\">\r\n	<span style=\"font-size:14px;\">通过细胞激活设备发出特殊的脉冲，使全身细胞发出共鸣，促进细胞和神经间信息的沟通，激活细胞，提升细胞能量。同时配合补充活细胞萃取物的分子，使各器官细胞功能更快速得到全面提升。</span><span></span> \r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</h4>\r\n<h4>\r\n	<span style=\"font-size:14px;\">Revita细胞净化与激活的原理</span> \r\n</h4>\r\n<p class=\"Default\" style=\"text-align:justify;\">\r\n	<span></span> \r\n</p>\r\n<p class=\"Default\" style=\"text-align:justify;\">\r\n	<span style=\"font-size:14px;\">细胞净化与激活疗法是当今最先进的排毒疗法，目前已经发展到第二代。第一代是单一的把解毒酶送到细胞内进行解毒，只有净化没有激活，而</span><span style=\"font-size:14px;\">Revita</span><span style=\"font-size:14px;\">细胞净化与激活系统是第二代疗法，是在保护并激活组织、细胞自身功能的前提下，采用</span><span style=\"font-size:14px;\">A.D.R.A</span><span style=\"font-size:14px;\">四级一体的逐步疗程将深藏在细胞内，以及特殊组织内的毒素螯合出来，或送到肝脏解毒后排出，或直接送到排毒部位排出。Arrest(抓毒</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">采用国际上最先进的</span><span style=\"font-size:14px;\">EDTA</span><span style=\"font-size:14px;\">螯合物及多种天然萃取物，螯合出细胞内及骨骼、神经、大脑、血液、脂肪中残留的重金属、排出体内的化学毒素、防腐剂、清洁剂、环境荷尔蒙、残留农药等毒性物质（如铅、铝、镉、汞、砷、有机质等）。Detox(解毒</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">通过补充谷胱甘肽、硫辛酸、水飞蓟、氨基酸等植物萃取精华，，提升肝脏的解毒代谢功能，使其转化为无毒害或易于排出的代谢物。总之，解毒就是解除毒素的毒性并提高它的可排泄性。Remove(排毒</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">应用</span><span style=\"font-size:14px;\">20</span><span style=\"font-size:14px;\">余种物理和化学的方法，维护、挖掘、激活、强化身体的各种排毒途径的排毒功能，使毒素从肾脏，肠胃，肺部，皮肤等处顺利排出。排毒渠道更广，排毒更彻底，排毒量更大！Active(激活</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">通过细胞激活设备发出特殊的脉冲，使全身细胞发出共鸣，促进细胞和神经间信息的沟通，激活细胞，提升细胞能量。同时配合补充活细胞萃取物的分子，使各器官细胞功能更快速得到全面提升。</span><span></span> \r\n</p>\r\n<p class=\"Default\" style=\"text-align:justify;\">\r\n	<span style=\"font-size:14px;\">在进行</span><span style=\"font-size:14px;\">Revita</span><span style=\"font-size:14px;\">疗法的同时，</span><span style=\"font-size:14px;\">Dr.AlanZ.H.Deng</span><span style=\"font-size:14px;\">更是利用风靡于美、加、法、英、澳等国的神奇整脊疗法，贯穿于整个疗程中，以加强组织器官间的神经传导，促进细胞净化与激活，助力疗效！</span><span></span> \r\n</p>\r\n<p class=\"Pa1\" style=\"text-align:justify;\">\r\n	<span style=\"font-size:14px;\">当你随着以上的步骤一点点做起的时候，身体的净化系统就会逐渐开始发挥作用，</span><span style=\"font-size:14px;\">2</span><span style=\"font-size:14px;\">到</span><span style=\"font-size:14px;\">3</span><span style=\"font-size:14px;\">天时间以后，自然能够感受到“细胞净化”给您身体带来的畅快感受啦！</span><span></span> \r\n</p>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\"><br />\r\n</span></b> \r\n</h4>\r\n<h4>\r\n	<b><span style=\"font-size:14px;\">Revita </span></b><b><span style=\"font-size:14px;\">细胞净化与激活与传统排毒的区别</span><span></span></b> \r\n</h4>\r\n<p class=\"Pa1\" style=\"text-align:justify;\">\r\n	<span style=\"font-size:14px;\">传统排毒方法往往只注重“排”，排毒方式也只局限于某些器官，如皮肤，肠道。而</span><span style=\"font-size:14px;\">Revita</span><span style=\"font-size:14px;\">疗法在传统排毒理念基础上，“Arrest( 抓毒</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">、</span><span style=\"font-size:14px;\">Detoix( </span><span style=\"font-size:14px;\">解毒</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">、</span><span style=\"font-size:14px;\">Remove( </span><span style=\"font-size:14px;\">排毒</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">、</span><span style=\"font-size:14px;\">Ac tive( </span><span style=\"font-size:14px;\">激活</span><span style=\"font-size:14px;\">)</span><span style=\"font-size:14px;\">”四级</span><span style=\"font-size:14px;\">360</span><span style=\"font-size:14px;\">°的全新解毒方式，不仅有效地排出身体毒素，更全面的净化与激活细胞。</span> \r\n</p>\r\n<span style=\"font-size:14px;\"></span> \r\n<p>\r\n	<br />\r\n</p>\r\n<o:p></o:p>\r\n<p>\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('51', 'article', '47', '美式整脊', '', '', '美式整脊', '', '美式整脊', '1', 'list_index.html', 'list_zyfw.html', 'list_image.html', 'zyfw_body.html', 'article_zyfw.html', '20', '', '', '0', '0', '0', '<p class=\"Pa0\" style=\"text-align:justify;\">\r\n	<span class=\"A0\" style=\"font-size:14px;\">&nbsp;&nbsp;</span><span class=\"A0\"><span style=\"font-size:14px;\">脊柱对我们人体是非常重要的，脊柱是人体的中柱，它担负着承重的作用，还参与人体的运动和平衡，对于心、肺、肝、脾等内脏器官，起到一个保护的作用，更重要的是对于脊髓有保护作用。</span><span></span></span> \r\n</p>\r\n<p class=\"Pa0\" style=\"text-align:justify;\">\r\n	<span class=\"A0\" style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp; </span><span class=\"A0\"><span style=\"font-size:14px;\">调查统计，我国中年人群中</span><span style=\"font-size:14px;\">97% </span><span style=\"font-size:14px;\">有脊椎疾病，近年来，又呈年轻化趋势，</span><span style=\"font-size:14px;\">40 </span><span style=\"font-size:14px;\">岁以下的人群中，</span><span style=\"font-size:14px;\">40% </span><span style=\"font-size:14px;\">以上的人脊椎有各种疾病。</span></span> \r\n</p>\r\n<p class=\"Pa0\" style=\"text-align:justify;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span class=\"A0\" style=\"font-size:14px;\">在欧美，社会名流、明星、政客都已经普遍使用整脊来保养和调理自己的健康平衡。全美有</span><span class=\"A0\" style=\"font-size:14px;\">18</span><span class=\"A0\" style=\"font-size:14px;\">所学校，</span><span class=\"A0\" style=\"font-size:14px;\">8</span><span class=\"A0\" style=\"font-size:14px;\">万多合法的整脊医师，在</span><span class=\"A0\" style=\"font-size:14px;\">50</span><span class=\"A0\" style=\"font-size:14px;\">个州都设有甚具规模的整脊医院，为全美医疗界开创了新象。不久前，据新闻报道，整脊医师的年收入，已列为美国前十大收入排行榜。整脊疗法在美国的发展，不但使美国人受益，还将这一套理论、疗法和经验传播世界各先进国家。至今已有英、加、德、法、荷、瑞士、瑞典、俄国，以及东方的日本、新加坡等</span><span class=\"A0\" style=\"font-size:14px;\">24</span><span class=\"A0\" style=\"font-size:14px;\">个国家公认为有效的医疗技术，其学术地位也已获得肯定。</span><span class=\"A0\"></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span class=\"A0\" style=\"font-size:14px;\">脊椎医学，流行欧美脊椎神经医学的鼻祖，是美国的帕马医师（</span><span class=\"A0\" style=\"font-size:14px;\">D.D.Patmer</span><span class=\"A0\" style=\"font-size:14px;\">）。他在</span><span class=\"A0\" style=\"font-size:14px;\">1895</span><span class=\"A0\" style=\"font-size:14px;\">年，根据人体脊椎骨和神经系统的原理，悟出一套与我国古老的</span><span class=\"A0\" style=\"font-size:14px;\">“</span><span class=\"A0\" style=\"font-size:14px;\">推拿术</span><span class=\"A0\" style=\"font-size:14px;\">”</span><span class=\"A0\" style=\"font-size:14px;\">和</span><span class=\"A0\" style=\"font-size:14px;\">“</span><span class=\"A0\" style=\"font-size:14px;\">跌打损伤</span><span class=\"A0\" style=\"font-size:14px;\">”</span><span class=\"A0\" style=\"font-size:14px;\">相若的整脊疗法。该疗法是根据人体脊椎脱出的位置，采用不同的坐、卧姿，通过各种手法的运用，在数分钟内能达成止痛和治疗效果。也就是利用自然痊愈的方法，矫正脊椎，使神经不再受到侵犯，而恢复原有功能，是用最温和最有效的方法从根本上治疗疾病。</span><span class=\"A0\"></span> \r\n</p>\r\n<p class=\"Pa1\" style=\"text-align:justify;\">\r\n	<br />\r\n</p>\r\n<p class=\"Pa1\" style=\"text-align:justify;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span><span style=\"font-size:14px;\">•\r\n慢性、急性背痛和颈部疼痛</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">• 肌肉疼痛、肌腱炎、扭伤</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">• 坐骨神经痛、手脚麻痛、关节僵硬</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">• 超出正常范围的痛、心慌</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">• 消化和泌尿系统疾病</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">• 压力、失眠、疲劳</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span class=\"A0\" style=\"font-size:14px;\">许多人都不知道以上症状都与神经和脊椎的受损、老化有关</span><span class=\"A0\" style=\"font-size:14px;\">,</span><span class=\"A0\" style=\"font-size:14px;\">这些都是自身功能下降所产生的症状，我们应该提高警惕，不容忽视。</span><span class=\"A0\"></span> \r\n</p>\r\n<span style=\"font-size:14px;\"></span><img src=\"/uploads/2014/03/271158034718.jpg\" alt=\"\" /><br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"Pa1\" style=\"text-align:justify;\">\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('52', 'article', '47', '德国活细胞之旅', '', '', '德国活细胞之旅', '', '德国活细胞之旅', '1', 'list_index.html', 'list_zyfw.html', 'list_image.html', 'zyfw_body.html', 'article_zyfw.html', '20', '', '', '0', '0', '0', '<p>\r\n	<img src=\"/uploads/2014/03/270911243490.jpg\" alt=\"\" style=\"line-height:1.5;\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">德国卓维活细胞分子疗法旨在唤醒沉睡中的细胞，从而刺激及修复已存在细胞的机能，它不仅可以针对衰老或者疾病症状，更可以作为预防疾病和衰老的有效措施，解决因身体透支而带来的各种健康问题。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">疗效大致如下：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">皮肤光滑，有光泽，细小皱纹减少。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">增强免疫力，提高机体的防御能力，降低患癌症的风险。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">提升代谢，全面改善身体现状，使机体保持青春活力和年轻状态。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">修复受损的器官，使衰退的器官功能得到极大的改善，尤其对生殖系统的修复作用，可以很大程度上提高性功能和性欲。对男性，可增加精子数量，对女性，可以延缓卵巢衰老。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">恢复精力，有效缓解失眠、减轻注意力不集中、易疲劳、神经衰弱等随着年龄增长或外界压力引起的症状。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">对心血管疾病、糖尿病、老年痴呆、过敏、慢性炎症、疲劳、骨关节疾病等都有极好的疗效。</span> \r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('96', 'article', '86', '疗养感言', '', '', '疗养感言', '', '疗养感言', '1', 'list_index.html', 'list_rj.html', 'list_image.html', 'list_body.html', 'article_rj.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('97', 'article', '86', '健康代言', '', '', '健康代言', '', '健康代言', '1', 'list_index.html', 'list_rj.html', 'list_image.html', 'list_body.html', 'article_rj.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('55', 'article', '0', '健康生活方式', '', '', '健康生活方式', '', '健康生活方式', '3', 'list_index.html', 'list.html', 'list_image.html', 'shfs_body.html', 'article.html', '20', '', '', '0', '0', '7', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('87', 'article', '69', '庄园新闻', '', '', '庄园新闻', '', '庄园新闻', '1', 'list_index.html', 'list_zx.html', 'list_image.html', 'list_body.html', 'article_zx.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('88', 'article', '86', '视频、疗养效果图片对比', '', '', '视频、疗养效果图片对比', '', '视频、疗养效果图片对比', '1', 'list_index.html', 'list_rj.html', 'list_image.html', 'list_body.html', 'article_rj.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('89', 'article', '0', '策论联盟', '', '', '策论联盟', '', '策论联盟', '3', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', '20', '', '', '0', '0', '0', '策论联盟', '0', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('90', 'article', '0', '友情链接', '', '', '友情链接', '', '友情链接', '1', 'list_index.html', 'list_link.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '0', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('78', 'article', '66', '自然养生', '', '', '自然养生', '', '自然养生', '1', 'list_index.html', 'list.html', 'list_image.html', 'zk_body.html', 'article.html', '20', '', '', '0', '0', '0', '<h1 style=\"margin:0px;padding:0px;font-family:����;width:503px;background-image:url(http://www.cnys.com/images/xuxian_heng02.gif);background-color:#F5FAFF;font-size:20px;color:#00537D;line-height:30px;float:left;white-space:normal;background-position:0% 100%;background-repeat:repeat no-repeat;\">\r\n</h1>\r\n<h1 style=\"white-space:normal;margin:0px;padding:0px;font-family:����;width:503px;background-image:url(http://www.cnys.com/images/xuxian_heng02.gif);background-color:#F5FAFF;font-size:20px;color:#00537D;line-height:30px;float:left;background-position:0% 100%;background-repeat:repeat no-repeat;\">\r\n	<p class=\"MsoNormal\">\r\n		<span style=\"color:#000000;font-size:14px;\">自然养生应该是以遵循大自然的客观规律，顺应天时地理，等来追求的生存之道与养生目的，期间也包括食用自然生长的食物，自然养生疗法。</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<span style=\"color:#000000;font-size:14px;\"><br />\r\n</span>\r\n	</p>\r\n<br />\r\n</h1>\r\n<br />', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('79', 'article', '66', '体重管理', '', '', '体重管理', '', '体重管理', '1', 'list_index.html', 'list.html', 'list_image.html', 'zk_body.html', 'article.html', '20', '', '', '0', '0', '0', '<h4>\r\n	<b>黑心油品事件补充包－棉籽油大解析</b> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; &nbsp;</span>黑心油添加棉籽油，可能导致不孕的相关报导，相信让所有的民众忧心忡忡。棉籽油的确是台湾民众比较陌生的油，但其实棉籽油只要经过精制就不会有毒性，在美国也是用量第<span>3</span>大的食用油。以下就简单介绍棉籽油给大家认识，希望大家不要因为近期的新闻对它产生错误印象！\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<h4>\r\n	什么是棉籽油？\r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>棉籽油（<span>Cottonseed oil</span>）是从棉花属植物种子榨取的油，精制后可供食用，含大量必须脂肪酸及不饱和脂肪酸，且稳定耐高温（发烟点<span>215℃</span>），在美国棉籽被列为粮食作物，棉籽油则为美国第<span>3</span>大食用油。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	然而，必须注意的是未精制的棉籽油含有棉酚<span>(Gossypol)</span>，具有生殖毒性，因此未经过精炼的棉籽油并不建议食用。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<h4>\r\n	棉酚有什么健康问题？\r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>棉酚对人体生殖系统伤害最大，对男性造成睪丸萎缩、精虫数量及活力减少；对女性则造成停经、子宫萎缩、子宫肌瘤、功能性子宫出血等问题。其他人体中毒症状：疲劳、脸部及其他外露部位灼热症状、低血钾。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	是否有相关法规<span>?</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>台湾目前尚无任何规范，立法院刚刚通过临时提案，规范油品不得检出棉酚，若油品使棉籽油，也需明确标示。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	中国大陆则规定，食用棉籽油的棉酚比率应低于<span>0.02%</span>。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<h4>\r\n	棉酚的其他用途\r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>棉酚只要使用得当，其实有广泛的用途，以下为棉酚在各领域的应用。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>1. </span>男性抗生育用药。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>2. </span>抗肿瘤药物：研究发现棉酚对胃癌、肺癌、肝癌、结肠癌、淋巴癌等多种癌症有疗效，且与传统化疗药物相较，副作用发生率低，也易于处理，是值得进一步研究发展的抗肿瘤药物。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>3. </span>工业用途：为天然色素，可作为棉花染料，另外在橡胶工业、石油工业、塑料工业、聚乙烯工业、聚丙烯工业、火箭燃料中，有抗氧化剂的用途。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>4. </span>控制动植物生长：应用于杀虫剂。\r\n</p>\r\n<h4>\r\n	<b>黑心油品事件补充包－教您认清橄榄油、调和油</b> \r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span>近日爆发的黑心油新闻，相信听闻者无不感到哗然，事件的爆发也让消费者忧心忡忡，到底该怎么选油又成了关注话题。以下就针对新闻中几项议题跟大家分享，希望帮助民众更清楚如何做出正确选择！\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>1. </span>什么是铜叶绿素？\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	【使用目的】铜叶绿素（<span>Copper\r\nChlorophyll</span>）为合法可添加于食品的着色剂，是将叶绿素中的镁离子置换为铜离子，呈青绿色泽。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	【使用范围】\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>1) </span>可使用于口香糖及泡泡糖，用量以铜计为<span>0.04g/kg</span>以下。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>2) </span>可使用于胶囊状、锭状食品，用量为<span>0.5g/kg</span>以下。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	【过量危害】\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>1. </span>铜建议量：欧盟建议<span>60</span>公斤成人每日摄取不可超过<span>5</span>毫克。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>2. </span>铜少量添加于食物中不会有危害，但突然间大量摄取可能会刺激肠胃道，引起恶心、呕吐、腹泻症状，也可能损害肝肾功能。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>3. </span>叶绿素毒性低，一般不易出现不适状况，国际间无摄取限制。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>虽然说铜叶绿素毒性不高且可合法添加于食品，但依规定不能添加于食用油，且食用油根本不需要添加任何着色剂，此为此次事件为人诟病之处。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>2. </span>该怎么挑选橄榄油？\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>油脂经过层层加工精练，去除水分与杂质，虽会变的稳定耐高温，但是油品本身的营养素也会消失殆尽，在加工过程中更添加了各种化学添加物，可能包括反式脂肪、化学聚合物、环状物、乙醛、酮、环氧化物、过氧化氢等具有毒性的有害物质，这就是为什么建议选择未精制油的原因。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>橄榄油之所以健康，除了富含不饱和脂肪酸之外，橄榄油本身所含有的橄榄多及维生素<span>E</span>均为很好的抗氧化剂。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;&nbsp; </span>因此顶级的橄榄油的榨取只将果实在低温过程中捣碎挤压，因此可以完整保留营养成分。而愈是经过多次榨取，橄榄油的营养成分就愈低，酸价（游离脂肪酸的比例，当油脂酸败，酸价会上升，因此酸价可作为油脂变质程度的指标）也愈高；若再经过高温蒸馏或化学溶剂精炼，营养成份会完全消失殆尽！\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span><span style=\"line-height:1.5;\">下表为国际橄榄油协会对于橄榄油分类，可看出愈少加工，橄榄油的质量就愈好。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"line-height:1.5;\"><img src=\"/uploads/2014/03/221420135671.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"line-height:1.5;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	图片来源：国际橄榄油协会\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">&nbsp;&nbsp; </span>不过也要提醒大家初榨橄榄油营养价值虽然高，但也比较不稳定，除了开封后需尽早食用完毕之外，也不建议用于高温炒炸。如果需要高温烹调，会建议选用未精制的苦茶油、玄米油、葡萄子油等耐高温的油品。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">3. </span>调和油到底好不好？\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">&nbsp;&nbsp; </span>调和油是使用了两种以上的油品调和，只要产品包装上清楚标示，都是合法的，而市面上更有许多宣称黄金脂肪酸比例的健康调和油，到底是不是真的好呢？有两个重点是大家必须考虑的：\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">1) </span>食用油只占每日脂肪摄取的一小部分，其他的饮食内容都会影响我们的脂肪酸摄取比例，<span lang=\"EN-US\">&nbsp;&nbsp;&nbsp;&nbsp; </span>因此单靠吃了黄金比例的调和油，并不代表脂肪摄取就能达黄金比例。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">2) </span>调和油都经过加工精制，依前面所述，这样的油已经失去了天然营养，其实并不算是健康的食用油。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\">&nbsp;</span> \r\n</p>\r\n<h4>\r\n	因此，还是比较建议大家选择单品的未精制食用油，才能保留油脂最佳营养价值！\r\n</h4>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"line-height:1.5;\"><br />\r\n</span> \r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('98', 'article', '89', '中华医学会健康管理分会', '', '', '中华医学会健康管理分会', '', '中华医学会健康管理分会', '1', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('99', 'article', '89', '中国三甲医院体检联盟', '', '', '中国三甲医院体检联盟', '', '中国三甲医院体检联盟', '1', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('100', 'article', '89', 'A4M', '', '', 'A4M', '', 'A4M', '1', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('101', 'article', '89', 'OptimNutri中央营养中心', '', '', 'OptimNutri中央营养中心', '', 'OptimNutri中央营养中心', '1', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('102', 'article', '89', '功能医学实验室', '', '', '功能医学实验室', '', '功能医学实验室', '1', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', 'cllm.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('81', 'article', '66', '心血管保健', '', '', '心血管保健', '', '心血管保健', '1', 'list_index.html', 'list.html', 'list_image.html', 'zk_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('82', 'article', '66', '环境隐患', '', '', '环境隐患', '', '环境隐患', '1', 'list_index.html', 'list.html', 'list_image.html', 'zk_body.html', 'article.html', '20', '', '', '0', '0', '0', '<p>\r\n	<br />\r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">怎么吃鱼最安心？</span>\r\n</h4>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:left;\">\r\n	<o:p></o:p>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;&nbsp; </span><span style=\"font-size:14px;\">多吃深海鱼已经是众所皆知的健康之道，然而深海鱼可能含重金属的疑虑，却也让许多人望之却步，究竟深海鱼能不能吃？如果改吃淡水鱼，能不能有一样的健康效益？而该怎么吃深海鱼，才是健康又安全的呢？</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;</span>\r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">海水鱼</span><span lang=\"EN-US\" style=\"font-size:14px;\">PK.</span><span style=\"font-size:14px;\">淡水鱼</span>\r\n</h4>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp; </span><span style=\"font-size:14px;\">首先，不论是海水鱼或淡水鱼，都含丰富蛋白质、维生素</span><span lang=\"EN-US\" style=\"font-size:14px;\">D</span><span style=\"font-size:14px;\">、及多种矿物质，且相较于肉类，饱和脂肪酸含量较低，是比肉类更为健康的蛋白质食物来源。然而，海水鱼和淡水鱼在营养价值上还是有所差异，参阅下表即可看出两者的不同。海水鱼比起淡水鱼，含有更丰富的</span><span lang=\"EN-US\" style=\"font-size:14px;\">ω-3</span><span style=\"font-size:14px;\">脂肪酸，对于成长中的孩子，可提供脑部发育所需的</span><span lang=\"EN-US\" style=\"font-size:14px;\">DHA</span><span style=\"font-size:14px;\">；对于成人，则具有抗发炎与调降血脂肪的功能；此外，深海鱼也较淡水鱼含更多牛磺酸，有助于视觉、神经系统发育，并可调节血脂、加强肝脏解毒作用；但相对的，深海鱼也有普林、组织胺含量较高，以及可能有重金属污染等问题，提醒尿酸偏高及过敏体质者需谨慎摄取。</span>\r\n</p>\r\n<h4>\r\n	<span style=\"font-size:14px;\">海水鱼与淡水鱼比较表</span>\r\n</h4>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border:none;\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">&nbsp;</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">海水鱼</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">淡水鱼</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">常见种类</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">竹荚鱼、鳕鱼、比目鱼、鲷鱼、鲑鱼、沙丁鱼、海鲈、旗鱼、鲔鱼、白带鱼、鳗鱼、黄花鱼、鲳鱼</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">台湾鲷（吴郭鱼）、草鱼、鲤鱼、香鱼、鲟鱼、鲈鱼、鲶鱼、鳗鱼、鲫鱼、虹鳟鱼、鳟鱼、鳝鱼</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">油脂</span><span style=\"font-size:14px;\">&amp;</span><span style=\"font-family:宋体;font-size:14px;\">热量</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较高</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较低</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">ω-3</span><span style=\"font-family:宋体;font-size:14px;\">脂肪酸</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较高</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较低</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">维生素</span><span style=\"font-size:14px;\">A</span><span style=\"font-family:宋体;font-size:14px;\">、</span><span style=\"font-size:14px;\">D</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较高</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较低</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">碘、硒、锰等微量元素</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较高</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较低</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">牛磺酸</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较高</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较低</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">普林</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较高</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较低</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">致敏性</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">组织胺含量高、易致敏</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较不易致敏</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">污染物</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">重金属污染、甲基汞</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">饲料添加剂、农药污染</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"91\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">药用价值</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">较不具药用价值</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"239\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">具药用价值，例如鲈鱼具健脾、补气、益肾、安胎之功效；鲤鱼有补脾健胃、利水消肿等功效。</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">深海鱼的营养价值，是淡水鱼所无法取代的，那要怎么吃深海鱼，才能获得健康效益，又避免重金属污染的问题呢？</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">深海鱼汞污染问题</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">深海鱼最主要的重金属污染问题为汞。根据食品药物管理局于</span><span lang=\"EN-US\" style=\"font-size:14px;\">2006</span><span style=\"font-size:14px;\">年检验市售海洋鱼类的重金属含量，结果发现镉、铬、铅、铜、锌等重金属含量皆很低，且符合国际间的限量标准，即使经常摄食也不会危害人体健康；然而只有在重金属汞的部分，有少量的旗鱼及鲨鱼检体虽符合国内规范，但超过国际间的限量标准。</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">鱼类会经由食物链摄食，而累积大量的汞在体内，尤其是食物链尾端的大型鱼类。自然界中的汞以金属汞、无机汞、和有机汞</span><span lang=\"EN-US\" style=\"font-size:14px;\">3</span><span style=\"font-size:14px;\">种型式存在，其中甲基汞为无机汞最常见的型态，毒性也最强，容易蓄积于体内。大量摄取甲基汞会损害神经系统，特别是发育中的婴幼儿，脑组织发育易受汞的毒性影响。</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;&nbsp; </span><span style=\"font-size:14px;\">美国环保署</span><span lang=\"EN-US\" style=\"font-size:14px;\">(EPA)</span><span style=\"font-size:14px;\">指出鱼体内的汞有</span><span lang=\"EN-US\" style=\"font-size:14px;\">90~100%</span><span style=\"font-size:14px;\">为甲基汞，因此联合国粮农组织</span><span lang=\"EN-US\" style=\"font-size:14px;\">/</span><span style=\"font-size:14px;\">世界卫生组织食品添加物专家委员会</span><span lang=\"EN-US\" style=\"font-size:14px;\">(Joint FAO/WHO\r\nExpert Committee on Food Additives, </span><span style=\"font-size:14px;\">简称</span><span lang=\"EN-US\" style=\"font-size:14px;\">JECFA)</span><span style=\"font-size:14px;\">特别针对甲基汞订定标准；各国也分别对于汞容许摄取量提出建议，以避免过量汞蓄积于人体内造成健康危害。</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">汞</span><span lang=\"EN-US\" style=\"font-size:14px;\">/</span><span style=\"font-size:14px;\">甲基汞每公斤体重每周耐受量</span><span lang=\"EN-US\" style=\"font-size:14px;\">PTWI(Provisional\r\ntolerable weekly intake)</span><span style=\"font-size:14px;\">：</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border:none;\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"171\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">PTWI(</span><span style=\"font-family:宋体;font-size:14px;\">微克</span><span style=\"font-size:14px;\">/</span><span style=\"font-family:宋体;font-size:14px;\">每公斤体重</span><span style=\"font-size:14px;\">)</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">成年人</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">怀孕妇女</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">小孩</span><span></span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"171\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">澳洲（总汞量）</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">&nbsp;</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">2.8</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">&nbsp;</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"171\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-family:宋体;font-size:14px;\">加拿大（总汞量）</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">3.29</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">1.4</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">1.4</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td width=\"171\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">JECFA</span><span style=\"font-family:宋体;font-size:14px;\">（甲基汞）</span><span></span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">1.6</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">&nbsp;</span>\r\n					</p>\r\n				</td>\r\n				<td width=\"132\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n					<p class=\"MsoNormal\">\r\n						<span style=\"font-size:14px;\">&nbsp;</span>\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<h4>\r\n		<span style=\"font-size:14px;\">深海鱼的安全食用量</span>\r\n	</h4>\r\n	<p class=\"MsoNormal\">\r\n		<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;&nbsp; </span><span style=\"font-size:14px;\">是不是所有的海水鱼都有汞污染的问题呢？其实海水鱼体内汞含量依鱼种不同有很大的差异，食物链愈末端，通常也就是体型愈庞大的鱼种，汞的残留量就愈高，研究发现，鱼的体型大小与体内单位体重汞含量成正比关系。</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<span style=\"font-size:14px;\">以下为不同深海鱼种汞含量以及依据</span><span lang=\"EN-US\" style=\"font-size:14px;\">JECFA</span><span style=\"font-size:14px;\">规范推算出的深海鱼每周安全食用量：</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border:none;\">\r\n			<tbody>\r\n				<tr>\r\n					<td width=\"255\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">鱼种</span><span></span>\r\n						</p>\r\n					</td>\r\n					<td width=\"120\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">汞含量</span><span style=\"font-size:14px;\">(ppm)</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"192\" colspan=\"2\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#E6E6E6;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">50kg</span><span style=\"font-family:宋体;font-size:14px;\">体重成人</span><span></span>\r\n						</p>\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">每周食用上限</span><span></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"255\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">马头鱼</span><span></span>\r\n						</p>\r\n					</td>\r\n					<td width=\"120\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">1~1.5</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"80\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">60~80g</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"112\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">半个掌心大</span><span></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"255\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">鲨鱼、鲔鱼、旗鱼</span><span></span>\r\n						</p>\r\n					</td>\r\n					<td width=\"120\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">≦ 1</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"80\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">80g</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"112\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFCCFF;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">1</span><span style=\"font-family:宋体;font-size:14px;\">个掌心大</span><span></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"255\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFFF99;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">白带鱼、鳕鱼</span><span></span>\r\n						</p>\r\n					</td>\r\n					<td width=\"120\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFFF99;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">≦0.2</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"80\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFFF99;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">400g</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"112\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#FFFF99;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">5</span><span style=\"font-family:宋体;font-size:14px;\">个掌心大</span><span></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"255\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#CCFFCC;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-family:宋体;font-size:14px;\">嘉腊鱼、秋刀鱼、白鲳鱼、青衣、鲑鱼、鲭鱼、沙丁鱼、四破鱼</span><span></span>\r\n						</p>\r\n					</td>\r\n					<td width=\"120\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#CCFFCC;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">≦0.1</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"80\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#CCFFCC;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">800g</span>\r\n						</p>\r\n					</td>\r\n					<td width=\"112\" valign=\"bottom\" style=\"border:solid windowtext 1.0pt;background:#CCFFCC;\">\r\n						<p class=\"MsoNormal\">\r\n							<span style=\"font-size:14px;\">10</span><span style=\"font-family:宋体;font-size:14px;\">个掌心大</span><span></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p class=\"MsoNormal\">\r\n			<span lang=\"EN-US\" style=\"font-size:14px;\">※</span><span style=\"font-size:14px;\">依据</span><span lang=\"EN-US\" style=\"font-size:14px;\">JECFA</span><span style=\"font-size:14px;\">成人甲基汞</span><span lang=\"EN-US\" style=\"font-size:14px;\">PTWI 1.6</span><span style=\"font-size:14px;\">微克限量计算，</span><span lang=\"EN-US\" style=\"font-size:14px;\">50</span><span style=\"font-size:14px;\">公斤体重成人每周容许甲基汞摄取量为</span><span lang=\"EN-US\" style=\"font-size:14px;\">80</span><span style=\"font-size:14px;\">微克。</span>\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<span lang=\"EN-US\" style=\"font-size:14px;\">※</span><span style=\"font-size:14px;\">汞含量资料来源：食品药物管理局；日本厚生劳动省；美国国家环境保护局</span>\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;</span>\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;&nbsp; </span><span style=\"font-size:14px;\">提醒大家，马头鱼、鲨鱼、鲔鱼、旗鱼等大型鱼是要尽量避免选择的鱼类，每周食用量不能超过</span><span lang=\"EN-US\" style=\"font-size:14px;\">1</span><span style=\"font-size:14px;\">个掌心大。加拿大食品检验局即建议每周摄食旗鱼、鲨鱼或生鲜和冷冻的鲔鱼排的量要有限制，而小孩或者怀孕妇女最好每个月只吃一次。美国</span><span lang=\"EN-US\" style=\"font-size:14px;\">FDA</span><span style=\"font-size:14px;\">也警告怀孕、哺乳妇女及小孩不要吃甲基汞含量高的鲨鱼、旗鱼、鰆鱼（土魠鱼）及马头鱼。</span>\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<span style=\"font-size:14px;\">相对而言，体型较小的海水鱼含汞量较低，比较可以安心食用，台湾海鲜指南中指出属于食物链中、底层，建议食用的深海鱼种类有下：四破鱼、竹筴鱼、沙丁鱼、秋刀鱼、飞鱼、鲭鱼、白带鱼、剥皮鱼、臭肚鱼（象鱼）。这些深海鱼每周食用量可达</span><span lang=\"EN-US\" style=\"font-size:14px;\">10</span><span style=\"font-size:14px;\">个掌心大，就算每天都吃掌心大小的份量，也是非常安全的。</span>\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;</span>\r\n		</p>\r\n		<h4>\r\n			<span style=\"font-size:14px;\">总结</span>\r\n		</h4>\r\n		<p class=\"MsoNormal\">\r\n			<span lang=\"EN-US\" style=\"font-size:14px;\">&nbsp;&nbsp; </span><span style=\"font-size:14px;\">不论海水鱼或淡水鱼，都是健康的蛋白质来源，建议两者皆可轮替食用。但如果想要获得深海鱼油，则建议避开大型海鱼，挑选体型小的海水鱼，就可以吃的健康又安心。</span>\r\n		</p>\r\n<span style=\"font-size:14px;\"></span>\r\n	</p>\r\n<span style=\"font-size:14px;\"></span><br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('83', 'article', '1', '专家顾问', '', '', '专家顾问', '', '', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '<p>\r\n	<img height=\"201\" src=\"/uploads/2014/03/211426306276.jpg\" width=\"170\" align=\"left\" border=\"0\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><strong>&nbsp;</strong><span style=\"font-size:16px;\"><strong> &nbsp;</strong></span></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><span style=\"font-size:16px;\"><strong>&nbsp; 陈义勤</strong>&nbsp;&nbsp;<strong>&nbsp;</strong><strong>部长</strong></span></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\">&nbsp; <span style=\"font-size:16px;\">中国健康促进基金会 &nbsp; &nbsp; &nbsp; 副理事长</span></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; 中国健康促进基金会功能医学发展专项基金 &nbsp;主任委员</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; 解放军空军后勤部卫生部 &nbsp;原部长</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img height=\"201\" src=\"/uploads/2014/03/211410102597.jpg\" width=\"170\" align=\"left\" border=\"0\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\">&nbsp;&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp;&nbsp;<strong>曾 强 &nbsp;博士 </strong>&nbsp;解放军总医院（301）</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; 国际医学中心 &nbsp; &nbsp; &nbsp; 主任&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; 解放军总医院（301）亚健康研究所 &nbsp;所长</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\"> &nbsp; 中华医学会健康管理学分会 &nbsp; &nbsp; 常委</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img height=\"201\" src=\"/uploads/2014/03/211410101580.jpg\" width=\"170\" align=\"left\" border=\"0\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\">&nbsp; </span></span><span style=\"font-family:Arial;line-height:2;\"><span style=\"line-height:2;\"><span><strong>&nbsp;</strong></span></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><span style=\"font-size:16px;\"><strong>&nbsp; &nbsp;史虹莉 &nbsp; 博士</strong></span></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; 上海华山医院浦东国际医院 &nbsp; &nbsp; &nbsp;院长</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; 复旦大学内分泌代谢病专业 &nbsp; &nbsp; &nbsp;教授</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; 中华糖尿病学会 &nbsp; &nbsp; &nbsp;秘书&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; 上海市临床受体专业委员会 &nbsp;委员</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\">&nbsp;&nbsp;</span></span> \r\n</p>\r\n<img height=\"201\" src=\"/uploads/2014/03/211426309384.png\" width=\"170\" align=\"left\" border=\"0\" /> \r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;font-family:Arial;\"><strong><span style=\"font-size:16px;\">&nbsp; &nbsp;黄颖  博士</span></strong><span style=\"font-size:16px;\">Chanel Huang MD, DC \r\n     美籍华人</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">&nbsp; &nbsp;中国上海卓维抗衰老庄园荷尔蒙平衡中心 首席专家&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;UHSA医学博士\r\n     美国Life University临床医学教授&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;美国营养及饮食协会会员&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;美国功能医学倡导人及专家\r\n     美国预防协会会员</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;美国抗衰老医学协会专家、美国职业健康医学专家</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;line-height:2;font-size:14px;\"><span style=\"line-height:2;font-size:14px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<img height=\"201\" src=\"/uploads/2014/03/211426304770.jpg\" width=\"170\" align=\"left\" border=\"0\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;\"><span style=\"font-size:14px;line-height:2;\">&nbsp; &nbsp;&nbsp;</span></span><strong><span style=\"font-family:Arial;font-size:16px;line-height:2;\">潘肖珏 </span><span style=\"font-size:16px;\">&nbsp;&nbsp;</span></strong><span style=\"font-family:Arial;line-height:2;font-size:16px;\"><span style=\"line-height:2;font-size:16px;\">上海卓维抗衰老庄园&nbsp;</span></span><span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp;首席养生专家</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;上海华夏企业文化研究所                  研究员&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;中国公关协会学术委员会                  委员</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;东广电台名医坐堂节目      特邀嘉宾\r\n     著名“公关学者”</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;line-height:2;font-family:Arial;\">&nbsp; &nbsp;中国最早从事公关教育和公关研究的学者之一。潜心探究乳腺癌 的中医、自然疗法和其他传统疗法，《我们该把自己交给谁》《天人合一自然养生作者</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;font-family:Arial;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1', '0', '0', '');
INSERT INTO `dy_classtype` VALUES ('86', 'article', '0', '疗养日记', '', '', '疗养日记', '', '疗养日记', '1', 'list_index.html', 'list_rj.html', 'list_image.html', 'list_body.html', 'article_rj.html', '20', '', '', '0', '0', '8', '', '1', '0', '0', '');

-- ----------------------------
-- Table structure for `dy_comment`
-- ----------------------------
DROP TABLE IF EXISTS `dy_comment`;
CREATE TABLE `dy_comment` (
  `cid` mediumint(8) unsigned NOT NULL auto_increment,
  `aid` mediumint(8) unsigned NOT NULL,
  `molds` char(20) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '0',
  `body` text NOT NULL,
  `reply` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `retime` int(10) unsigned NOT NULL default '0',
  `user` char(30) NOT NULL,
  `ruser` char(30) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_comment
-- ----------------------------
INSERT INTO `dy_comment` VALUES ('54', '3', 'product', '0', 'asdf', '', '1340949850', '0', '游客', '');
INSERT INTO `dy_comment` VALUES ('53', '1', 'product', '0', 'asdfasdf', '', '1340771473', '0', '游客', '');
INSERT INTO `dy_comment` VALUES ('55', '3', 'article', '0', 'fhjdfghdfh', '', '1352975201', '0', '游客', '');
INSERT INTO `dy_comment` VALUES ('58', '47', 'article', '1', '1111111111', 'asdf', '1353412302', '1353412308', '1', 'admin');
INSERT INTO `dy_comment` VALUES ('57', '50', 'article', '0', 'asdfasdfasdf', 'asdf', '1353411949', '1353412281', '1', 'admin');

-- ----------------------------
-- Table structure for `dy_custom`
-- ----------------------------
DROP TABLE IF EXISTS `dy_custom`;
CREATE TABLE `dy_custom` (
  `id` smallint(8) unsigned NOT NULL auto_increment,
  `name` char(200) NOT NULL,
  `dir` char(100) NOT NULL,
  `template` char(100) NOT NULL,
  `file` char(200) NOT NULL,
  `html` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_custom
-- ----------------------------
INSERT INTO `dy_custom` VALUES ('2', '测试', 'aa', 'index.html', '123', '0');

-- ----------------------------
-- Table structure for `dy_fields`
-- ----------------------------
DROP TABLE IF EXISTS `dy_fields`;
CREATE TABLE `dy_fields` (
  `fid` mediumint(8) unsigned NOT NULL auto_increment,
  `molds` char(20) NOT NULL,
  `fieldsname` char(20) NOT NULL,
  `fields` char(20) NOT NULL,
  `fieldstype` char(20) NOT NULL,
  `fieldslong` smallint(5) unsigned NOT NULL default '0',
  `selects` text NOT NULL,
  `fieldorder` int(10) NOT NULL default '0',
  `issubmit` tinyint(1) unsigned NOT NULL default '1',
  `lists` tinyint(1) unsigned NOT NULL default '0',
  `fieldshow` tinyint(1) unsigned NOT NULL default '1',
  `types` text NOT NULL,
  `contingency` char(20) NOT NULL,
  `imgw` smallint(6) NOT NULL default '0',
  `imgh` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_fields
-- ----------------------------
INSERT INTO `dy_fields` VALUES ('14', 'person', '招聘岗位', 'gangwei', 'varchar', '100', '', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `dy_fields` VALUES ('15', 'person', '学历要求', 'xueli', 'select', '0', '不限=1,小学及以上=2,初中及以上=3,高中(中专)及以上=4,大专及以上=5,本科及以上=6,硕士及以上=7,博士及以上=8', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `dy_fields` VALUES ('16', 'person', '年龄要求', 'nianlin', 'varchar', '50', '', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `dy_fields` VALUES ('17', 'person', '性别要求', 'xingbie', 'select', '0', '不限=不限,男=男,女=女', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `dy_fields` VALUES ('18', 'person', '工作经验', 'jingyan', 'select', '0', '不限=1,一年以上=2,二年以上=3,三年以上=4,五年以上=5,十年以上=6', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `dy_fields` VALUES ('19', 'person', '招聘介绍', 'jieshao', 'text', '0', '', '0', '1', '0', '1', '|22|23|', '', '670', '350');
INSERT INTO `dy_fields` VALUES ('37', 'message', '邮箱', 'email', 'varchar', '255', '', '0', '1', '1', '1', '', '', '0', '0');
INSERT INTO `dy_fields` VALUES ('26', 'article', '标准间门市价', 'ziduan01', 'varchar', '255', '', '0', '1', '1', '1', '|4|33|34|35|36|37|38|39|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('27', 'article', '标准间优惠价', 'ziduan02', 'varchar', '255', '', '0', '1', '1', '1', '|4|33|34|35|36|37|38|39|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('28', 'article', '酒店档次', 'ziduan03', 'select', '0', '三星级=三星级,四星级=四星级,五星级=五星级', '0', '1', '1', '1', '|4|33|34|35|36|37|38|39|', '', '0', '0');
INSERT INTO `dy_fields` VALUES ('29', 'article', '酒店位置', 'ziduan04', 'varchar', '255', '', '0', '1', '1', '1', '|4|33|34|35|36|37|38|39|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('30', 'article', '大床房门市价', 'ziduan05', 'varchar', '255', '', '1', '1', '1', '1', '|4|33|34|35|36|37|38|39|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('31', 'article', '大床房优惠价', 'ziduan06', 'varchar', '255', '', '1', '1', '1', '1', '|4|33|34|35|36|37|38|39|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('32', 'product', '网上预订赠品', 'ziduan07', 'text', '0', '', '0', '1', '1', '1', '|2|24|25|26|27|28|29|30|', '', '670', '200');
INSERT INTO `dy_fields` VALUES ('33', 'product', '旅游天数', 'ziduan08', 'varchar', '255', '', '0', '1', '1', '1', '|2|24|25|26|27|28|29|30|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('34', 'article', '英文描述', 'eng', 'varchar', '255', '', '3', '1', '0', '1', '|1|44|45|46|76|77|83|84|91|92|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('36', 'message', '检查者年龄', 'age', 'varchar', '255', '', '0', '1', '1', '1', '|69|87|93|94|95|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('35', 'message', '检查者姓名', 'name', 'varchar', '255', '', '0', '1', '1', '1', '|69|87|93|94|95|', '', '300', '300');
INSERT INTO `dy_fields` VALUES ('38', 'message', '联系方式', 'tel', 'varchar', '255', '', '0', '1', '1', '1', '', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('39', 'message', '地址', 'addr', 'varchar', '255', '', '0', '1', '1', '1', '', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('40', 'message', '邮箱', 'email2', 'varchar', '255', '', '0', '1', '1', '1', '|69|87|93|94|95|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('41', 'message', '联系方式', 'tel2', 'varchar', '255', '', '0', '1', '1', '1', '|69|87|93|94|95|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('42', 'message', '住址', 'address', 'varchar', '255', '', '0', '1', '1', '1', '|69|87|93|94|95|', '', '300', '80');
INSERT INTO `dy_fields` VALUES ('43', 'article', '跳转地址', 'tzurl', 'varchar', '255', '', '0', '1', '1', '1', '|90|', '', '300', '80');

-- ----------------------------
-- Table structure for `dy_funs`
-- ----------------------------
DROP TABLE IF EXISTS `dy_funs`;
CREATE TABLE `dy_funs` (
  `fid` smallint(5) unsigned NOT NULL auto_increment,
  `funs` char(20) NOT NULL,
  `fundb` char(255) NOT NULL,
  `name` char(20) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '1',
  `afiles` text NOT NULL,
  `version` char(20) NOT NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_funs
-- ----------------------------
INSERT INTO `dy_funs` VALUES ('31', 'ads', 'ads,adstype', '广告', '1', '', '1.0');
INSERT INTO `dy_funs` VALUES ('32', 'comment', 'comment', '评论', '1', '', '1.0');
INSERT INTO `dy_funs` VALUES ('33', 'links', 'links,linkstype', '友情链接', '1', '', '1.0');
INSERT INTO `dy_funs` VALUES ('34', 'member', 'member,member_field,member_group,member_file', '客户', '1', '', '1.0');
INSERT INTO `dy_funs` VALUES ('35', 'special', 'special', '专题', '1', '', '1.0');
INSERT INTO `dy_funs` VALUES ('37', 'pay', 'account,order,payment', '支付系统', '1', '', '1.0');
INSERT INTO `dy_funs` VALUES ('38', 'goods', 'product_attribute,attribute,attribute_type', '预订系统', '1', '', '1.0');

-- ----------------------------
-- Table structure for `dy_goodscart`
-- ----------------------------
DROP TABLE IF EXISTS `dy_goodscart`;
CREATE TABLE `dy_goodscart` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `num` mediumint(8) unsigned NOT NULL default '1',
  `attribute` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_goodscart
-- ----------------------------
INSERT INTO `dy_goodscart` VALUES ('47', '19', '22', '1', 'N;', '1383168909');
INSERT INTO `dy_goodscart` VALUES ('48', '16', '21', '2', 'N;', '1383194356');
INSERT INTO `dy_goodscart` VALUES ('49', '16', '22', '1', 'N;', '1383194384');
INSERT INTO `dy_goodscart` VALUES ('51', '20', '21', '3', 'N;', '1383386398');

-- ----------------------------
-- Table structure for `dy_labelcus`
-- ----------------------------
DROP TABLE IF EXISTS `dy_labelcus`;
CREATE TABLE `dy_labelcus` (
  `id` smallint(5) NOT NULL auto_increment,
  `name` char(50) NOT NULL,
  `body` text NOT NULL,
  `type` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_labelcus
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_links`
-- ----------------------------
DROP TABLE IF EXISTS `dy_links`;
CREATE TABLE `dy_links` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `taid` smallint(5) unsigned NOT NULL default '0',
  `orders` int(10) NOT NULL default '0',
  `name` char(100) NOT NULL,
  `image` char(200) NOT NULL,
  `gourl` char(200) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_links
-- ----------------------------
INSERT INTO `dy_links` VALUES ('2', '1', '0', '新浪', '', 'http://www.sina.com.cn', '1');

-- ----------------------------
-- Table structure for `dy_linkstype`
-- ----------------------------
DROP TABLE IF EXISTS `dy_linkstype`;
CREATE TABLE `dy_linkstype` (
  `taid` smallint(5) NOT NULL auto_increment,
  `name` char(100) NOT NULL,
  PRIMARY KEY  (`taid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_linkstype
-- ----------------------------
INSERT INTO `dy_linkstype` VALUES ('1', '门户导航');

-- ----------------------------
-- Table structure for `dy_member`
-- ----------------------------
DROP TABLE IF EXISTS `dy_member`;
CREATE TABLE `dy_member` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `user` char(20) NOT NULL,
  `pass` char(32) NOT NULL,
  `email` char(100) NOT NULL,
  `gid` smallint(5) NOT NULL default '1',
  `money` decimal(10,2) NOT NULL default '0.00',
  `regtime` int(10) unsigned NOT NULL default '0',
  `token` char(35) NOT NULL,
  `tokentime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_member
-- ----------------------------
INSERT INTO `dy_member` VALUES ('16', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '3902129@qq.com', '2', '0.00', '1382455966', '', '0');

-- ----------------------------
-- Table structure for `dy_member_field`
-- ----------------------------
DROP TABLE IF EXISTS `dy_member_field`;
CREATE TABLE `dy_member_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_member_field
-- ----------------------------
INSERT INTO `dy_member_field` VALUES ('16');

-- ----------------------------
-- Table structure for `dy_member_file`
-- ----------------------------
DROP TABLE IF EXISTS `dy_member_file`;
CREATE TABLE `dy_member_file` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `ip` char(30) NOT NULL default '0',
  `url` char(255) NOT NULL,
  `size` int(11) unsigned NOT NULL default '0',
  `fields` char(20) NOT NULL,
  `hand` int(11) unsigned NOT NULL default '0',
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `molds` char(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user` (`uid`,`url`,`size`,`fields`,`hand`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_member_file
-- ----------------------------
INSERT INTO `dy_member_file` VALUES ('73', '13', '', 'uploads/2012/12/131508249443.jpg', '16247', 'sdfg', '0', '16', 'message');
INSERT INTO `dy_member_file` VALUES ('57', '0', '192.168.1.8', 'uploads/2012/12/061735275121.jpg', '13824', 'sdfg', '1735256009', '0', '');
INSERT INTO `dy_member_file` VALUES ('55', '0', '192.168.1.8', 'uploads/2012/12/041558051712.jpg', '13824', 'sdfg', '0', '13', 'message');
INSERT INTO `dy_member_file` VALUES ('52', '0', '192.168.1.8', 'uploads/2012/12/041553486594.jpg', '13824', 'sdfg', '0', '12', 'message');
INSERT INTO `dy_member_file` VALUES ('51', '0', '192.168.1.8', 'uploads/2012/12/031244352468.jpg', '13824', 'asdf', '0', '11', 'message');

-- ----------------------------
-- Table structure for `dy_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `dy_member_group`;
CREATE TABLE `dy_member_group` (
  `gid` smallint(5) unsigned NOT NULL auto_increment,
  `sys` smallint(5) unsigned NOT NULL default '0',
  `name` char(20) NOT NULL,
  `weight` int(11) NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `submit` tinyint(1) unsigned NOT NULL default '0',
  `filetype` char(255) NOT NULL,
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileallsize` int(10) unsigned NOT NULL default '0',
  `discount_type` tinyint(1) unsigned NOT NULL default '0',
  `discount` decimal(10,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_member_group
-- ----------------------------
INSERT INTO `dy_member_group` VALUES ('1', '1', '游客', '0', '0', '0', 'jpg,gif,jpeg,png', '0', '0', '0', '0.00');
INSERT INTO `dy_member_group` VALUES ('2', '1', '普通会员', '1', '0', '1', 'jpg,gif,jpeg,png', '200', '5000', '0', '0.00');

-- ----------------------------
-- Table structure for `dy_message`
-- ----------------------------
DROP TABLE IF EXISTS `dy_message`;
CREATE TABLE `dy_message` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `tid` smallint(5) unsigned NOT NULL default '0',
  `fmolds` char(20) NOT NULL,
  `faid` mediumint(8) NOT NULL default '0',
  `isshow` tinyint(1) unsigned NOT NULL default '0',
  `title` char(100) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `retime` int(10) unsigned NOT NULL default '0',
  `orders` int(10) NOT NULL default '0',
  `user` char(30) NOT NULL,
  `body` text NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `article` (`isshow`,`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_message
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_message_field`
-- ----------------------------
DROP TABLE IF EXISTS `dy_message_field`;
CREATE TABLE `dy_message_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `name` varchar(255) default NULL,
  `age` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `addr` varchar(255) default NULL,
  `email2` varchar(255) default NULL,
  `tel2` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_message_field
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_molds`
-- ----------------------------
DROP TABLE IF EXISTS `dy_molds`;
CREATE TABLE `dy_molds` (
  `mid` smallint(5) unsigned NOT NULL auto_increment,
  `molds` char(20) NOT NULL,
  `molddb` char(255) NOT NULL,
  `moldname` char(20) NOT NULL,
  `orders` int(10) NOT NULL default '0',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listimg` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `t_content` char(50) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '1',
  `version` char(20) NOT NULL,
  `sys` tinyint(1) unsigned NOT NULL default '0',
  `config` text NOT NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_molds
-- ----------------------------
INSERT INTO `dy_molds` VALUES ('1', 'article', 'article', '文章', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '1', '1.0', '1', '');
INSERT INTO `dy_molds` VALUES ('6', 'message', '', '线上预约', '0', 'message.html', 'message.html', 'message.html', 'message.html', 'message.html', '1', '1.0', '1', 'N;');
INSERT INTO `dy_molds` VALUES ('2', 'product', '', '线路', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '1', '1.0', '1', 'a:2:{s:7:\"photo_w\";a:3:{i:0;s:15:\"图集缩略宽\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略宽，0表示继承系统设置\";}s:7:\"photo_h\";a:3:{i:0;s:15:\"图集缩略高\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略高，0表示继承系统设置\";}}');
INSERT INTO `dy_molds` VALUES ('18', 'person', '', '人才招聘', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');

-- ----------------------------
-- Table structure for `dy_order`
-- ----------------------------
DROP TABLE IF EXISTS `dy_order`;
CREATE TABLE `dy_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `orderid` char(25) NOT NULL,
  `favorable` decimal(10,2) unsigned NOT NULL default '0.00',
  `state` tinyint(1) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `payment` char(50) NOT NULL,
  `paymentno` char(100) NOT NULL,
  `paytime` int(10) unsigned NOT NULL default '0',
  `actualpay` decimal(10,2) unsigned NOT NULL default '0.00',
  `info` text NOT NULL,
  `unote` text NOT NULL,
  `rnote` text NOT NULL,
  `anote` text NOT NULL,
  `goods` text NOT NULL,
  `logistics` char(100) NOT NULL,
  `virtual` tinyint(1) unsigned NOT NULL default '0',
  `sendgoods` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_order
-- ----------------------------
INSERT INTO `dy_order` VALUES ('101', '16', '13824560540000000232', '0.00', '0', '1382456054', '', '', '0', '0.00', 'a:8:{s:4:\"name\";s:18:\"第三方的身份\";s:5:\"phone\";s:11:\"13138685525\";s:3:\"tel\";s:11:\"13138685525\";s:5:\"email\";s:14:\"3902129@qq.com\";s:7:\"zipcode\";s:21:\"第三方的身份的\";s:8:\"address1\";s:21:\"第三方的身份的\";s:8:\"address2\";s:21:\"第三方的身份的\";s:7:\"address\";s:21:\"第三方的身份的\";}', '第三方的身份的', '', '', 'a:1:{i:0;a:3:{s:3:\"aid\";s:2:\"18\";s:9:\"attribute\";a:2:{i:3;s:1:\"7\";i:2;s:1:\"5\";}s:8:\"quantity\";s:1:\"1\";}}', '快递', '0', '');
INSERT INTO `dy_order` VALUES ('102', '16', '13825010460000000294', '0.00', '0', '1382501040', '', '', '0', '0.00', 'N;', '', '', '', 'a:1:{i:0;a:2:{s:3:\"aid\";s:2:\"17\";s:8:\"quantity\";s:1:\"1\";}}', '', '1', 'N;');
INSERT INTO `dy_order` VALUES ('103', '17', '13826098640000000297', '0.00', '0', '1382609864', '', '', '0', '0.00', 'a:8:{s:4:\"name\";s:12:\"线路名称\";s:8:\"address1\";s:12:\"出发城市\";s:8:\"address2\";s:12:\"到达日期\";s:7:\"address\";s:12:\"简易行程\";s:5:\"phone\";s:11:\"13138685525\";s:3:\"tel\";s:12:\"固定电话\";s:5:\"email\";s:5:\"Email\";s:7:\"zipcode\";s:6:\"邮编\";}', '备注信息', '', '', 'a:1:{i:0;a:3:{s:3:\"aid\";s:2:\"18\";s:9:\"attribute\";a:2:{i:3;s:1:\"8\";i:2;s:1:\"5\";}s:8:\"quantity\";s:1:\"1\";}}', '快递', '0', '');
INSERT INTO `dy_order` VALUES ('104', '19', '13831677670000000237', '0.00', '0', '1383167767', '', '', '0', '0.00', 'a:8:{s:4:\"name\";s:65:\"半自助110：8日 拉萨、纳木错、羊湖、林芝、雅江\";s:8:\"address1\";s:6:\"广州\";s:8:\"address2\";s:10:\"2013-10-31\";s:7:\"address\";s:65:\"半自助110：8日 拉萨、纳木错、羊湖、林芝、雅江\";s:5:\"phone\";s:11:\"13138685525\";s:3:\"tel\";s:11:\"13138685525\";s:5:\"email\";s:11:\"13138685525\";s:7:\"zipcode\";s:11:\"13138685525\";}', '半自助110：8日 拉萨、纳木错、羊湖、林芝、雅江', '', '', 'a:1:{i:0;a:2:{s:3:\"aid\";s:2:\"22\";s:8:\"quantity\";s:1:\"1\";}}', '普通快递', '0', '');
INSERT INTO `dy_order` VALUES ('105', '20', '13832077700000000272', '0.00', '0', '1383207770', '', '', '0', '0.00', 'a:8:{s:4:\"name\";s:80:\"线路名称：半自助110：8日 拉萨、纳木错、羊湖、林芝、雅江\";s:8:\"address1\";s:15:\"出发城市：\";s:8:\"address2\";s:25:\"到达日期：2013-10-31\";s:7:\"address\";s:15:\"简易行程：\";s:5:\"email\";s:12:\"联系人：\";s:5:\"phone\";s:11:\"13138685525\";s:3:\"tel\";s:24:\"QQ号或邮箱：3902129\";s:7:\"zipcode\";s:18:\"452728198903163916\";}', '备注信息：', '', '', 'a:1:{i:0;a:2:{s:3:\"aid\";s:2:\"22\";s:8:\"quantity\";s:1:\"1\";}}', '普通快递', '0', '');
INSERT INTO `dy_order` VALUES ('106', '20', '13832174010000000231', '0.00', '0', '1383217401', '', '', '0', '0.00', 'a:8:{s:4:\"name\";s:65:\"半自助110：8日 拉萨、纳木错、羊湖、林芝、雅江\";s:8:\"address1\";s:6:\"广州\";s:8:\"address2\";s:10:\"2013-10-31\";s:7:\"address\";s:65:\"半自助110：8日 拉萨、纳木错、羊湖、林芝、雅江\";s:5:\"email\";s:9:\"韦桦桔\";s:5:\"phone\";s:11:\"13138685525\";s:3:\"tel\";s:7:\"3902129\";s:7:\"zipcode\";s:18:\"452728198903163916\";}', '', '', '', 'a:1:{i:0;a:2:{s:3:\"aid\";s:2:\"22\";s:8:\"quantity\";s:1:\"1\";}}', '预订不开发票', '0', '');

-- ----------------------------
-- Table structure for `dy_payment`
-- ----------------------------
DROP TABLE IF EXISTS `dy_payment`;
CREATE TABLE `dy_payment` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `pay` char(30) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '0',
  `name` char(100) NOT NULL,
  `body` text NOT NULL,
  `key` text NOT NULL,
  `keyv` text NOT NULL,
  `orders` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_payment
-- ----------------------------
INSERT INTO `dy_payment` VALUES ('3', 'alipay', '1', '支付宝', '国内最大的支付平台，支持多家银行在线支付。<a href=\"https://b.alipay.com\" target=\"_blank\">需要签约支付宝商家服务，点此进入</a>，强烈建议使用“即时到帐”接口，若无法申请“即时到帐”接口，可选择申请财付通“即时到帐”接口，相比支付宝容易审核。', 'a:4:{s:7:\"service\";s:12:\"接口类型\";s:4:\"user\";s:21:\"签约支付宝账号\";s:3:\"pid\";s:18:\"合作者身份PID\";s:3:\"key\";s:18:\"安全校验码Key\";}', 'a:4:{s:7:\"service\";s:1:\"1\";s:4:\"user\";s:0:\"\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}', '99');
INSERT INTO `dy_payment` VALUES ('4', 'tenpay', '1', '财付通', '腾讯旗下支付平台，支持多家银行在线支付。<a href=\"https://www.tenpay.com/v2/mch/mch_intro.shtml\" target=\"_blank\">签约财付通商家服务，点此进入</a>，强烈建议使用“即时到帐”接口。', 'a:3:{s:7:\"service\";s:12:\"接口类型\";s:3:\"pid\";s:9:\"商户号\";s:3:\"key\";s:6:\"密钥\";}', 'a:3:{s:7:\"service\";s:1:\"1\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}', '98');
INSERT INTO `dy_payment` VALUES ('2', 'cashbalance', '1', '余额支付', '使用会员账户余额支付。', '', 'N;', '1');
INSERT INTO `dy_payment` VALUES ('1', 'offline', '1', '线下付款', '线下收款，收款后需手工在后台修改订单状态。', '', 'N;', '0');

-- ----------------------------
-- Table structure for `dy_person`
-- ----------------------------
DROP TABLE IF EXISTS `dy_person`;
CREATE TABLE `dy_person` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `tid` smallint(5) unsigned NOT NULL default '0',
  `sid` smallint(5) unsigned NOT NULL default '0',
  `isshow` tinyint(1) unsigned NOT NULL default '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `orders` int(10) NOT NULL default '0',
  `mrank` smallint(5) NOT NULL default '0',
  `mgold` int(10) unsigned NOT NULL default '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `person` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_person
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_person_field`
-- ----------------------------
DROP TABLE IF EXISTS `dy_person_field`;
CREATE TABLE `dy_person_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `gangwei` varchar(100) default NULL,
  `xueli` char(30) default NULL,
  `nianlin` varchar(50) default NULL,
  `xingbie` char(30) default NULL,
  `jingyan` char(30) default NULL,
  `jieshao` text,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_person_field
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_product`
-- ----------------------------
DROP TABLE IF EXISTS `dy_product`;
CREATE TABLE `dy_product` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `tid` smallint(5) unsigned NOT NULL default '0',
  `sid` smallint(5) unsigned NOT NULL default '0',
  `isshow` tinyint(1) unsigned NOT NULL default '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `record` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `litpic` char(255) NOT NULL,
  `photo` text NOT NULL,
  `orders` int(10) NOT NULL default '0',
  `price` decimal(10,2) unsigned NOT NULL default '0.00',
  `virtual` tinyint(1) unsigned NOT NULL default '0',
  `logistics` text NOT NULL,
  `mrank` smallint(5) NOT NULL default '0',
  `mgold` decimal(10,2) unsigned NOT NULL default '0.00',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `product` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_product
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `dy_product_attribute`;
CREATE TABLE `dy_product_attribute` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL default '0.00',
  KEY `product_attribute` (`aid`,`tid`,`sid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_product_attribute
-- ----------------------------
INSERT INTO `dy_product_attribute` VALUES ('18', '2', '4', '100.00');
INSERT INTO `dy_product_attribute` VALUES ('16', '2', '5', '0.00');
INSERT INTO `dy_product_attribute` VALUES ('16', '2', '4', '0.00');
INSERT INTO `dy_product_attribute` VALUES ('18', '2', '5', '200.00');
INSERT INTO `dy_product_attribute` VALUES ('18', '2', '9', '300.00');
INSERT INTO `dy_product_attribute` VALUES ('25', '2', '4', '100.00');
INSERT INTO `dy_product_attribute` VALUES ('25', '2', '5', '200.00');
INSERT INTO `dy_product_attribute` VALUES ('25', '2', '9', '300.00');
INSERT INTO `dy_product_attribute` VALUES ('27', '2', '4', '100.00');
INSERT INTO `dy_product_attribute` VALUES ('27', '2', '5', '200.00');
INSERT INTO `dy_product_attribute` VALUES ('27', '2', '9', '300.00');

-- ----------------------------
-- Table structure for `dy_product_discount`
-- ----------------------------
DROP TABLE IF EXISTS `dy_product_discount`;
CREATE TABLE `dy_product_discount` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `mgid` smallint(5) unsigned NOT NULL default '0',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `discount` decimal(10,2) unsigned NOT NULL default '0.00',
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_product_discount
-- ----------------------------
INSERT INTO `dy_product_discount` VALUES ('19', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('18', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('16', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('25', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('26', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('27', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('28', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('24', '2', '0', '0.00');
INSERT INTO `dy_product_discount` VALUES ('29', '2', '0', '0.00');

-- ----------------------------
-- Table structure for `dy_product_field`
-- ----------------------------
DROP TABLE IF EXISTS `dy_product_field`;
CREATE TABLE `dy_product_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `body` mediumtext NOT NULL,
  `ziduan07` text,
  `ziduan08` varchar(255) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_product_field
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_product_virtual`
-- ----------------------------
DROP TABLE IF EXISTS `dy_product_virtual`;
CREATE TABLE `dy_product_virtual` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `number` char(100) NOT NULL,
  `virtual` varchar(500) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '0',
  `oid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_product_virtual
-- ----------------------------
INSERT INTO `dy_product_virtual` VALUES ('12', '17', '测试fhsdfgsdfgsdfg', 'c76e53gGuaLZm3IoQbsJ36mrH0OcZ3RBr7PhE1xWCjoX6JHFnyyE8D3V55Iaxcq1', '0', '0');
INSERT INTO `dy_product_virtual` VALUES ('11', '17', '测试463vertc', '12333HwgRw6YZmRRcl8KNcHrI5oIxRovuPx7mr+WkNE2Vf1XrdobPrUil4SUCVQtqNDejMk', '0', '0');
INSERT INTO `dy_product_virtual` VALUES ('10', '17', '测试4567456346', '9a19aBBEDunV3WW1Tfv2p/ZoAna5UjQ5BtVM90DbkrW9aVKt120wg6F8LSqVgz6ime/1WmcBm6Y', '0', '0');
INSERT INTO `dy_product_virtual` VALUES ('9', '17', '测试6456456456456456', '25e0LYgVYcrXL96cj0Zs5pDK4Wpwq+arv1BAvY4ZWoQEJ0OEK+JlHjVKo7S41AMYj+slDhA', '0', '0');
INSERT INTO `dy_product_virtual` VALUES ('8', '17', '测试123123123123', 'afcci5kt/SEwT14i4tw7RQqffsuj4rFYYB374HJ+pIY2b2FL4L4wwuvM1V2oxvb/yPs', '0', '0');

-- ----------------------------
-- Table structure for `dy_sales_record`
-- ----------------------------
DROP TABLE IF EXISTS `dy_sales_record`;
CREATE TABLE `dy_sales_record` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `oid` int(10) unsigned NOT NULL default '0',
  `user` char(20) NOT NULL,
  `num` mediumint(6) unsigned NOT NULL default '0',
  `stime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`,`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_sales_record
-- ----------------------------

-- ----------------------------
-- Table structure for `dy_special`
-- ----------------------------
DROP TABLE IF EXISTS `dy_special`;
CREATE TABLE `dy_special` (
  `sid` smallint(5) unsigned NOT NULL auto_increment,
  `molds` char(20) NOT NULL,
  `name` char(50) NOT NULL,
  `litpic` char(200) NOT NULL,
  `title` char(100) NOT NULL,
  `keywords` char(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `gourl` char(255) NOT NULL,
  `isindex` tinyint(1) unsigned NOT NULL default '1',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `listnum` mediumint(8) unsigned NOT NULL default '0',
  `htmldir` char(100) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `orders` int(10) NOT NULL default '0',
  `body` mediumtext NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_special
-- ----------------------------
INSERT INTO `dy_special` VALUES ('1', 'article', '专题演示', '', 'asdfasdf', '', '', '', '1', 'specia.html', 'specia_list.html', 'specia_body.html', '20', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for `dy_sysconfig`
-- ----------------------------
DROP TABLE IF EXISTS `dy_sysconfig`;
CREATE TABLE `dy_sysconfig` (
  `name` char(35) NOT NULL,
  `sets` varchar(500) NOT NULL,
  UNIQUE KEY `sysconfig` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_sysconfig
-- ----------------------------
INSERT INTO `dy_sysconfig` VALUES ('sendmail', 'a:4:{s:4:\"smtp\";s:0:\"\";s:4:\"mail\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"name\";s:12:\"旅游公司\";}');

-- ----------------------------
-- Table structure for `dy_traits`
-- ----------------------------
DROP TABLE IF EXISTS `dy_traits`;
CREATE TABLE `dy_traits` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `name` char(50) NOT NULL,
  `molds` char(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_traits
-- ----------------------------
INSERT INTO `dy_traits` VALUES ('1', '头条', 'article');
INSERT INTO `dy_traits` VALUES ('2', '推荐', 'article');
INSERT INTO `dy_traits` VALUES ('3', '头条', 'product');
INSERT INTO `dy_traits` VALUES ('4', '推荐', 'product');

-- ----------------------------
-- Table structure for `dy_update`
-- ----------------------------
DROP TABLE IF EXISTS `dy_update`;
CREATE TABLE `dy_update` (
  `id` int(11) NOT NULL auto_increment,
  `version` char(10) NOT NULL,
  `newupdate` char(15) NOT NULL,
  `uptime` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_update
-- ----------------------------
