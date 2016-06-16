/**
 *  页面加载等待页面
 *
 * @author gxjiang
 * @date 2010/7/24
 *
 */
 var height = window.screen.height-250;
 var width = window.screen.width;
 var leftW = 300;
 if(width>1200){
 	leftW = 500;
 }else if(width>1000){
 	leftW = 350;
 }else {
 	leftW = 100;
 }
 
 var _html = "<div id='loading' style='position:absolute;left:0;width:100%;height:"+height+"px;top:0;background:#E0ECFF;opacity:0.8;filter:alpha(opacity=80);'>\
 <div style='position:absolute;	cursor1:wait;left:"+leftW+"px;top:200px;width:auto;height:16px;padding:12px 5px 10px 30px;\
 background:#fff url(“themes/default/default/images/loading.gif”) no-repeat scroll 5px 10px;border:2px solid #ccc;color:#000;'>\
 窗体正在加载，请等待....\
 </div></div>";
 
 window.onload = function(){
 	var _mask = document.getElementById('loading');
 	_mask.parentNode.removeChild(_mask);
 }

	 
 document.write(_html);
 