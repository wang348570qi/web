<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<META content="IE=10.000" http-equiv="X-UA-Compatible">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $type['title'] ?>-<?php echo $GLOBALS['S']['title'] ?></title>
<meta name="keywords" content="<?php echo $type['keywords'] ?> " />
<meta name="description" content="<?php echo $type['description'] ?> " />
<link type="text/css" rel="stylesheet" href="<?php echo $GLOBALS['skin'] ?>css/head.css" />
<link type="text/css" rel="stylesheet" href="<?php echo $GLOBALS['skin'] ?>css/main.css" />
<link type="text/css" rel="stylesheet" href="<?php echo $GLOBALS['skin'] ?>css/footer.css" />

<script type="text/javascript">
var site_dir="<?php echo $GLOBALS['WWW'] ?>";
</script>

<script src="<?php echo $GLOBALS['skin'] ?>js/jquery-1.8.1.js"></script>

<script type="text/javascript">
<!--			
			jQuery(function($){
				 $(".onmouse").mouseenter(function(){
	                $('.show_wx_s').show();
	            }).mouseleave(function(){
	                $('.show_wx_s').hide();
	            });
				 $("#menu li").mouseenter(function() {
		             $(this).addClass('active').show();
		          }).mouseleave(function() {
		             $(this).removeClass('active');
		           })
         });
//-->
</script>


</head>

<body class="ny_bg">
<div class="head">
    <div class="wrap w980">
        <h1 class="col_1"><a href="/" target="_blank"><img src="<?php echo $GLOBALS['skin'] ?>images/logo_n.jpg" alt="logo"></a></h1>
       
        <div class="nav col_2 w615" id="menu">
        <div class="top_wz"><a href="#">设为首页</a> | <a href="#">加入收藏</a> | <a href="#">联系我们</a></div>
          <ul>
          <li><a href="/">首页</a></li>
          <?php $vn=0;$tablev=syClass("syModel")->findSql("select tid,molds,pid,classname,gourl,litpic,title,keywords,description,orders,mrank,htmldir,htmlfile,mshow from dy_classtype where  mshow='1' and pid=0  order by orders desc,tid");foreach($tablev as $v){ $v["tid_leafid"]=$sy_class_type->leafid($v["tid"]);$v["n"]=$vn=$vn+1; $v["classname"]=stripslashes($v["classname"]);$v["description"]=stripslashes($v["description"]); $v["url"]=html_url("classtype",$v); ?>
              <li><a href="<?php echo $v['url'] ?>"><?php echo $v['classname'] ?></a>
                <div class="showCate top38" style="top:38px;">
                 <?php $v1n=0;$tablev1=syClass("syModel")->findSql("select tid,molds,pid,classname,gourl,litpic,title,keywords,description,orders,mrank,htmldir,htmlfile,mshow from dy_classtype where  pid='".$v[tid]."'  order by orders desc,tid");foreach($tablev1 as $v1){ $v1["tid_leafid"]=$sy_class_type->leafid($v1["tid"]);$v1["n"]=$v1n=$v1n+1; $v1["classname"]=stripslashes($v1["classname"]);$v1["description"]=stripslashes($v1["description"]); $v1["url"]=html_url("classtype",$v1); ?>
                  <p><a href="<?php echo $v1['url'] ?>"><?php echo $v1['classname'] ?></a></p>
                  <?php } ?>
                </div>
              </li>
          <?php } ?>
     
    </ul>
        </div>
    </div>
</div>

 <div class="main">
  <div class="wrap w980">
    <div class="main_bt">
     <?php echo $positions ?>
    </div>
    <div class="clearfix">
      <div class="left_cont">
        <div class="left_nav">
        <dl>
        <dt><?php echo $type['classname'] ?></dt>
        <?php $vn=0;$tablev=syClass("syModel")->findSql("select tid,molds,pid,classname,gourl,litpic,title,keywords,description,orders,mrank,htmldir,htmlfile,mshow from dy_classtype where  mshow='1' and pid='47'  order by orders desc,tid limit 11");foreach($tablev as $v){ $v["tid_leafid"]=$sy_class_type->leafid($v["tid"]);$v["n"]=$vn=$vn+1; $v["classname"]=stripslashes($v["classname"]);$v["description"]=stripslashes($v["description"]); $v["url"]=html_url("classtype",$v); ?>
        <dd <?php if($v['tid']==$type['tid']){ ?> class="current"<?php } ?>><a href="<?php echo $v['url'] ?>" ><?php echo $v['classname'] ?></a></dd> 
        <?php } ?>
        </dl>
        </div>  

        <div class="left_box">
        <ul>
        <li><img src="<?php echo $GLOBALS['skin'] ?>images/index_01.jpg"></li>
        <li><img src="<?php echo $GLOBALS['skin'] ?>images/index_02.jpg"></li>
        </ul>

        </div>
      </div>
      <div class="right_cont">
        <div class="about">
          <h2><?php echo $type['classname'] ?></h2>
         <?php echo $type['body'] ?>
            </div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</div>

<div class="Footer">
  <div class="FootCon">
    <div class="bqCon col_1">
      <p class="">热线电话：400-668-6877</p>
      <p class="">公司地址：上海市闵行区颛兴路1688号</p>
    </div>
    <div class="FootNav col_2">
    <p>Copyright©2015 上海庄园时代版权所有  沪ICP备14010896号-3</p>
      <a href="/index.php?c=article&a=type&tid=89">策论联盟</a>   <a href="/index.php?c=article&a=type&tid=70">联系我们</a>   <a href="/">网站地图</a>   <a href="/index.php?c=article&a=type&tid=90">友情链接</a> <span class="onmouse"><a href="#">微信码扫一扫版</a></span>
			<div class="show_wx_s top_s"><img src="<?php echo $GLOBALS['skin'] ?>images/wx.png"></div>
    </div>
  </div>
</div>
  
</body>
</html>
