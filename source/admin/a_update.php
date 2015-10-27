<?php
if(!defined('APP_PATH')||!defined('DOYO_PATH')){exit('Access Denied');}

class a_update extends syController
{
	function __construct(){
		parent::__construct();
		$this->updateurl="http://www.8dudns.com/guanli/"; 
	}
	function index(){
		$this->postgo='index';
		$this->update_log=syDB('update')->findAll(null,' uptime desc ');
		$this->display("update.html");
	}
	function clear(){
		$this->postgo='clear';
		$up=$this->PostData();
		if($up[0]==0){
			if($up[1]==''){message_a("您的系统暂时没有补丁更新。",'?c=a_update');}else{message_a($up[1],'?c=a_update');}
		}
		$this->update=$up[0];
		$this->upnew=$up[1];
		$this->upsql=$up[2];
		$this->display("update.html");
	}

	function newupdate(){
		$up_f=explode('|-update-|',$this->syArgs('f',4));
		if(!is_writable('config.php'))message_a("config.php无法写入，请检查config.php文件权限。",'?c=a_update');
		if($this->syArgs('s',4)!=''){
			$up_sql_c=syClass('syModel');
			$up_sql=explode('|-update-|',$this->syArgs('s',4));
			foreach($up_sql as $sql){
				if(get_magic_quotes_gpc())$sql=stripslashes($sql);
				$sql=str_ireplace('`dy_','`'.$GLOBALS['G_DY']['db']['prefix'],$sql);
				if(!$up_sql_c->runSql($sql))message_a('数据库升级失败，请重新执行升级');
			}
		}
		deleteDir('include/update'); @mkdir('include/update',0755);
		clearstatcache();
		foreach($up_f as $s){
			if(is_file($s)){
				if(!is_writable($s)){
					message_a('请检查文件'.$s.'是否可写。','?c=a_update');
				}
				if(copy($s,'include/update/'.str_ireplace('/','__',$s).'.txt')==FALSE){
					message_a("升级前自动备份失败，请检查include目录权限，或者需升级文件是否存在。",'?c=a_update');
				}
			}
		}
		foreach($up_f as $v){
			$sev_up_u=$this->updateurl.'version/'.syExt('version').'/'.syExt('update').'/'.str_ireplace('/','__',$v).'.txt';
			$up_c=file_get_contents($sev_up_u);
			$up_c_go=file_put_contents($v,$up_c);
			if(!$up_c||$up_c_go===FALSE){
				foreach($up_f as $v){
					if(is_file($v))copy('include/update/'.str_ireplace('/','__',$v).'.txt',$v);
				}
				deleteDir('include/update');
				message_a($v.'更新失败，请检查文件是否可写。','?c=a_update');
			}
		}
		syDB('update')->create(array('version'=>syExt('version'),'newupdate'=>$this->syArgs('d',1),'uptime'=>time()));
		$o_config=file_get_contents('config.php');
		$o_config=str_ireplace("'update' => '".syExt('update')."',","'update' => '".$this->syArgs('d',1)."',",$o_config);
		file_put_contents('config.php',$o_config);
		deleteDir($GLOBALS['G_DY']['sp_cache']);
		deleteDir($GLOBALS['G_DY']['view']['config']['template_tpl']);
		message_a("升级全部完成。",'?c=a_update');

	}
	private function PostData(){
		$last=syDB('update')->find(null,' uptime desc ');
		if(!$last){$last=0;}else{$last=$last['version'].$last['newupdate'];}
		$data=array('version'=>syExt('version'),'update'=>syExt('update'),'last'=>$last);  
		$data=http_build_query($data);
		$opts=array('http'=>array('method'=>'POST',
								  'header'=>"Content-type: application/x-www-form-urlencoded\r\n".
								  "Content-Length:".strlen($data)."\r\n",  
								  'content'=>$data),);
		$context=stream_context_create($opts);
		$html=file_get_contents($this->updateurl,false,$context);
		$html=explode('|--|',$html);
		return $html;
	}
}	