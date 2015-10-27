<?php
define("APP_PATH",dirname(__FILE__));
define("DOYO_PATH",APP_PATH."/include");
@date_default_timezone_set('PRC');
$doyoConfig = array(

/*'db' => array(
'host' => 'localhost',			//数据库地址
'port' => 3306,					//数据库端口
'database' => 'zhuowei',		//数据库名
'login' => 'root',				//数据库帐号
'password' => 'root',			//数据库密码
'prefix' => 'dy_',				//数据库表前缀
),*/
'db' => array(
'host' => 'localhost',			//数据库地址
'port' => 3306,					//数据库端口
'database' => 'web',		//数据库名
'login' => 'root',				//数据库帐号
'password' => '',			//数据库密码
'prefix' => 'dy_',				//数据库表前缀
),

'ext' => array(
'version' => '2.3',
'update' => '20130118',
'auto_update' => 1,
'http_path' => 'www.ymsky.net',
'site_title' => '庄园时代',
'site_keywords' => '庄园时代',
'site_description' => '庄园时代',
'secret_key' => '0b4b6a095d53c49c83315ccbf273d961',	//站内安全密钥，安装时会随机生成，一旦生成请勿修改，并请牢记，否则可能造成某些数据无法取回。
'view_themes' => 'default',
'site_html' => 0,
'site_html_dir' => 'html',
'site_html_rules' => '[mold]/[file].html',
'site_html_suffix' => '.html',
'site_html_index' => 0,
'enable_gzip' => 0,
'enable_gzip_level' => 6,
'cache_auto' => 0,
'cache_time' => 0,
'filetype' => 'jpg,gif,jpeg,bmp,png,swf,flv,wmv,wma,mp3,mp4,rar,zip,7z,txt,doc,docx,xls,xlsx',
'filesize' => 10485760,
'imgwater' => 0,
'imgwater_t' => 3,
'imgcaling' => 1,
'img_w' => 1500,
'img_h' => 1500,
'comment_audit' => 1,
'comment_user' => 0,
),
);