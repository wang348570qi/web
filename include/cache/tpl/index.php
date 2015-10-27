<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<META content="IE=10.000" http-equiv="X-UA-Compatible">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $GLOBALS['S']['title'] ?></title>
<meta name="keywords" content="<?php echo $GLOBALS['S']['keywords'] ?> " />
<meta name="description" content="<?php echo $GLOBALS['S']['description'] ?> " />
<link type="text/css" rel="stylesheet" href="<?php echo $GLOBALS['skin'] ?>css/head.css" />
<link type="text/css" rel="stylesheet" href="<?php echo $GLOBALS['skin'] ?>css/main.css" />
<link type="text/css" rel="stylesheet" href="<?php echo $GLOBALS['skin'] ?>css/footer.css" />

<script type="text/javascript">
var site_dir="<?php echo $GLOBALS['WWW'] ?>";
</script>

<script src="<?php echo $GLOBALS['skin'] ?>js/jquery-1.8.1.js"></script>

<script type="text/javascript" src="<?php echo $GLOBALS['skin'] ?>js/jquery.easing.min.js"></script>
<script type="text/javascript" src="<?php echo $GLOBALS['skin'] ?>js/supersized.3.2.7.min.js"></script>
<script type="text/javascript" src="<?php echo $GLOBALS['skin'] ?>js/supersized.shutter.min.js"></script>


<script type="text/javascript">
<!--			
			jQuery(function($){
				
				$.supersized({
				
					// Functionality
					slide_interval          :   3000,		// Length between transitions
					transition              :   1, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
					transition_speed	:   700,		// Speed of transition
															   
					// Components						
					slide_links		:   'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
					slides 			:   [			// Slideshow Images

									{ image: '<?php echo $GLOBALS['skin'] ?>images/bg01.jpg', title: '', url: '' }
									,
									
									{ image: '<?php echo $GLOBALS['skin'] ?>images/bg02.jpg', title: '', url: '' }
									,
									
									{ image: '<?php echo $GLOBALS['skin'] ?>images/bg03.jpg', title: '', url: '' }
									,
									
									{ image: '<?php echo $GLOBALS['skin'] ?>images/bg04.jpg', title: '', url: '' }
									,
									
									{ image: '<?php echo $GLOBALS['skin'] ?>images/bg05.jpg', title: '', url: '' }
									
   								  
   								    ,
									
									{ image: '<?php echo $GLOBALS['skin'] ?>images/bg06.jpg', title: '', url: '' }
									
   								 
   								    ,
									
									{ image: '<?php echo $GLOBALS['skin'] ?>images/bg07.jpg', title: '', url: '' }
									
   								    ]

								});
				 $(".onmouse").mouseenter(function(){
		                $('.show_wx').show();
		            }).mouseleave(function(){
		                $('.show_wx').hide();
		            });
				 $("#menu li").mouseenter(function() {
		             $(this).addClass('active').show();
		          }).mouseleave(function() {
		             $(this).removeClass('active');
		           })
         });
//-->
</script>

<script src="<?php echo $GLOBALS['skin'] ?>js/json2.js"></script>
<script src="<?php echo $GLOBALS['skin'] ?>js/jquery.collapse.js"></script>
<script src="<?php echo $GLOBALS['skin'] ?>js/jquery.collapse_storage.js"></script>
<script src="<?php echo $GLOBALS['skin'] ?>js/jquery.collapse_cookie_storage.js"></script>
</head>

<body>

<div class="nav_menu">
  <div class="wrap w980" id="menu">
    <ul>
      <li><a href="/">首页</a></li>
      <?php $vn=0;$tablev=syClass("syModel")->findSql("select tid,molds,pid,classname,gourl,litpic,title,keywords,description,orders,mrank,htmldir,htmlfile,mshow from dy_classtype where  mshow='1' and pid=0  order by orders desc,tid");foreach($tablev as $v){ $v["tid_leafid"]=$sy_class_type->leafid($v["tid"]);$v["n"]=$vn=$vn+1; $v["classname"]=stripslashes($v["classname"]);$v["description"]=stripslashes($v["description"]); $v["url"]=html_url("classtype",$v); ?>
          <li><a href="<?php echo $v['url'] ?>"><?php echo $v['classname'] ?></a>
            <div class="showCate">
             <?php $v1n=0;$tablev1=syClass("syModel")->findSql("select tid,molds,pid,classname,gourl,litpic,title,keywords,description,orders,mrank,htmldir,htmlfile,mshow from dy_classtype where  pid='".$v[tid]."'  order by orders desc,tid");foreach($tablev1 as $v1){ $v1["tid_leafid"]=$sy_class_type->leafid($v1["tid"]);$v1["n"]=$v1n=$v1n+1; $v1["classname"]=stripslashes($v1["classname"]);$v1["description"]=stripslashes($v1["description"]); $v1["url"]=html_url("classtype",$v1); ?>
              <p><a href="<?php echo $v1['url'] ?>"><?php echo $v1['classname'] ?></a></p>
              <?php } ?>
            </div>
          </li>
      <?php } ?>
     
    </ul>
  </div>
</div>
<div class="wrap w980" id="zw_index">
  <div class="logo col_1"><img src="<?php echo $GLOBALS['skin'] ?>images/logo.png"></div>
  <div class="clear"></div>
</div>
<div  id="Special">
<div class="wrap w980">
<div class="col_1 Special_l w570">
  <ul>
    <li><img src="<?php echo $GLOBALS['skin'] ?>images/index_01.jpg"></li>
    <li><img src="<?php echo $GLOBALS['skin'] ?>images/index_02.jpg"></li>
  </ul>
</div>
<div class="col_2 Special_r w410">
  <img src="<?php echo $GLOBALS['skin'] ?>images/index_03.jpg">
</div>
</div>
</div>
<div id="end_bg">
	<div class="wrap w980" id="end">
	<div class="col_1"><a href="/index.php?c=article&a=type&tid=89">策论联盟</a>   <a href="/index.php?c=article&a=type&tid=70">联系我们</a>   <a href="/">网站地图</a>   <a href="/index.php?c=article&a=type&tid=90">友情链接</a> 
</div>
	                       
	<div class="col_2"><span class="onmouse">微信码扫一扫版</span>
			<div class="show_wx"><img src="<?php echo $GLOBALS['skin'] ?>images/wx.png"></div>
	</div>
	</div>
</div>

 


      <script>
        $("#css3-animated-example").collapse({
          accordion: true,
          persist: true,
          open: function() {
            this.addClass("open");
            this.css({ height: this.children().outerHeight() });
          },
          close: function() {
            this.css({ height: "0px" });
            this.removeClass("open");
          }
        });
      </script>
  
</body>
</html>
