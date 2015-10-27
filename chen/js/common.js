var menutop = 7;//图片编号top
/*
加载菜单
*/
function LoadMenu()
{
	//菜单
	for(var i = 1;i<=menutop;i++)
	{
		var menuid = 'menu'+i;
		var menu = document.getElementById('menu').value;
		if(menu == null || menu.length<=0){menu = '';}
		if(menuid == menu)
		{
			var obj_menu = document.getElementById(menuid);
			if(obj_menu!=null)
			{
				obj_menu.src = 'images/menu'+i+'_2.jpg'
			}
		}
	}
	//左侧菜单
	var leftmenu_v = document.getElementById('leftmenu').value; 
	if(leftmenu_v!=null && leftmenu_v.length>0)
	{
		var o_leftmenu = document.getElementById(leftmenu_v);
		if(o_leftmenu!=null)
		{
			o_leftmenu.style.background = '#5C0103';
		}
	}	
}
/*
设置菜单_onmouseover
输入:menuidno 菜单对象编号，如1 
    pictype 图片类型：1非选中图，2选种图片
*/
function SetMenu(menuidno,pictype)
{
	menuidno = Number(menuidno);
	pictype = Number(pictype);
	document.getElementById('menuno').value = menuidno;
	for(var i = 0;i<=menutop;i++)
	{
		if(menuidno == i)
		{			
			var o = document.getElementById('menu'+i);
			if(o!=null){ o.src='images/menu'+i+'_2.jpg'; }
		}
		else
		{
			var o = document.getElementById('menu'+i);
			if(o!=null){ o.src='images/menu'+i+'_1.jpg'; }		
		}
	}
	ShowChildMenu();
}
//显示子菜单
function ShowChildMenu()
{
	var menuno = document.getElementById('menuno').value;
	if(menuno == null || menuno.lenght<=0){menuno = 0;}
	menuno = Number(menuno);
	for(var i = 0;i<=menutop;i++)
	{
		if(menuno == i)
		{
			var o = document.getElementById('childmenu'+i);
			if(o!=null){ o.style.display='block'; }			
		}
		else
		{
			var o = document.getElementById('childmenu'+i);
			if(o!=null){ o.style.display='none'; }
		}
	}
}
//设置左侧菜单样式
function SetLeftBackGround(leftmenuid,type) 
{
	var leftmenu = document.getElementById('leftmenu').value;
	if(leftmenuid == null || leftmenuid.length<=0){return;}
	if(type == null || type.length<=0){return;}
	type = Number(type);
	if(type!=0){type = 1;}
	var o = document.getElementById(leftmenuid);
	if(leftmenuid == leftmenu){return;}
	if(o == null || o.length<=0){return;}
	if(type == 0){o.style.background = '#5C0103';}else{o.style.background = '';}
}
//设置透明(按对象)
function nereidFade(object, destOp, rate, delta)
{
	if (!document.all){return;}
	if (object != "[object]"){setTimeout("nereidFade("+object+","+destOp+","+rate+","+delta+")",0);return;}
	clearTimeout(nereidFadeTimers[object.sourceIndex]);
	diff = destOp-object.filters.alpha.opacity;
	direction = 1;
	if (object.filters.alpha.opacity > destOp){direction = -1;}
	delta=Math.min(direction*diff,delta);
	object.filters.alpha.opacity+=direction*delta;
	if (object.filters.alpha.opacity != destOp)
	{
		nereidFadeObjects[object.sourceIndex]=object;
		nereidFadeTimers[object.sourceIndex]=setTimeout("nereidFade(nereidFadeObjects["+object.sourceIndex+"],"+destOp+","+rate+","+delta+")",rate);
	}
}
//版本跳转
function ToLanguage()
{
	var v = $('#language').val();
	if(v==null || v.length<=0){return;}
        window.open(v);
	//window.location.href=v;
}